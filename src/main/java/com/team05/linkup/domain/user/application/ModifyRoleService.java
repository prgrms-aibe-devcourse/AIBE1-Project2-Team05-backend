package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.enums.Role;

public interface ModifyRoleService {
    void modifyRole(String provider, String providerId, Role role) throws Exception;
}
