package com.team05.linkup.domain.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class InterestCountDTO {
    private String interest; // e.g., WEB_DEV
    private String displayName; // e.g., "웹개발"
    private Long count;         // e.g., 18
}
