package com.team05.linkup.domain.mentoring.service;

import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;

public interface MatchingService {
    AiMatchingResponseDTO matchMentor(String providerId);
}
