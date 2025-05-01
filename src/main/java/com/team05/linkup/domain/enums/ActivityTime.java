package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ActivityTime {
    WEEKDAY_MORNING("평일오전"),
    WEEKDAY_AFTERNOON("평일오후"),
    WEEKDAY_EVENING("평일저녁"),
    WEEKEND_MORNING("주말오전"),
    WEEKEND_AFTERNOON("주말오후"),
    WEEKEND_EVENING("주말저녁");

    private final String displayName;

    public static ActivityTime fromDisplayName(String name) {
        for (ActivityTime time : ActivityTime.values()) {
            if (time.displayName.equals(name)) {
                return time;
            }
        }
        throw new IllegalArgumentException("Invalid activity time: " + name);
    }
}
