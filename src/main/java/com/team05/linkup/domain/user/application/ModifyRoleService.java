package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.enums.Role;

public interface ModifyRoleService {
    void modifyRole(UserPrincipal userPrincipal, Role role) throws Exception;
}
