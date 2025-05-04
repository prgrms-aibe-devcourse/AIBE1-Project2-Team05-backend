package com.team05.linkup.domain.community.infra;

import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.domain.QComment;
import com.team05.linkup.domain.community.domain.QCommunity;
import com.team05.linkup.domain.user.domain.QUser;
import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;
import com.team05.linkup.domain.user.dto.QCommunityQnAPostDTO;
import lombok.RequiredArgsConstructor;
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
}
