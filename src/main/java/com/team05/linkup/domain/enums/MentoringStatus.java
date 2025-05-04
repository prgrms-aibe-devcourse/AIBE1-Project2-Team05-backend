package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum MentoringStatus {
    IN_PROGRESS("진행중"),  // 진행 중 상태
    COMPLETED("완료");      // 완료 상태

    private final String statusName;
}
