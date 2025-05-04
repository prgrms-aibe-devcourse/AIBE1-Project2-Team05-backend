package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;

@Service
@RequiredArgsConstructor
@Transactional
public class ModifyRoleServiceImpl implements ModifyRoleService {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;

    @Override
    public void modifyRole(UserPrincipal userPrincipal, Role role) throws Exception {
        try {
            // 사용자 조회
            User user = userRepository.findByProviderAndProviderId(userPrincipal.provider(),userPrincipal.providerId())
                    .orElseThrow(() -> new UserNotfoundException("사용자를 찾을 수 없습니다."));

            // ROLE_TEMP 검증
            if (user.getRole() != Role.ROLE_TEMP) {
                throw new IllegalStateException("ROLE_TEMP 상태인 사용자만 역할을 변경할 수 있습니다.");
            }

            Authentication currentAuth = SecurityContextHolder.getContext().getAuthentication();

            if (currentAuth != null) {
                // 새로운 권한 정보 생성
                Collection<GrantedAuthority> updatedAuthorities = new ArrayList<>();
                updatedAuthorities.add(new SimpleGrantedAuthority(role.toString()));

                // 새로운 인증 객체 생성 (원래 principal, credentials, 새 권한 정보 포함)
                Authentication newAuth = new UsernamePasswordAuthenticationToken(
                        userPrincipal,
                        currentAuth.getCredentials(),
                        updatedAuthorities
                );

                userRepository.updateUserRole(user.getId(), role);
                SecurityContextHolder.getContext().setAuthentication(newAuth);
            }
        } catch (Exception e) {
            logger.error("Error updating role: {}", e.getMessage());
            throw new Exception("Error updating role: " + e.getMessage(), e);
        }
    }
}
