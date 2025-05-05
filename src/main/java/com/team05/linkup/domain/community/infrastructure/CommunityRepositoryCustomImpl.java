package com.team05.linkup.domain.community.infrastructure;

import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.domain.QComment;
import com.team05.linkup.domain.community.domain.QCommunity;
import com.team05.linkup.domain.user.domain.QUser;
import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;
import com.team05.linkup.domain.user.dto.QCommunityQnAPostDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CommunityRepositoryCustomImpl implements CommunityRepositoryCustom {

    private final JPAQueryFactory queryFactory;

    @Override
    public List<CommunityQnAPostDTO> findRecentQnAPostsByInterest(String interestTag, int limit) {
        QCommunity community = QCommunity.community;
        QUser user = QUser.user;
        QComment comment = QComment.comment;

        return queryFactory
                .select(new QCommunityQnAPostDTO(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt.stringValue(), // ZonedDateTime → String
                        community.title,
                        community.content,
                        community.communityTag,
                        comment.id.count().intValue()     // 댓글 수 실시간 계산
                ))
                .from(community)
                .join(community.user, user)
                .leftJoin(comment).on(comment.communityId.eq(community.id)) // 댓글 테이블과 연결
                .where(
                        community.category.eq(CommunityCategory.QUESTION)
                                .and(community.communityTag.eq(interestTag))
                )
                .groupBy(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt,
                        community.title,
                        community.content,
                        community.communityTag
                )
                .orderBy(community.updatedAt.desc())
                .limit(limit)
                .fetch();
    }

    @Override
    public Page<CommunityQnAPostDTO> findRecentQnAPostsByInterestPaged(String interestTag, Pageable pageable) {
        QCommunity community = QCommunity.community;
        QUser user = QUser.user;
        QComment comment = QComment.comment;

        // 전체 게시글 조회 쿼리
        List<CommunityQnAPostDTO> content = queryFactory
                .select(new QCommunityQnAPostDTO(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt.stringValue(),
                        community.title,
                        community.content,
                        community.communityTag,
                        comment.id.count().intValue()
                ))
                .from(community)
                .join(community.user, user)
                .leftJoin(comment).on(comment.communityId.eq(community.id))
                .where(
                        community.category.eq(CommunityCategory.QUESTION),
                        community.communityTag.eq(interestTag)
                )
                .groupBy(
                        community.id,
                        user.nickname,
                        user.profileImageUrl,
                        community.updatedAt,
                        community.title,
                        community.content,
                        community.communityTag
                )
                .orderBy(community.updatedAt.desc())
                .offset(pageable.getOffset())
                .limit(pageable.getPageSize())
                .fetch();

        // 총 개수 조회 쿼리
        Long count = queryFactory
                .select(community.count())
                .from(community)
                .where(
                        community.category.eq(CommunityCategory.QUESTION),
                        community.communityTag.eq(interestTag)
                )
                .fetchOne();

        return new PageImpl<>(content, pageable, count != null ? count : 0L);

    }

}
