package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.enums.Role;
import org.springframework.security.core.Authentication;

public interface ModifyRoleService {
    Authentication modifyRole(UserPrincipal userPrincipal, Role role) throws Exception;
}
