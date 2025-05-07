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

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@Component
@RequiredArgsConstructor
public class OAuth2AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private final JwtServiceImpl jwtServiceImpl;
    private final RefreshTokenServiceImpl refreshTokenServiceImpl;
    private final static Logger logger = LogManager.getLogger(OAuth2AuthenticationSuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws ServletException, IOException {
        try {
            String token = jwtServiceImpl.generateAccessToken(authentication);
            String refreshToken = refreshTokenServiceImpl.createRefreshToken(authentication);

            // 클라이언트의 Origin 혹은 Referer 헤더에서 도메인 정보 추출
            String origin = request.getHeader("Origin");
            if (origin == null) {
                // Origin이 없을 경우 Referer에서 도메인 추출 시도
                String referer = request.getHeader("Referer");
                if (referer != null) {
                    // Referer URL에서 도메인 부분만 추출
                    origin = referer.replaceAll("(https?://[^/]+).*", "$1");
                }
            }

            // 허용된 Origin 리스트 (필요에 따라 수정)
            List<String> allowedOrigins = Arrays.asList(
                    "http://localhost:3000",
                    "http://localhost:8080",
                    "https://eastern-rowena-jack6767-df59f302.koyeb.app"
            );

            // 쿠키 설정
            boolean isSecure = request.isSecure() || "https".equals(request.getScheme());

            // SameSite=None 설정 (크로스 사이트 요청에서 쿠키 전송을 허용)
            ResponseCookie cookie = ResponseCookie.from("jwt_token", token)
                    .sameSite("None")  // 크로스 사이트 요청에서도 쿠키 전송
                    .httpOnly(true)    // JavaScript에서 접근 불가
                    .secure(isSecure)  // HTTPS에서만 전송 (개발 환경에서는 false일 수 있음)
                    .path("/")         // 모든 경로에서 사용 가능
                    .maxAge(60 * 60)   // 1시간
                    .build();

            // 쿠키 헤더 추가
            response.addHeader("Set-Cookie", cookie.toString());
            logger.info("JWT Cookie set: {}", cookie);

            // 홈페이지로 리다이렉트
            String targetUrl = UriComponentsBuilder.fromUriString("/").build().toUriString();
            getRedirectStrategy().sendRedirect(request, response, targetUrl);

        } catch (Exception e) {
            logger.error("during onAuthenticationSuccess Exception error {}", e.getMessage(), e);
            throw new ServletException("during onAuthenticationSuccess Exception error", e);
        }
    }
}