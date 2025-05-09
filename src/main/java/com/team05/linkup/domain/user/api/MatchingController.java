package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.MatchingStatusUpdateRequest;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/matching")
public class MatchingController {

    private final UserRepository userRepository;

    @PatchMapping("/status")
    public ResponseEntity<ApiResponse<?>> updateMatchingStatus(
            @RequestBody MatchingStatusUpdateRequest request,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        try {
            // 🔐 본인 조회
            User user = userRepository.findByProviderAndProviderId(
                    userPrincipal.provider(), userPrincipal.providerId()
            ).orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

            // ✅ 상태 업데이트
            if (request.getMatchStatus() != null) {
                user.setMatchStatus(request.getMatchStatus());
            }

            return ResponseEntity.ok(ApiResponse.success("매칭 상태가 변경되었습니다."));
        } catch (AccessDeniedException e) {
            return ResponseEntity.status(403).body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(ApiResponse.error(ResponseCode.valueOf("매칭 상태 변경 중 오류 발생")));
        }
    }
}
