package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.exception.TokenException;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.user.application.ModifyRoleServiceImpl;
import com.team05.linkup.domain.user.dto.RoleRequestDTO;
import io.jsonwebtoken.Claims;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<ApiResponse> modifyRole(HttpServletRequest request, RoleRequestDTO roleRequestDTO) {
        try {
            String token = jwtUtils.extractToken(request);
            if (token != null && !token.isEmpty()) {
                boolean isValid = jwtUtils.validateToken(token);
                if (isValid) {
                    Claims claims = jwtUtils.parseToken(token);
                    String providerId = claims.getSubject();
                    String provider = (String) claims.get("provider");
                    modifyRoleServiceImpl.modifyRole(provider, providerId, roleRequestDTO.role());
                    return ResponseEntity.ok(ApiResponse.success());
                }
            }
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        } catch (TokenException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }
        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
