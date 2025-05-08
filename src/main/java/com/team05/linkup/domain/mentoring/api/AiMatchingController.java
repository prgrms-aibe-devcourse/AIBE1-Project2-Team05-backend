package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.exception.DuplicateMentoringMatchException;
import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.mentoring.application.AiMatchingListServiceImpl;
import com.team05.linkup.domain.mentoring.application.AiMatchingSelectorServiceImpl;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.concurrent.TimeoutException;

@RestController
@RequestMapping("/v1/matching")
@RequiredArgsConstructor
@Tag(name = "ai 매칭 api입니다")
public class AiMatchingController {
    private final AiMatchingListServiceImpl aiMatchingServiceImpl;
    private final AiMatchingSelectorServiceImpl aiMatchingSelectorServiceImpl;

    @GetMapping("/recommendations")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    @Operation(description = "ai 매칭 멘토 리스트 결과")

    public ResponseEntity<ApiResponse<AiMatchingResponseDTO>> getRecommendation(@AuthenticationPrincipal UserPrincipal userPrincipal) {
        try {
            String providerId = userPrincipal.providerId();
            String provider = userPrincipal.provider();
            if (providerId == null || provider == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }
                AiMatchingResponseDTO responseDTO = aiMatchingServiceImpl.matchMentor(userPrincipal);
                return ResponseEntity.ok(ApiResponse.success(responseDTO));

        } catch (TimeoutException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.TIMEOUT));
        } catch (UserNotfoundException e){
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        }
        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }

    @PostMapping("/recommendations/{nickname}")
    @Operation(description = "ai 매칭 멘토 선택")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse> matchMentor(@PathVariable String nickname,
                                                   @AuthenticationPrincipal UserPrincipal userPrincipal) {
        try {
            String providerId = userPrincipal.providerId();
            String provider = userPrincipal.provider();
            if (providerId == null || provider == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
            }

            aiMatchingSelectorServiceImpl.matchingMentor(userPrincipal, nickname);
            return ResponseEntity.ok(ApiResponse.success());
        } catch (DuplicateMentoringMatchException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE));
        } catch (UserNotfoundException e){
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        }

        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
