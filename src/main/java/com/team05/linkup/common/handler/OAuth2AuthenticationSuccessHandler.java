package com.team05.linkup.common.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.team05.linkup.common.application.JwtServiceImpl;
import com.team05.linkup.common.application.RefreshTokenServiceImpl;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.enums.Role;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseCookie;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.Collection;

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

            Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();

            // SameSite=None 설정 (크로스 사이트 요청에서 쿠키 전송을 허용)
            ResponseCookie cookie = ResponseCookie.from("jwt_token", token)
                    .sameSite("None")  // 크로스 사이트 요청에서도 쿠키 전송
                    .httpOnly(true)    // JavaScript에서 접근 불가
                    .secure(true)      // HTTPS에서만 전송
                    .path("/")         // 모든 경로에서 사용 가능
                    .maxAge(60 * 60)   // 1시간
                    .domain(".linkup.o-r.kr")
                    .build();
            logger.info("cookie: {}", cookie.toString());
            // 쿠키 헤더 추가
            String provider = jwtUtils.parseToken(token).get("provider").toString();
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.setStatus(HttpServletResponse.SC_OK);
            response.setHeader("Set-Cookie", cookie.toString());
            if ((Role.ROLE_TEMP).equals(Role.valueOf(authorities.iterator().next().getAuthority())) ) {
                response.sendRedirect("https://frontend.linkup.o-r.kr/ser-type-selection?loggedIn=true&socialType=%s".formatted(provider));
                return;
            }
            response.sendRedirect("https://frontend.linkup.o-r.kr/");

        } catch (Exception e) {
            logger.error("During onAuthenticationSuccess Exception error {}", e.getMessage(), e);
            throw new ServletException("During onAuthenticationSuccess Exception error", e);
        }
    }
}