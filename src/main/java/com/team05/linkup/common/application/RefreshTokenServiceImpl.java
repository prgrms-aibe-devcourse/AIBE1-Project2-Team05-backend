package com.team05.linkup.common.application;

import com.team05.linkup.common.exception.TokenException;
import com.team05.linkup.common.oauth.jwtAssistant.OAuth2ProviderStrategy;
import com.team05.linkup.common.oauth.jwtAssistant.OAuth2ProviderStrategyFactory;
import com.team05.linkup.domain.user.domain.RefreshToken;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.RefreshTokenRepository;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import com.team05.linkup.domain.user.dto.RefreshTokenResponseDTO;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class RefreshTokenServiceImpl implements RefreshTokenService {
    private static final Logger logger = LogManager.getLogger(RefreshTokenService.class);
    private final RefreshTokenRepository refreshTokenRepository;
    private final JwtServiceImpl jwtServiceImpl;
    private final UserRepository userRepository;
    private final OAuth2ProviderStrategyFactory strategyFactory;

    @Override
    @Transactional
    public String createRefreshToken(Authentication authentication) throws Exception {
        try {
            OAuth2User oAuth2User = (OAuth2User) authentication.getPrincipal();
            String registrationId = ((OAuth2AuthenticationToken) authentication).getAuthorizedClientRegistrationId();

            OAuth2ProviderStrategy strategy = strategyFactory.getStrategy(registrationId);
            String providerId = strategy.extractProviderId(oAuth2User);
            User userId = userRepository.findByProviderAndProviderId(registrationId, providerId)
                    .orElseThrow(() -> new Exception("User not found with providerId: " + providerId));

            String refreshTokenId = UUID.randomUUID().toString();
            ZonedDateTime now = ZonedDateTime.now(ZoneOffset.UTC);
            ZonedDateTime expiresAt = now.plusDays(1);
            RefreshToken refreshToken = RefreshToken.builder()
                    .id(refreshTokenId)
                    .provider(registrationId)
                    .user(userId)
                    .createdAt(now)
                    .expiredAt(expiresAt)
                    .used(false)
                    .build();

            refreshTokenRepository.save(refreshToken);
            return refreshTokenId;
        } catch (Exception e) {
            logger.error("during create refresh token error {}", e.getMessage());
            throw new Exception("during create refresh token error: "+ e.getMessage());
        }
    }

    //RTR 기법 - 리프레시 토큰 로테이션
    @Transactional
    public RefreshTokenResponseDTO regenerateAccessAndRefreshToken(String provider, String providerId) throws Exception {
        try {
            RefreshToken refreshToken = refreshTokenRepository.findByProviderAndProviderId(provider,providerId)
                    .orElseThrow(() -> new TokenException("refresh token not found"));

            if (refreshToken.getExpiredAt() == null) {
                logger.warn("ExpiredAt is null for token: {}", providerId);
                refreshTokenRepository.invalidateAllUserTokens(refreshToken.getUser());
                throw new TokenException("Invalid token state: expiration date is missing");
            }

            ZonedDateTime now = ZonedDateTime.now(ZoneOffset.UTC);
            if(refreshToken.getExpiredAt().isBefore(now)) {
                logger.warn("Token has expired for token: {}", providerId);
                refreshTokenRepository.invalidateAllUserTokens(refreshToken.getUser());
                throw new TokenException("Invalid token state: token has expired");
            }

            // 토큰이 이미 사용됐다면 토큰 탈취 가능성 (RTR 핵심 기능)
            if(refreshToken.isUsed()) {
                logger.warn("Token reuse detected for user: {}", refreshToken.getUser());
                refreshTokenRepository.invalidateAllUserTokens(refreshToken.getUser());
                throw new TokenException("Token reuse detected for user: "+ refreshToken.getUser());
            }

            if (refreshToken.isExpired()) {
                logger.warn("Expired token used for user: {}", refreshToken.getUser());
                throw new TokenException("refresh token expired");
            }

            // 토큰 사용처리
            refreshToken.markUsed();
            refreshTokenRepository.updateUsedStatus(refreshToken.getId(), true);

            // 새 액세스 토큰 생성
            Authentication authentication = jwtServiceImpl.getAuthentication(refreshToken.getUser().getId());
            String newAccessToken = jwtServiceImpl.generateAccessToken(authentication);

            String newRefreshToken = createRefreshToken(authentication);

            logger.debug("Refreshed tokens for user: {}", refreshToken.getUser());
            return new RefreshTokenResponseDTO(newAccessToken, newRefreshToken,
                    "Cookie", 60 * 60 * 24 * 7);

        } catch (TokenException e) {
            logger.error("during regenerate refresh token TokenException error {}", e.getMessage());
            throw new TokenException("during regenerate refresh token error: "+ e.getMessage());
        } catch (Exception e) {
            logger.error("during regenerate refresh token Exception error {}", e.getMessage());
            throw new Exception("during create refresh token error: "+ e.getMessage());
        }
    }
}
