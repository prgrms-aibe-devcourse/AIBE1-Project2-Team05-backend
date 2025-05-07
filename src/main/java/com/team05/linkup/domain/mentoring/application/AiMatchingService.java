package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;

import java.util.concurrent.TimeoutException;

public interface AiMatchingService {
    AiMatchingResponseDTO matchMentor(UserPrincipal userPrincipal) throws Exception, TimeoutException;
}
