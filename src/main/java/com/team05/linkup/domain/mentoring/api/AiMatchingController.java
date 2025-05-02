package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.exception.DuplicateMentoringMatchException;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import com.team05.linkup.domain.mentoring.service.AiMatchingListServiceImpl;
import com.team05.linkup.domain.mentoring.service.AiMatchingSelectorServiceImpl;
import io.jsonwebtoken.Claims;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
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

    public ResponseEntity<ApiResponse<AiMatchingResponseDTO>> getRecommendation(HttpServletRequest request) {
        try {
            String token = jwtUtils.extractToken(request);
            if (token != null && !token.isEmpty()) {
                boolean isValid = jwtUtils.validateToken(token);
                if (isValid) {
                    Claims claims = jwtUtils.parseToken(token);
                    String providerId = claims.getSubject();
                    String provider = (String) claims.get("provider");
                    AiMatchingResponseDTO responseDTO = aiMatchingServiceImpl.matchMentor(provider,providerId);
                    return ResponseEntity.ok(ApiResponse.success(responseDTO));
                }
            }
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }

    @PostMapping("/{nickname}")
    @Operation(description = "ai 매칭 멘토 선택")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse> matchMentor(HttpServletRequest request, @PathVariable String nickname) {
        try {
            String token = jwtUtils.extractToken(request);
            if (token != null && !token.isEmpty()) {
                boolean valid = jwtUtils.validateToken(token);
                if (valid) {
                    Claims claims = jwtUtils.parseToken(token);
                    String providerId = claims.getSubject();
                    String provider = (String) claims.get("provider");
                    aiMatchingSelectorServiceImpl.matchingMentor(provider, providerId, nickname);
                    return ResponseEntity.ok(ApiResponse.success());
                }
            }
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        } catch (DuplicateMentoringMatchException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE));
        }
        catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }
}
