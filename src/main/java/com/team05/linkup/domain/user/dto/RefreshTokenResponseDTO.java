package com.team05.linkup.domain.user.dto;

public record RefreshTokenResponseDTO(
        String accessToken,
        String refreshToken,
        String tokenType,
        long expiredIn
) { }
