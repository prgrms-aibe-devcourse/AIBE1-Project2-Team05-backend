package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.common.dto.UserPrincipal;

public interface MatchingService {
    void matchingMentor(UserPrincipal userPrincipal, String nickname) throws Exception;
}
