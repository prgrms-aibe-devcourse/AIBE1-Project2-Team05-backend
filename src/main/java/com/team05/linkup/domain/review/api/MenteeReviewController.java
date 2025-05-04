package com.team05.linkup.domain.review.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.review.application.ReviewService;
import com.team05.linkup.domain.review.dto.MyCompletedMentoringDTO;
import com.team05.linkup.domain.review.dto.ReviewRequestDTO;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.validation.ConstraintViolationException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/mentee")
@RequiredArgsConstructor
public class MenteeReviewController {
    private static final Logger logger = LogManager.getLogger();
    private final ReviewService reviewService;
    private final UserRepository userRepository;

    @GetMapping("/review")
    public ResponseEntity<ApiResponse<List<MyCompletedMentoringDTO>>> getCompletedMentoringSessions(@AuthenticationPrincipal UserPrincipal userPrincipal) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        List<MyCompletedMentoringDTO> result = reviewService.getCompletedMentoringSessions(userOpt.get());
        return ResponseEntity.ok(ApiResponse.success(result));
    }

    @PostMapping("/review")
    public ResponseEntity<ApiResponse> createReview(@AuthenticationPrincipal UserPrincipal userPrincipal, @RequestBody ReviewRequestDTO reviewRequestDTO) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        try {
            reviewService.createReview(reviewRequestDTO);
            return ResponseEntity.ok(ApiResponse.created("리뷰가 성공적으로 생성되었습니다."));
        } catch (ConstraintViolationException ex) {
            // 유효성 검증 실패 처리
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, ex.getMessage()));
        } catch (IllegalStateException ex) {
            // 이미 리뷰가 존재하는 경우 (CONFLICT)
            return ResponseEntity.status(HttpStatus.CONFLICT)
                    .body(ApiResponse.error(ResponseCode.CONFLICT, ex.getMessage()));
        } catch (IllegalArgumentException ex) {
            // 멘토링 세션이 완료되지 않은 경우 (BAD_REQUEST)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_MENTORING_SESSION, ex.getMessage()));
        }
    }
}
