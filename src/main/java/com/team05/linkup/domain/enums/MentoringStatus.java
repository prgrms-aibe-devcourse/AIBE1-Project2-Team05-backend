package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum MentoringStatus {
    IN_PROGRESS("진행중"),  // 진행 중 상태
    COMPLETED("완료");      // 완료 상태

    private final String statusName;

    // 문자열로부터 MentoringStatus를 반환하는 메서드
    public static MentoringStatus fromStatusName(String name) {
        for (MentoringStatus status : MentoringStatus.values()) {
            if (status.statusName.equals(name)) {
                return status;
            }
        }
        throw new IllegalArgumentException("Invalid status: " + name);
    }
}
