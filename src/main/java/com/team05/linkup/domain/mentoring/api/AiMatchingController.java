package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.exception.DuplicateMentoringMatchException;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import com.team05.linkup.domain.mentoring.service.AiMatchingListServiceImpl;
import com.team05.linkup.domain.mentoring.service.AiMatchingSelectorServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/matching")
@RequiredArgsConstructor
@Tag(name = "ai 매칭 api입니다")
public class AiMatchingController {
    private final JwtUtils jwtUtils;
    private final AiMatchingListServiceImpl aiMatchingServiceImpl;
    private final AiMatchingSelectorServiceImpl aiMatchingSelectorServiceImpl;

    @GetMapping("/recommendation")
    @Operation(description = "ai 매칭 멘토 리스트 결과")

    public ResponseEntity<ApiResponse<AiMatchingResponseDTO>> getRecommendation(HttpServletRequest request,
                                                                                @AuthenticationPrincipal String providerId,
                                                                                @AuthenticationPrincipal String provider) {
        try {
                if (providerId == null || provider == null) {
                    return ResponseEntity
                            .status(ResponseCode.UNAUTHORIZED.getStatus())
                            .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
                }
                AiMatchingResponseDTO responseDTO = aiMatchingServiceImpl.matchMentor(provider,providerId);
                return ResponseEntity.ok(ApiResponse.success(responseDTO));

        }
        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }

    @PostMapping("/{nickname}")
    @Operation(description = "ai 매칭 멘토 선택")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse> matchMentor(HttpServletRequest request,
                                                   @PathVariable String nickname,
                                                   @AuthenticationPrincipal String providerId,
                                                   @AuthenticationPrincipal String provider) {
        try {
            if (providerId == null || provider == null) {
                return ResponseEntity
                        .status(ResponseCode.UNAUTHORIZED.getStatus())
                        .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
                }
                    aiMatchingSelectorServiceImpl.matchingMentor(provider, providerId, nickname);
                    return ResponseEntity.ok(ApiResponse.success());
        } catch (DuplicateMentoringMatchException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE));
        }
        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
