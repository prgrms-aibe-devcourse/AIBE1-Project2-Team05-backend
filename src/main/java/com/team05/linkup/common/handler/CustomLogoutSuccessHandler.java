package com.team05.linkup.common.handler;


import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.RefreshTokenRepository;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.Optional;

@Component
@RequiredArgsConstructor
public class CustomLogoutSuccessHandler implements LogoutSuccessHandler {
    private final RefreshTokenRepository refreshTokenRepository;
    private final JwtUtils jwtUtils;
    private final UserRepository userRepository;
    private final static Logger logger = LogManager.getLogger(CustomLogoutSuccessHandler.class);

    @Override
    @Transactional
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
                                Authentication authentication) throws IOException {
        try {
            String token = jwtUtils.extractToken(request);
            if (token != null && !token.isEmpty()) {
                // 토큰이 유효한 경우
                if (jwtUtils.validateToken(token)) {
                    String providerId = jwtUtils.parseToken(token).getSubject();
                    Optional<User> userId = userRepository.findByProviderId(providerId);

                    // 해당 사용자의 모든 리프레시 토큰 무효화
                    if (userId.isPresent()) {
                        refreshTokenRepository.invalidateAllUserTokens(userId.get());
                        logger.info("All refresh tokens invalidated for user: {}", userId);
                    }
                }
            }

            response.setStatus(HttpServletResponse.SC_OK);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"message\": \"logout success\"}");
            response.getWriter().flush();

        } catch (Exception e) {
            logger.error("Error during logout: {}", e.getMessage());
            response.sendRedirect("/?logout-error=true");
        }
    }
}
