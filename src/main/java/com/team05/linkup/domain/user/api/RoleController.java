package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.user.application.ModifyRoleServiceImpl;
import com.team05.linkup.domain.user.dto.RoleRequestDTO;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Tag(name = "권한을 부여하는 api")
@RequiredArgsConstructor
@RequestMapping("/v1/auth")
public class RoleController {
    private final ModifyRoleServiceImpl modifyRoleServiceImpl;
    private final JwtUtils jwtUtils;

    @PostMapping("/role")
    @PreAuthorize("hasAuthority('ROLE_TEMP')")
    public ResponseEntity<ApiResponse> modifyRole(HttpServletRequest request,
                                                  RoleRequestDTO roleRequestDTO,
                                                  @AuthenticationPrincipal String providerId) {
        try {
            if (providerId == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }

            // Extract token and get provider from claims
            String token = jwtUtils.extractToken(request);
            if (token == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }

            String provider = (String) jwtUtils.parseToken(token).get("provider");
            if (provider == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }
             modifyRoleServiceImpl.modifyRole(provider, providerId, roleRequestDTO.role());
                    return ResponseEntity.ok(ApiResponse.success());

        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
