package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.domain.User;
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
    public void modifyRole(String provider, String providerId, Role role) throws Exception {
        try {
            // 사용자 조회
            User user = userRepository.findByProviderAndProviderId(provider,providerId)
                    .orElseThrow(() -> new UserNotfoundException("사용자를 찾을 수 없습니다."));

            // ROLE_TEMP 검증
            if (user.getRole() != Role.ROLE_TEMP) {
                throw new IllegalStateException("ROLE_TEMP 상태인 사용자만 역할을 변경할 수 있습니다.");
            }

            userRepository.updateUserRole(user.getId(), role);
            logger.debug("Role updated for user: {}", providerId);
        } catch (Exception e) {
            logger.error("Error updating role: {}", e.getMessage());
            throw new Exception("Error updating role: " + e.getMessage(), e);
        }
    }
}
