package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.application.RefreshTokenServiceImpl;
import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.user.dto.RefreshTokenResponseDTO;
import io.jsonwebtoken.Claims;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.Duration;

@Tag(name = "Authentication", description = "인증 관련 API")
@RestController
@RequestMapping("/v1/auth")
@RequiredArgsConstructor
public class AuthController {

    private static final Logger logger = LogManager.getLogger(AuthController.class);
    private final JwtUtils jwtUtils;
    private final RefreshTokenServiceImpl refreshTokenServiceImpl;

    @Operation(summary = "토큰 갱신", description = "리프레시 토큰을 사용하여 액세스 토큰과 리프레시 토큰을 갱신합니다.")
    @GetMapping("/refresh")
    public ResponseEntity<RefreshTokenResponseDTO> refresh(HttpServletRequest request) {
        try {
            String token = jwtUtils.extractToken(request);
            logger.info("토큰 {}", token);
                     if (token != null && !token.isEmpty()) {
                    // If valid, we can also extract and return some user information
                    Claims claims = jwtUtils.parseTokenWithoutExpiredAtValidation(token);
                    String providerId =  claims.getSubject();
                    String provider = (String) claims.get("provider");
                    RefreshTokenResponseDTO response = refreshTokenServiceImpl.regenerateAccessAndRefreshToken(provider, providerId);
                    String domain = ".linkup.o-r.kr";
                    ResponseCookie cookie = ResponseCookie.from("jwt_token", response.accessToken())
                            .httpOnly(true)
                            .secure(true)
                            .path("/")
                            .maxAge(Duration.ofHours(1))
                            .sameSite("None")
                            .domain(domain)
                            .build();
                    return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, cookie.toString()).body(response);
                }

            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body(null);
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @GetMapping("/status")
    public ResponseEntity<ApiResponse> getStatus(HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        boolean isLoggedIn = authentication != null &&
                authentication.isAuthenticated() &&
                !(authentication instanceof AnonymousAuthenticationToken);

        if (!isLoggedIn) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        return ResponseEntity.ok(ApiResponse.success());
    }
}
