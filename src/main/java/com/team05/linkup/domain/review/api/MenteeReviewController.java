package com.team05.linkup.domain.review.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.review.application.ReviewService;
import com.team05.linkup.domain.review.dto.MyCompletedMentoringDTO;
import com.team05.linkup.domain.review.dto.ReviewRequestDTO;
import com.team05.linkup.domain.review.dto.ReviewResponseDTO;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.ConstraintViolationException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/mentee")
@RequiredArgsConstructor
@Tag(name = "리뷰 API", description = "리뷰 관련 조회, 작성, 수정, 삭제 관련 API")
public class MenteeReviewController {
    private static final Logger logger = LogManager.getLogger();
    private final ReviewService reviewService;
    private final UserRepository userRepository;

    @GetMapping("/review")
    @Operation(summary = "리뷰 작성 가능한 멘토링 세션 조회", description = "멘토링 세션의 상태가 완료인 멘토링 세션 리스트 정보를 조회합니다.")
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
    @Operation(summary = "리뷰 작성", description = "완료된 멘토링 세션에 대해 리뷰를 작성합니다")
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

    @GetMapping("/review/{reviewId}")
    @Operation(summary = "리뷰 상세 조회", description = "리뷰 수정 화면에서 사용할 상세 데이터를 조회합니다.")
    public ResponseEntity<ApiResponse<ReviewResponseDTO>> getReviewForUpdate(
            @AuthenticationPrincipal UserPrincipal userPrincipal, @PathVariable String reviewId) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        try {
            ReviewResponseDTO result = reviewService.getReview(userOpt.get(), reviewId);
            return ResponseEntity.ok(ApiResponse.success(result));
        } catch (IllegalArgumentException e) {
            // 리뷰나 멘토링 세션을 찾을 수 없을 때
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (IllegalStateException e) {
            // 권한이 없을 때
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, e.getMessage()));
        }
    }

    @PatchMapping("/review/{reviewId}")
    @Operation(summary = "리뷰 수정", description = "기존에 작성된 리뷰를 새로운 내용으로 업데이트합니다.")
    public ResponseEntity<ApiResponse> updateReview(@AuthenticationPrincipal UserPrincipal userPrincipal, @PathVariable String reviewId,@RequestBody ReviewRequestDTO reviewRequestDTO) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        try {
            reviewService.updateReview(userOpt.get(), reviewId, reviewRequestDTO);
            return ResponseEntity.ok(ApiResponse.created("리뷰가 성공적으로 수정되었습니다."));
        } catch (ConstraintViolationException ex) {
            // 유효성 검증 실패 처리
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, ex.getMessage()));
        } catch (IllegalStateException ex) {
            // 권한이 없을 때 (FORBIDDEN)
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, ex.getMessage()));
        } catch (IllegalArgumentException ex) {
            // 잘못된 요청 데이터 또는 멘토링 세션 문제 (BAD_REQUEST)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_MENTORING_SESSION, ex.getMessage()));
        }
    }

    @DeleteMapping("/review/{reviewId}")
    @Operation(summary = "리뷰 삭제", description = "작성된 리뷰를 삭제합니다.")
    public ResponseEntity<ApiResponse> deleteReview(@AuthenticationPrincipal UserPrincipal userPrincipal, @PathVariable String reviewId) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        try {
            reviewService.deleteReview(userOpt.get(), reviewId);
            return ResponseEntity.ok(ApiResponse.success("리뷰가 성공적으로 삭제되었습니다."));
        } catch (IllegalStateException ex) {
            // 권한이 없을 때 (FORBIDDEN)
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, ex.getMessage()));
        } catch (IllegalArgumentException ex) {
            // 리뷰를 찾을 수 없거나 잘못된 요청일 때 (BAD_REQUEST)
            return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, ex.getMessage()));
        }
    }

    @GetMapping("/review/list/{nickname}")
    @Operation(summary = "작성된 리뷰 내역", description = "멘티가 작성한 리뷰 목록을 조회합니다.")
    public ResponseEntity<ApiResponse<Page<ReviewResponseDTO>>> getReviewHistory(
            @AuthenticationPrincipal UserPrincipal userPrincipal,
            @PathVariable String nickname,
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "3") int size) {
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));
        try {
            Page<ReviewResponseDTO> reviews = reviewService.getReviewHistory(userOpt.get(), userPrincipal, page, size);
            return ResponseEntity.ok(ApiResponse.success(reviews));
        } catch (IllegalArgumentException e) {
            // 리뷰 조회 권환이 업을 때
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, e.getMessage()));
        }
    }
}
