package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.mentoring.application.MentoringStatusService;
import com.team05.linkup.domain.mentoring.dto.MentoringStatusUpdateDTO;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/v1/matching")
@RequiredArgsConstructor
@Tag(name = "멘토링 상태 변경 API", description = "멘토링의 상태를 변경할 수 있는 상태 관리 관련 API")
public class MatchingController {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final MentoringStatusService mentoringStatusService;

    @PostMapping("/status")
    @Operation(summary = "멘토링 상태 변경", description = "mentoringId에 해당하는 멘토링의 상태를 전달된 MentoringStatus로 변경하여 저장합니다.")
    public ResponseEntity<ApiResponse<?>> updateMatchingStatus(
            @RequestBody MentoringStatusUpdateDTO request,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());

        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));
        logger.debug(request.getMentoringId());
        try {
            mentoringStatusService.setMentoringStatus(request.getMentoringId(), request.getMentoringStatus(), userOpt.get());
            // 멘토링 상태 변경 성공
            return ResponseEntity.ok(ApiResponse.success("멘토링 상태가 '%s'(으)로 변경되었습니다.".formatted(request.getMentoringStatus().getStatusName())));
        } catch (AccessDeniedException e) {
            return ResponseEntity.status(403).body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        }  catch (IllegalArgumentException e) {
            logger.warn("유효하지 않은 입력값: {}", e.getMessage());
            return ResponseEntity.badRequest()
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, e.getMessage()));
        } catch (Exception e) {
            logger.error("매칭 상태 변경 중 오류 발생: {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "서버 내부 오류가 발생했습니다."));
        }
    }
}
