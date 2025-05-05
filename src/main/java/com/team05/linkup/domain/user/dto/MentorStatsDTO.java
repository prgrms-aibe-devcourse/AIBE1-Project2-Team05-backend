package com.team05.linkup.domain.user.dto;

import lombok.Builder;
import lombok.Data;

import java.util.List;

// 멘토링 통계 응답용 DTO
@Data
@Builder
public class MentorStatsDTO {
    private Long totalMentoringCount;       // 총 멘토링 수
    private Long ongoingMentoringCount;     // 진행 중 멘토링 수
    private Double averageRating;           // 평균 별점
    private List<InterestCountDTO> mentoringCategories; // 멘토링 분야

}
