package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Tag(name = "로그아웃")
@RequestMapping("/v1/auth")
public class LogoutController {
    @PostMapping("/logout")
    @Operation(summary = "로그아웃", description = "로그아웃화면")
    public ResponseEntity<ApiResponse> logout(HttpServletRequest request, HttpServletResponse response) {
        // 직접 로그아웃 처리 로직
        request.getSession().invalidate();
        SecurityContextHolder.clearContext();


        ResponseCookie cookie = ResponseCookie.from("jwt_token", null)
                .path("/")
                .maxAge(0)
                .httpOnly(true)
                .secure(true)
                .sameSite("None")
                .build();
        response.addHeader("Set-Cookie",cookie.toString());
        return ResponseEntity.ok(ApiResponse.success(ResponseCode.SUCCESS));
    }}
