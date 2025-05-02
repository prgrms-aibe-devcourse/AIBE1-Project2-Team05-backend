package com.team05.linkup.domain.mentoring.infrastructure;

public interface CustomMentoringSessionRepository {
    boolean existsMentoringSession(String providerId, String mentorNickname);
}
