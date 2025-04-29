package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ActivityType {
    ONLINE("온라인"),
    OFFLINE("오프라인"),
    ALL("모두");

    private final String displayName;

    public static ActivityType fromDisplayName(String name) {
        for (ActivityType type : ActivityType.values()) {
            if (type.displayName.equals(name)) {
                return type;
            }
        }
        throw new IllegalArgumentException("Invalid activity type: " + name);
    }
}