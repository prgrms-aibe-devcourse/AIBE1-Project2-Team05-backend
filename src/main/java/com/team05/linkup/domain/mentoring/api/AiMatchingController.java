package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.common.util.JwtUtils;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import com.team05.linkup.domain.mentoring.service.AIMatchingServiceImpl;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/matching")
@RequiredArgsConstructor
@Tag(name = "ai 매칭 api입니다")
public class AiMatchingController {
    private final JwtUtils jwtUtils;
    private final AIMatchingServiceImpl aiMatchingServiceImpl;

    @GetMapping("/recommendation")
    @Operation(description = "ai 매칭 멘토 리스트 결과")
    public ResponseEntity<ApiResponse> getRecommendation(HttpServletRequest request) {
        try {
            String token = jwtUtils.extractToken(request);
            if (token != null && !token.isEmpty()) {
                boolean isValid = jwtUtils.validateToken(token);
                if (isValid) {
                    String providerId = jwtUtils.parseToken(token).getSubject();
                    AiMatchingResponseDTO responseDTO = aiMatchingServiceImpl.matchMentor(providerId);
                    return ResponseEntity.ok(ApiResponse.success(responseDTO));
                }
            }
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }

    }
}
