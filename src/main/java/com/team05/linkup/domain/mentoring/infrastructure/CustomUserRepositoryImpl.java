package com.team05.linkup.domain.mentoring.infrastructure;

import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.mentoring.domain.QMentoringSessions;
import com.team05.linkup.domain.user.domain.QUser;
import com.team05.linkup.domain.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class CustomUserRepositoryImpl implements CustomMentoringSessionRepository{
    private final JPAQueryFactory queryFactory;

    @Override
    public boolean existsMentoringSession(String menteeProviderId, String mentorNickname) {
        QMentoringSessions mentoringSessions = QMentoringSessions.mentoringSessions;
        QUser mentee = new QUser("mentee");
        QUser mentor = new QUser("mentor");

        return queryFactory.selectFrom(mentoringSessions)
                .join(mentoringSessions.mentee, mentee)
                .join(mentoringSessions.mentor, mentor)
                .where(mentor.nickname.eq(mentorNickname),
                        mentee.providerId.eq(menteeProviderId))
                .fetchFirst() != null;

    }
}
