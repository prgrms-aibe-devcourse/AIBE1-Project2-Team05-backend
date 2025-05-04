package com.team05.linkup.domain.review.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.review.domain.Review;
import com.team05.linkup.domain.review.dto.MyCompletedMentoringDTO;
import com.team05.linkup.domain.review.dto.ReviewRequestDTO;
import com.team05.linkup.domain.review.dto.ReviewResponseDTO;
import com.team05.linkup.domain.review.infrastructure.ReviewRepository;
import com.team05.linkup.domain.user.domain.User;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import jakarta.validation.Validator;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private static final Logger logger = LogManager.getLogger();
    private final MentoringRepository mentoringRepository;
    private final ReviewRepository reviewRepository;
    private final Validator validator;

    public List<MyCompletedMentoringDTO> getCompletedMentoringSessions(User user) {

        // userId와 상태가 COMPLETED인 멘토링 세션 조회
        List<MentoringSessions> completedSessions = mentoringRepository.findByMenteeIdAndStatus(user.getId(), MentoringStatus.COMPLETED);

        logger.debug(completedSessions);
        completedSessions.forEach(session -> {
            logger.debug("Mentoring Session ID: " + session.getId());
            logger.debug("Mentor Name: " + session.getMentor().getName());
        });

        // DTO로 변환
        return completedSessions.stream()
                .map(session -> MyCompletedMentoringDTO.builder()
                        .sessionId(session.getId())
                        .mentorName(session.getMentor().getName())
                        .build())
                .collect(Collectors.toList());
    }

    public void createReview(ReviewRequestDTO reviewRequestDTO) {
        // 1. 리뷰 중복 검증
        Optional<Review> existingReview = reviewRepository.findById(reviewRequestDTO.getMentoringSessionId());
        if (existingReview.isPresent()) {
            throw new IllegalStateException("이 세션에 대한 리뷰는 이미 존재합니다.");
        }

        // 2. 멘토링 세션 완료 상태 검증
        Optional<MentoringSessions> session = mentoringRepository.findMentoringSessionById(reviewRequestDTO.getMentoringSessionId());
        if (session.isEmpty() || session.get().getStatus() != MentoringStatus.COMPLETED) {
            logger.debug(session.get().getStatus());
            logger.debug(MentoringStatus.COMPLETED);
            // 멘토링 세션이 완료되지 않았다면 400 Bad Request 에러를 반환
            throw new IllegalArgumentException("해당 멘토링 세션은 완료되지 않았습니다.");
        }

        // 3. 리뷰 객체 생성
        Review review = reviewRequestDTO.toEntity(reviewRequestDTO);

        // 4. 유효성 검사 수행 (Bean Validation 수동 호출)
        Set<ConstraintViolation<Review>> violations = validator.validate(review);
        if (!violations.isEmpty()) {
            // 첫 번째 유효성 위반 메시지를 추출
            String message = violations.iterator().next().getMessage();
            // ConstraintViolationException 발생 (try-catch로 직접 처리)
            throw new ConstraintViolationException(message, violations);
        }

        // 5. 검증 통과 시 저장
        reviewRepository.save(review);
    }

    public ReviewResponseDTO getReview(User user, String reviewId) {
        // 1. 리뷰 존재 여부 확인
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new IllegalArgumentException("리뷰를 찾을 수 없습니다."));

        // 2. 멘토링 세션 조회
        MentoringSessions session = mentoringRepository.findMentoringSessionById(review.getMentoringSessionId())
                .orElseThrow(() -> new IllegalArgumentException("멘토링 세션을 찾을 수 없습니다."));

        // 3. 멘토링 세션의 멘티 ID와 현재 사용자 ID 비교
        if (!session.getMentee().getId().equals(user.getId())) {
            throw new IllegalStateException("해당 리뷰에 접근할 권한이 없습니다.");
        }

        // 4. DTO 변환 및 반환
        return ReviewResponseDTO.builder()
                .mentoringSessionId(review.getMentoringSessionId())
                .title(review.getTitle())
                .content(review.getContent())
                .star(review.getStar())
                .interest(review.getInterest())
                .build();
    }

    public void updateReview(User user, String reviewId, ReviewRequestDTO reviewRequestDTO) {
        // 1. 리뷰 존재 여부 확인
        Review existingReview = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new IllegalArgumentException("리뷰를 찾을 수 없습니다."));

        // 2. 멘토링 세션 조회
        MentoringSessions session = mentoringRepository.findMentoringSessionById(existingReview.getMentoringSessionId())
                .orElseThrow(() -> new IllegalArgumentException("멘토링 세션을 찾을 수 없습니다."));

        // 3. 권한 확인
        if (!session.getMentee().getId().equals(user.getId())) {
            throw new IllegalStateException("리뷰 수정 권한이 없습니다.");
        }

        // 4. 유효성 검사 수행 (Bean Validation 수동 호출)
        Set<ConstraintViolation<ReviewRequestDTO>> violations = validator.validate(reviewRequestDTO);
        if (!violations.isEmpty()) {
            // 첫 번째 유효성 위반 메시지를 추출
            String message = violations.iterator().next().getMessage();
            // ConstraintViolationException 발생 (try-catch로 직접 처리)
            throw new ConstraintViolationException(message, violations);
        }

        // 5. 리뷰 업데이트
        Review updatedReview = Review.builder()
                .id(existingReview.getId()) // 기존 ID 유지
                .mentoringSessionId(existingReview.getMentoringSessionId()) // 기존 멘토링 세션 ID 유지
                .title(reviewRequestDTO.getTitle()) // 제목 업데이트
                .content(reviewRequestDTO.getContent()) // 내용 업데이트
                .star(reviewRequestDTO.getStar()) // 별점 업데이트
                .interest(reviewRequestDTO.getInterest()) // 관심사 업데이트
                .build();

        reviewRepository.save(updatedReview);
    }
}