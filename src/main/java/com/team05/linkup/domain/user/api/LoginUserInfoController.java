package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.LoginUserInfoDTO;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;

@RestController
@RequestMapping("/v1/users")
@Tag(name = "로그인 유저 API", description = "현재 로그인한 유저의 기본 정보(nickname, role) 조회용 API")
@RequiredArgsConstructor
public class LoginUserInfoController {

    private final UserRepository userRepository;

    @GetMapping("/me")
    @Operation(
            summary = "현재 로그인한 사용자 정보 조회",
            description = "프론트에서 로그인한 유저의 nickname 및 role 정보를 조회할 때 사용합니다."
    )
    public ResponseEntity<ApiResponse<LoginUserInfoDTO>> getMyInfo(@AuthenticationPrincipal UserPrincipal principal) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                principal.provider(), principal.providerId()
        );

        if (userOpt.isEmpty()) {
            return ResponseEntity
                    .status(404)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "로그인한 사용자 정보를 찾을 수 없습니다."));
        }

        User user = userOpt.get();
        LoginUserInfoDTO dto = new LoginUserInfoDTO(user.getNickname(), user.getRole().name());
        return ResponseEntity.ok(ApiResponse.success(dto));
    }
}
