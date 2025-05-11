package com.team05.linkup.domain.community.infrastructure;

import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.community.domain.QAiComment;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CustomAiCommentRepositoryImpl implements CustomAiCommentRepository {
    private final JPAQueryFactory queryFactory;

    QAiComment comment = QAiComment.aiComment;


    @Override
    public String findCommentByText(String communityId) {

        return queryFactory.select(comment.content)
                .from(comment)
                .where(comment.community.id.eq(communityId))
                .fetchFirst();
    }
}
