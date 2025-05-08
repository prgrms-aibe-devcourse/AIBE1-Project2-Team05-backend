package com.team05.linkup.common.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.team05.linkup.common.application.JwtServiceImpl;
import com.team05.linkup.common.application.RefreshTokenServiceImpl;
import com.team05.linkup.common.util.JwtUtils;
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

import java.io.IOException;

@Component
@RequiredArgsConstructor
public class OAuth2AuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {
    private final JwtServiceImpl jwtServiceImpl;
    private final RefreshTokenServiceImpl refreshTokenServiceImpl;
    private final JwtUtils jwtUtils;
    private final ObjectMapper objectMapper = new ObjectMapper();
    private final static Logger logger = LogManager.getLogger(OAuth2AuthenticationSuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
                                        Authentication authentication) throws ServletException, IOException {
        try {
            String token = jwtServiceImpl.generateAccessToken(authentication);
            String refreshToken = refreshTokenServiceImpl.createRefreshToken(authentication);

            // 요청 헤더에서 실제 호스트 정보 가져오기
            String host = request.getHeader("X-Forwarded-Host");
            String xForwardedProto = request.getHeader("X-Forwarded-Proto");
            if (host == null || host.isEmpty()) {
                host = request.getServerName();
            }
            logger.info("X-Forwarded-Host: {}", host);
            logger.info("X-Forwarded-Proto: {}", xForwardedProto);
            logger.info("Detected host for redirection: {}", host);

            // 쿠키 도메인 설정
            String cookieDomain;
            if (host.contains("localhost")) {
                cookieDomain = "localhost";
            } else {
                cookieDomain = host;
            }
            logger.info("Setting cookie domain to: {}", cookieDomain);


            // SameSite=None 설정 (크로스 사이트 요청에서 쿠키 전송을 허용)
            ResponseCookie cookie = ResponseCookie.from("jwt_token", token)
                    .sameSite("None")  // 크로스 사이트 요청에서도 쿠키 전송
                    .httpOnly(true)    // JavaScript에서 접근 불가
                    .secure(true)      // HTTPS에서만 전송
                    .path("/")         // 모든 경로에서 사용 가능
                    .maxAge(60 * 60)   // 1시간
                    .domain("front-linkup.duckdns.org")
                    .build();

            // 쿠키 헤더 추가
            String provider = jwtUtils.parseToken(token).get("provider").toString();

            // 프로토콜 감지 (X-Forwarded-Proto 헤더 확인)
            String scheme = request.getHeader("X-Forwarded-Proto");
            if (scheme == null || scheme.isEmpty()) {
                scheme = request.getScheme(); // "http" 또는 "https"
            }

            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setHeader("Set-Cookie", cookie.toString());

            // 리디렉션 URL 생성
            String redirectUrl = String.format("%s://front-likup.duckdns.org/user-type-selection?loggedIn=%s&socialType=%s",
                    scheme, true, provider);

            logger.info("Redirecting to: {}", redirectUrl);
            response.sendRedirect(redirectUrl);
        } catch (Exception e) {
            logger.error("During onAuthenticationSuccess Exception error {}", e.getMessage(), e);
            throw new ServletException("During onAuthenticationSuccess Exception error", e);
        }
    }
}