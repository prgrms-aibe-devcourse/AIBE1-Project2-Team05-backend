package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ModifyRoleServiceImpl implements ModifyRoleService {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;

    @Override
    public void modifyRole(String userId, String role) throws Exception {
        try {
            userRepository.updateUserRole(userId, role);
            logger.debug("Role updated for user: {}", userId);
        } catch (UserNotfoundException e) {
            logger.error("User not found: {}", e.getMessage());
            throw new UserNotfoundException("User not found: " + e.getMessage());
        } catch (Exception e) {
            logger.error("Error updating role: {}", e.getMessage());
            throw new Exception("Error updating role: " + e.getMessage(), e);
        }
    }
}
