package com.team05.linkup.domain.user.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class MatchingStatusUpdateRequest {
    private Boolean matchStatus; // true: 매칭 받기, false: 받지 않음
}
