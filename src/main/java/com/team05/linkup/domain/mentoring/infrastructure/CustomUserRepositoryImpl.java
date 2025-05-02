package com.team05.linkup.domain.mentoring.infrastructure;

import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CustomUserRepositoryImpl implements CustomMentoringSessionRepository{
    private final JPAQueryFactory queryFactory;
    @Override
    public boolean existsMentoringSession(String menteeProviderId, String mentorNickname) {

        return false;
//        return queryFactory.selectFrom(mentoringSession)
//                .join(men);
    }
}
