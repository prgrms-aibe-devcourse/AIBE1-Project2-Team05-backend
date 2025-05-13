package com.team05.linkup.domain.community.infrastructure;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.core.types.dsl.Expressions;
import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.community.domain.*;
import com.team05.linkup.domain.user.domain.QUser;
import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;
import com.team05.linkup.domain.user.dto.QCommunityQnAPostDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CommunityRepositoryCustomImpl implements CommunityRepositoryCustom {

    private final JPAQueryFactory queryFactory;

    private final QCommunity community = QCommunity.community;
    private final QUser user = QUser.user;
    private final QComment comment = QComment.comment;
    private final QTag tag = QTag.tag; // QTag 추가

    /**
     * 멘토의 관심 태그 이름과 일치하는 QnA 게시글 중 최신순으로 N개 조회.
     * CommunityQnAPostDTO의 communityTag 필드에는 입력된 interestTagName 값을 채워줍니다.
     */
    @Override
    public List<CommunityQnAPostDTO> findRecentQnAPostsByTags(List<String> tags, int limit) {
        return queryFactory
                .select(new QCommunityQnAPostDTO(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt.stringValue(),
                        community.title,
                        community.content,
                        Expressions.constant(""),
//                        // ✅ 태그 이름들을 쉼표로 묶은 문자열로 반환
//                        Expressions.stringTemplate(
//                                "(SELECT STRING_AGG(t.name, ',') FROM community_tag_join ctj JOIN tag t ON ctj.tag_id = t.id WHERE ctj.community_id = {0})",
//                                community.id
//                        ),
                        comment.id.count().intValue()
                ))
                .from(community)
                .join(community.user, user)
                .leftJoin(community.tags, tag)
                .leftJoin(comment).on(comment.communityId.eq(community.id))
                .where(
                        community.category.eq(CommunityCategory.QUESTION),
                        tag.name.in(tags)
                )
                .groupBy(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt,
                        community.title,
                        community.content
                )
                .orderBy(community.updatedAt.desc())
                .limit(limit)
                .fetch();
    }

//    @Override
//    public List<CommunityQnAPostDTO> findRecentQnAPostsByInterest(String interestTag, int limit) {
//        return queryFactory
//                .select(new QCommunityQnAPostDTO(
//                        community.id,
//                        user.nickname,
//                        user.profileImageUrl,
//                        community.updatedAt.stringValue(), // ZonedDateTime → String
//                        community.title,
//                        community.content,
//                        Expressions.constant(interestTag),
//                        comment.id.count().intValue()     // 댓글 수 실시간 계산
//                ))
//                .from(community)
//                .join(community.user, user)
//                .leftJoin(community.tags, tag) // Community의 tags 컬렉션과 QTag 조인
//                .leftJoin(comment).on(comment.communityId.eq(community.id)) // 댓글 테이블과 연결
//                .where(
//                        community.category.eq(CommunityCategory.QUESTION)
//                                .and(tag.name.containsIgnoreCase(interestTag))  // ✅ 부분 일치로 완화
//                )
//                .groupBy(
//                        community.id,
//                        user.nickname,
//                        user.profileImageUrl,
//                        community.updatedAt,
//                        community.title,
//                        community.content
//                )
//                .orderBy(community.updatedAt.desc())
//                .limit(limit)
//                .fetch();
//    }

    /**
     * 멘토의 관심 태그 이름과 일치하는 QnA 게시글을 페이징하여 조회.
     * CommunityQnAPostDTO의 communityTag 필드에는 입력된 interestTagName 값을 채워줍니다.
     */
    @Override
    public Page<CommunityQnAPostDTO> findRecentQnAPostsByInterestPaged(List<String> interests, Pageable pageable)
    {

        // 전체 게시글 조회 쿼리
        List<CommunityQnAPostDTO> content = queryFactory
                .select(new QCommunityQnAPostDTO(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt.stringValue(),
                        community.title,
                        community.content,
                        Expressions.constant(""),
//                        // ✅ 실제 태그 이름들을 ,로 묶어 반환
//                        Expressions.stringTemplate(
//                                "(SELECT STRING_AGG(t.name, ',') FROM community_tag_join ctj JOIN tag t ON ctj.tag_id = t.id WHERE ctj.community_id = {0})",
//                                community.id
//                        ),
                        comment.id.count().intValue()
                ))
                .from(community)
                .join(community.user, user)
                .leftJoin(community.tags, tag)
                .leftJoin(comment).on(comment.communityId.eq(community.id))
                .where(
                        community.category.eq(CommunityCategory.QUESTION),
                        tag.name.in(interests)
                )
                .groupBy(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt,
                        community.title,
                        community.content
                )
                .orderBy(community.updatedAt.desc())
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        // 총 개수 조회 쿼리
        Long count = queryFactory
                .select(community.countDistinct())
                .from(community)
                .leftJoin(community.tags, tag)
                .where(
                        community.category.eq(CommunityCategory.QUESTION),
                        tag.name.in(interests)
                )
                .fetchOne();

        return new PageImpl<>(content, pageable, count != null ? count : 0L);
    }

    /**
     * 다양한 조건으로 게시글을 고급 검색합니다.
     * 태그 검색은 전달된 Tag 엔티티 객체를 포함하는 게시물을 찾습니다.
     * 키워드 검색 시 게시물의 제목, 내용, 그리고 연결된 태그들의 이름도 검색 대상에 포함됩니다.
     *
     * @param keyword 검색 키워드
     * @param nickname 작성자 닉네임
     * @param category 게시글 카테고리
     * @param userRole 사용자 역할
     * @param tagEntity 검색할 특정 Tag 엔티티 (단일 태그). null일 경우 이 조건은 무시.
     * @param pageable 페이징 정보
     * @return 검색 결과 페이지
     */
    @Override
    public Page<Community> advancedSearch(
            String keyword,
            String nickname,
            CommunityCategory category,
            String userRole,
            Tag tagEntity,
            Pageable pageable) {

        // 검색 조건 빌더
        BooleanBuilder builder = new BooleanBuilder();

        // 키워드 검색 (제목, 내용, 태그에서 검색)
        if (StringUtils.hasText(keyword)) {
            builder.and(
                    community.title.containsIgnoreCase(keyword)
                            .or(community.content.containsIgnoreCase(keyword))
                            .or(community.tags.any().name.containsIgnoreCase(keyword))
            );
        }

        // 닉네임으로 검색
        if (StringUtils.hasText(nickname)) {
            builder.and(user.nickname.eq(nickname));
        }

        // 카테고리로 검색
        if (category != null) {
            builder.and(community.category.eq(category));
        }

        // 사용자 역할로 검색
        if (StringUtils.hasText(userRole)) {
            builder.and(user.role.stringValue().eq(userRole));
        }

        // 특정 태그로 검색 (Tag 엔티티 객체로 검색)
        if (tagEntity != null) {
            builder.and(community.tags.contains(tagEntity)); // 수정: 해당 Tag 객체를 포함하는지 확인
        }


        // 게시글 조회 쿼리 생성
        List<Community> results = queryFactory
                .selectFrom(community)
                .join(community.user, user).fetchJoin()
                .where(builder)
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .orderBy(community.createdAt.desc()) // 기본 정렬
                .distinct() // 태그 조인으로 인해 중복된 Community가 나올 수 있으므로 distinct 추가
                .fetch();

        // 총 개수 조회 쿼리
        Long total = queryFactory
                .select(community.id.countDistinct())
                .from(community)
                .join(community.user, user)
                .where(builder)
                .fetchOne();

        return new PageImpl<>(results, pageable, total != null ? total : 0L);
    }
}