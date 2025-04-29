package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Role {
    TEMP("ROLE_TEMP"),
    MENTO("ROLE_MENTO"),
    MENTEE("ROLE_MENTEE");

    private final String roleName;

    public static Role fromRoleName(String name) {
        for (Role role : Role.values()) {
            if (role.roleName.equals(name)) {
                return role;
            }
        }
        throw new IllegalArgumentException("Invalid role: " + name);
    }
}
