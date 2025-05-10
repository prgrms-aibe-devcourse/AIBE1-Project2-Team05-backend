package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ActivityTime {
    WEEKDAY_MORNING("평일 오전"),
    WEEKDAY_AFTERNOON("평일 오후"),
    WEEKDAY_EVENING("평일 저녁"),
    WEEKEND_MORNING("주말 오전"),
    WEEKEND_AFTERNOON("주말 오후"),
    WEEKEND_EVENING("주말 저녁");

    private final String displayName;
}
