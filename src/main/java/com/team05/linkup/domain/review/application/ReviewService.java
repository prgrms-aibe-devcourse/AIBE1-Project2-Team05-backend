package com.team05.linkup.domain.review.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.review.domain.Review;
import com.team05.linkup.domain.review.dto.MyCompletedMentoringDTO;
import com.team05.linkup.domain.review.dto.ReviewRequestDTO;
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
        logger.debug(reviewRequestDTO.getMentoringSessionId());
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
            // ConstraintViolationException 발생 (Spring @ExceptionHandler로 잡아 응답 처리 가능)
            throw new ConstraintViolationException(message, violations);
        }

        // 5. 검증 통과 시 저장
        reviewRepository.save(review);
    }
}