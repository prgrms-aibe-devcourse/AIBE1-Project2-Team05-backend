package com.team05.linkup.domain.review.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class MyCompletedMentoringDTO {
    private String sessionId;
    private String mentorName;
}
