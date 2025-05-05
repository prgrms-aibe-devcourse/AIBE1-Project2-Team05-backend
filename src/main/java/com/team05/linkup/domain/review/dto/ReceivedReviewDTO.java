package com.team05.linkup.domain.review.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.math.BigDecimal;

@Getter
@AllArgsConstructor
@Builder
public class ReceivedReviewDTO {
    private String reviewerName;             // 리뷰 작성자 이름
    private String reviewerProfileImageUrl;  // 리뷰 작성자 프로필 이미지
    private String reviewDate;               // 리뷰 작성일 (yyyy-MM-dd 형식 문자열)
    private BigDecimal star;                 // 별점 (0.0 ~ 5.0)
    private String content;                  // 리뷰 본문 내용
}
