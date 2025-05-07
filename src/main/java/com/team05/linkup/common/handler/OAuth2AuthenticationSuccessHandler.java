package com.team05.linkup.common.handler;

import com.team05.linkup.common.application.JwtServiceImpl;
import com.team05.linkup.common.application.RefreshTokenServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseCookie;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.web.util.UriComponentsBuilder;

@Component
@RequiredArgsConstructor
public class OAuth2AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private final JwtServiceImpl jwtServiceImpl;
    private final RefreshTokenServiceImpl refreshTokenServiceImpl;
    private final static Logger logger = LogManager.getLogger(OAuth2AuthenticationSuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws ServletException {
        try {

            String token = jwtServiceImpl.generateAccessToken(authentication);
            String refreshToken = refreshTokenServiceImpl.createRefreshToken(authentication);

            // 요청의 도메인 확인 (프론트엔드의 Origin 헤더 확인)
            String origin = request.getHeader("Origin");
            boolean isLocal = origin != null && origin.contains("localhost");  // 로컬 개발 환경인지 확인
            boolean isSecure = "https".equals(request.getScheme());  // HTTPS 프로토콜인지 확인

            // 로컬 환경에서는 localhost, 배포 환경에서는 실제 도메인으로 쿠키 설정
            String domain = isLocal ? "localhost" : "eastern-rowena-jack6767-df59f302.koyeb.app";

            ResponseCookie cookie = ResponseCookie.from("jwt_token", token)
                            .sameSite("None")
                            .httpOnly(true)
                            .secure(isSecure)
                            .domain(domain)
                            .path("/")
                            .maxAge(60 * 60)
                            .build();

            response.addHeader("Set-Cookie", cookie.toString());

            String targetUrl = UriComponentsBuilder.fromUriString("/").build().toUriString();
            getRedirectStrategy().sendRedirect(request, response, targetUrl);

        } catch (Exception e) {
            logger.error("during onAuthenticationSuccess Exception error {}", e.getMessage());
            throw new ServletException("during onAuthenticationSuccess Exception error", e);
        }
    }
}