package com.team05.linkup.domain.mentoring.service;

import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;

public interface AiMatchingService {
    AiMatchingResponseDTO matchMentor(String provider, String providerId);
}
