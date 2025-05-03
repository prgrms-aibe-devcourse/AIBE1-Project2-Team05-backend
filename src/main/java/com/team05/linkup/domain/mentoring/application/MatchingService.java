package com.team05.linkup.domain.mentoring.application;

public interface MatchingService {
    void matchingMentor(String provider, String providerId, String nickname) throws Exception;
}
