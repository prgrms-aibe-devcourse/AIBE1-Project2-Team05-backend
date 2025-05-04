package com.team05.linkup.domain.user.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class InterestCountDTO {
    private String interest; // e.g., WEB_DEV
    private Long count;         // e.g., 18
}
