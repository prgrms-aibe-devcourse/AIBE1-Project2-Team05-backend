package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.application.JwtServiceImpl;
import com.team05.linkup.common.application.RefreshTokenServiceImpl;
import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.user.application.ModifyRoleServiceImpl;
import com.team05.linkup.domain.user.dto.RoleRequestDTO;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Tag(name = "권한을 부여하는 api")
@RequiredArgsConstructor
@RequestMapping("/v1/auth")
public class RoleController {
    private final ModifyRoleServiceImpl modifyRoleServiceImpl;
    private final JwtServiceImpl jwtServiceImpl;
    private final RefreshTokenServiceImpl refreshTokenServiceImpl;

    @PostMapping("/role")
    @PreAuthorize("hasAuthority('ROLE_TEMP')")
    public ResponseEntity<ApiResponse> modifyRole(@RequestBody RoleRequestDTO roleRequestDTO,
                                                  @AuthenticationPrincipal UserPrincipal userPrincipal,
                                                    HttpServletResponse response) {
        final Logger logger = LogManager.getLogger(RoleController.class);
        logger.info("userPrincipal {}", userPrincipal);
        try {
            if (userPrincipal == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }

            Authentication updatedAuth = modifyRoleServiceImpl.modifyRole(userPrincipal, roleRequestDTO.role());

            String newToken = jwtServiceImpl.generateAccessToken(updatedAuth);
            String refreshToken = refreshTokenServiceImpl.createRefreshToken(updatedAuth);

            ResponseCookie cookie = ResponseCookie.from("jwt_token", newToken)
                    .sameSite("None")
                    .httpOnly(true)
                    .secure(true)
                    .path("/")
                    .maxAge(60 * 60) // 1 hour
                    .domain(".linkup.o-r.kr")
                    .build();

            response.setHeader("Set-Cookie", cookie.toString());
            return ResponseEntity.ok(ApiResponse.success());

        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
