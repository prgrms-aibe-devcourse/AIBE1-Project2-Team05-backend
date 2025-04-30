package com.team05.linkup.common.application;

import com.team05.linkup.domain.user.domain.User;

public interface UserService {
    User saveOrUpdateUser(User user);
}
