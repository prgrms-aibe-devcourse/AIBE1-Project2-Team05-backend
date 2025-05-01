package com.team05.linkup.common.util;


import com.team05.linkup.common.config.JwtConfig;
import com.team05.linkup.common.exception.TokenException;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class JwtUtils {
    private final JwtConfig jwtConfig;
    private static final Logger logger = LogManager.getLogger();

    public Claims parseToken(String token) {
        try {
            Claims claims = Jwts.parser()
                    .verifyWith(jwtConfig.secretKey())
                    .build()
                    .parseSignedClaims(token)
                    .getPayload();

            // ✅ 발급자 검증
            if (claims.getIssuer() == null ||
                    !claims.getIssuer().contains("cake7-auth-server")) {
                throw new JwtException("Invalid issuer");
            }

            // ✅ 대상자 검증
            if (claims.getAudience() == null ||
                    !claims.getAudience().contains("cake7-client")) {
                throw new JwtException("Invalid audience");
            }
            return claims;
        } catch (TokenException e) {
            logger.error("parse token error: {}", e.getMessage());
            throw new JwtException("parse token error");
        }
    }

    public Claims parseTokenWithoutExpiredAtValidation(String token) {
        try {
            return Jwts.parser()
                    .verifyWith(jwtConfig.secretKey())
                    .build()
                    .parseSignedClaims(token)
                    .getPayload();
        } catch (ExpiredJwtException e) {
            logger.error("ExpiredJwtException token error: {}", e.getMessage());
            return e.getClaims();
        } catch (Exception e) {
            logger.error("parse token error: {}", e.getMessage());
            throw new TokenException("parse token error");
        }
    }

    public boolean validateToken(String token) {
        if (token == null || token.isEmpty()) {
            return false;
        }

        try {
            parseToken(token);
            return true;
        } catch (TokenException e) {
            logger.error("during validate token error: {}", e.getMessage());
            return false;
        }
    }

    public String extractToken(HttpServletRequest request) {
//        String bearerToken = request.getHeader("Authorization");
//        if (StringUtils.hasText(bearerToken) && bearerToken.startsWith("Bearer ")) {
//            return bearerToken.substring(7);
//        }

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("jwt_token")) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
}
