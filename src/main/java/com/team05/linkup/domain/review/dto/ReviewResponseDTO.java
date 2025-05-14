package com.team05.linkup.domain.review.dto;

import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.review.domain.Review;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;

@Getter
@Builder
public class ReviewResponseDTO {

    private String reviewId;  // 리뷰 ID
    private String title;  // 리뷰 제목
    private String content;  // 리뷰 내용
    private BigDecimal star;  // 리뷰 별점 (0.0 ~ 5.0)
    private Interest interest;  // 관심사 (ENUM)

    private String mentorNickname; // 멘토 이름
    private String profileImageUrl; // 멘토 프로필 이미지 URL
    private String createdAt; // 리뷰 작성일

    // 생성된 DTO 객체에서 엔티티로 변환할 수 있는 메소드
    public static Review toEntity(ReviewResponseDTO dto) {
        return Review.builder()
                .id(dto.getReviewId())
                .title(dto.getTitle())
                .content(dto.getContent())
                .star(dto.getStar())
                .interest(dto.getInterest())
                .build();
    }
}
