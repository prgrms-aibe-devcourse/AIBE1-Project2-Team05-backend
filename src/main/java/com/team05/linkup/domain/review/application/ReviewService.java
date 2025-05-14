package com.team05.linkup.domain.review.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.review.domain.Review;
import com.team05.linkup.domain.review.dto.*;
import com.team05.linkup.domain.review.infrastructure.ReviewRepository;
import com.team05.linkup.domain.user.application.ProfileService;
import com.team05.linkup.domain.user.domain.User;
import jakarta.validation.ConstraintViolation;
import jakarta.validation.ConstraintViolationException;
import jakarta.validation.Validator;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.ZoneOffset;
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
    private final ProfileService profileService;
    private final Validator validator;

    public List<MyCompletedMentoringDTO> getCompletedMentoringSessions(User user) {
        // userId와 상태가 COMPLETED인 멘토링 세션 조회
        List<MentoringSessions> completedSessionsWithoutReview = mentoringRepository.findCompletedSessionsWithoutReview(user.getId());

        // 디버그용
        logger.debug(completedSessionsWithoutReview);
        completedSessionsWithoutReview.forEach(session -> {
            logger.debug("Mentoring Session ID: " + session.getId());
            logger.debug("Mentor Name: " + session.getMentor().getName());
        });

        // DTO로 변환
        return completedSessionsWithoutReview.stream()
                .map(session -> MyCompletedMentoringDTO.builder()
                        .sessionId(session.getId())
                        .mentorNickname(session.getMentor().getNickname())
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
                .reviewId(review.getId())
                .title(review.getTitle())
                .content(review.getContent())
                .star(review.getStar())
                .interest(review.getInterest())
                .mentorNickname(session.getMentor().getNickname())
                .profileImageUrl(session.getMentor().getProfileImageUrl())
                .createdAt(review.getCreatedAt().toInstant().atZone(ZoneOffset.UTC).toString())
                .build();
    }

    public void updateReview(User user, String reviewId, ReviewUpdateDTO reviewUpdateDTO) {
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
        Set<ConstraintViolation<ReviewUpdateDTO>> violations = validator.validate(reviewUpdateDTO);
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
                .title(reviewUpdateDTO.getTitle()) // 제목 업데이트
                .content(reviewUpdateDTO.getContent()) // 내용 업데이트
                .star(reviewUpdateDTO.getStar()) // 별점 업데이트
                .interest(reviewUpdateDTO.getInterest()) // 관심사 업데이트
                .build();

        reviewRepository.save(updatedReview);
    }

    public void deleteReview(User user, String reviewId) {
        // 1. 리뷰 존재 여부 확인
        Review review = reviewRepository.findById(reviewId)
                .orElseThrow(() -> new IllegalArgumentException("리뷰를 찾을 수 없습니다."));

        // 2. 멘토링 세션 조회
        MentoringSessions session = mentoringRepository.findMentoringSessionById(review.getMentoringSessionId())
                .orElseThrow(() -> new IllegalArgumentException("멘토링 세션을 찾을 수 없습니다."));

        // 3. 권한 확인
        if (!session.getMentee().getId().equals(user.getId())) {
            throw new IllegalStateException("리뷰 삭제 권한이 없습니다.");
        }

        // 4. 리뷰 삭제
        reviewRepository.delete(review);
    }

    @Transactional(readOnly = true)
    public Page<ReviewResponseDTO> getReviewHistory(User user, UserPrincipal userPrincipal, int page, int size) {
        // 1. 현재 사용자가 요청한 사용자와 동일한지 확인
        if (!profileService.isCurrentUser(user, userPrincipal)) {
            throw new IllegalStateException("리뷰 조회 권한이 없습니다.");
        }

        // 2. 사용자의 ID로 멘토링 세션 조회 (멘토, 멘티 정보 함께 로딩)
        List<MentoringSessions> sessions = mentoringRepository.findByMenteeIdWithMentorAndMentee(user.getId());

        // 3. 멘토링 세션 ID를 기준으로 리뷰 조회
        Pageable pageable = PageRequest.of(page, size);
        Page<Review> reviews = reviewRepository.findByMentoringSessionIdIn(
                sessions.stream().map(MentoringSessions::getId).collect(Collectors.toList()),
                pageable
        );
        logger.debug(reviews);


        // 4. 리뷰 엔티티를 DTO로 변환
        return reviews.map(review -> {
            MentoringSessions session = sessions.stream()
                    .filter(s -> s.getId().equals(review.getMentoringSessionId()))
                    .findFirst()
                    .orElseThrow(() -> new IllegalArgumentException("멘토링 세션을 찾을 수 없습니다."));

            return ReviewResponseDTO.builder()
                    .reviewId(review.getId())
                    .title(review.getTitle())
                    .content(review.getContent())
                    .star(review.getStar())
                    .interest(review.getInterest())
                    .mentorNickname(session.getMentor().getNickname()) // 멘토 이름 추가
                    .profileImageUrl(session.getMentor().getProfileImageUrl()) // 멘토 프로필 이미지 URL 추가
                    .createdAt(review.getCreatedAt().toInstant().atZone(ZoneOffset.UTC).toString()) // 리뷰 작성일을 문자열로 변환
                    .build();
        });
    }

    // 받은 리뷰 조회 메서드 (멘토만 대상)
    public List<ReceivedReviewDTO> getReviewsForMentor(String mentorId, int limit) {
        // 쿼리 결과 받아오기
        List<Object[]> rawResults = reviewRepository.findReceivedReviewsByMentorId(mentorId, limit);

        // DTO로 매핑
        return rawResults.stream()
                .map(obj -> ReceivedReviewDTO.builder()
                        .reviewerName((String) obj[0])  // 리뷰 작성자 이름
                        .reviewerProfileImageUrl((String) obj[1])   //  리뷰 작성자 프로필 사진
                        .reviewDate(((Timestamp) obj[2]).toInstant().atZone(ZoneOffset.UTC).toString())
                        .star(BigDecimal.valueOf(((Number) obj[3]).doubleValue()))  // 별점
                        .content((String) obj[4])   // 리뷰 내용
                        .build())
                .collect(Collectors.toList());
    }

    public List<ReceivedReviewDTO> getReceivedReviewsWithPaging(String mentorId, int page, int size) {
        int offset = (page - 1) * size;
        List<Object[]> rawResults = reviewRepository.findReceivedReviewsByMentorIdWithPaging(mentorId, offset, size);

        return rawResults.stream()
                .map(obj -> ReceivedReviewDTO.builder()
                        .reviewerName((String) obj[0])
                        .reviewerProfileImageUrl((String) obj[1])
                        .reviewDate(((Timestamp) obj[2]).toInstant().atZone(ZoneOffset.UTC).toString())
                        .star(BigDecimal.valueOf(((Number) obj[3]).doubleValue()))
                        .content((String) obj[4])
                        .build())
                .collect(Collectors.toList());
    }


    // 받은 리뷰 페이징 조회 메서드 (멘토 전용)
    @Transactional(readOnly = true)
    public Page<ReceivedReviewDTO> getReceivedReviewsPaged(String mentorId, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);

        Page<Object[]> rawResults = reviewRepository.findReceivedReviewsByMentorIdPaged(mentorId, pageable);

        return rawResults.map(obj -> ReceivedReviewDTO.builder()
                .reviewerName((String) obj[0])
                .reviewerProfileImageUrl((String) obj[1])
                .reviewDate(((Timestamp) obj[2]).toInstant().atZone(ZoneOffset.UTC).toString())
                .star(BigDecimal.valueOf(((Number) obj[3]).doubleValue()))
                .content((String) obj[4])
                .build()
        );
    }


}