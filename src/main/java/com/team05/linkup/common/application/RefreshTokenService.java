package com.team05.linkup.common.application;

import com.team05.linkup.domain.user.dto.RefreshTokenResponseDTO;
import org.springframework.security.core.Authentication;

public interface RefreshTokenService {
    String createRefreshToken(Authentication authentication) throws Exception;
    RefreshTokenResponseDTO regenerateAccessAndRefreshToken(String refreshTokenId) throws Exception;
}
