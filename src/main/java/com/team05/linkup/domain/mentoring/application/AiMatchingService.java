package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;

public interface AiMatchingService {
    AiMatchingResponseDTO matchMentor(String provider, String providerId);
}
