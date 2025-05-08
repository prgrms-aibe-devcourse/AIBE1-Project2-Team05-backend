package com.team05.linkup.common.dto;

import com.team05.linkup.domain.user.domain.User;

public record UserWithStatus(User user, boolean isNewUser) {
}
