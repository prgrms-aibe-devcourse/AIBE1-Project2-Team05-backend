package com.team05.linkup.domain.review.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.enums.Interest;
import jakarta.persistence.*;
import jakarta.validation.constraints.DecimalMax;
import jakarta.validation.constraints.DecimalMin;
import lombok.*;

import java.math.BigDecimal;

@Entity
@Table(name = "review")
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
public class Review extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;  // 리뷰 ID (UUID)

    @Column(nullable = false, length = 36)
    private String mentoringSessionId;  // 멘토링 세션 ID (ID만 저장)

    @Column(nullable = false, length = 100)
    private String title;  // 리뷰 제목

    @Column(nullable = false, columnDefinition = "LONGTEXT")
    private String content;  // 리뷰 내용

    @Column(nullable = false, precision = 2, scale = 1)
    @DecimalMin(value = "0.0", inclusive = true)
    @DecimalMax(value = "5.0", inclusive = true)
    private BigDecimal star; // 리뷰 별점 (0.0 ~ 5.0)

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Interest interest;


}