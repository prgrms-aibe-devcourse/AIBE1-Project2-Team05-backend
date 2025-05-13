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
public class ReviewUpdateDTO {

    private String title;  // 리뷰 제목
    private String content;  // 리뷰 내용

    @DecimalMin(value = "0.0", inclusive = true)   // 별점 최소값 (0.0 이상)
    @DecimalMax(value = "5.0", inclusive = true)   // 별점 최대값 (5.0 이하)
    private BigDecimal star;  // 리뷰 별점 (0.0 ~ 5.0)

    private Interest interest;  // 관심사 (ENUM)

    // 생성된 DTO 객체에서 엔티티로 변환할 수 있는 메소드
    public static Review toEntity(ReviewUpdateDTO dto, String reviewId) {
        return Review.builder()
                .id(reviewId)
                .title(dto.getTitle())
                .content(dto.getContent())
                .star(dto.getStar())
                .interest(dto.getInterest())
                .build();
    }
}
