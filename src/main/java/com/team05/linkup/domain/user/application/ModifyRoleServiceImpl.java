package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Transactional
public class ModifyRoleServiceImpl implements ModifyRoleService {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;

    @Override
    public void modifyRole(String providerId, Role role) throws Exception {
        try {
            userRepository.updateUserRole(providerId, role);
            logger.debug("Role updated for user: {}", providerId);
        } catch (UserNotfoundException e) {
            logger.error("User not found: {}", e.getMessage());
            throw new UserNotfoundException("User not found: " + e.getMessage());
        } catch (Exception e) {
            logger.error("Error updating role: {}", e.getMessage());
            throw new Exception("Error updating role: " + e.getMessage(), e);
        }
    }
}
