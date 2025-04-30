package com.team05.linkup.users.dto;

public record RefreshTokenResponseDTO(
        String accessToken,
        String refreshToken,
        String tokenType,
        long expiredIn
) { }
