package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.common.oauth.jwtAssistant.OAuth2ProviderStrategy;
import com.team05.linkup.common.oauth.jwtAssistant.OAuth2ProviderStrategyFactory;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.client.authentication.OAuth2AuthenticationToken;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

@Service
@RequiredArgsConstructor
@Transactional
public class ModifyRoleServiceImpl implements ModifyRoleService {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final OAuth2ProviderStrategyFactory strategyFactory;

    @Override
    public Authentication modifyRole(UserPrincipal userPrincipal, Role role) throws Exception {
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

                OAuth2ProviderStrategy strategy = strategyFactory.getStrategy(userPrincipal.provider());
                Map<String, Object> attributes = strategy.buildUserAttributes(user);

                OAuth2User oAuth2User = new DefaultOAuth2User(
                        updatedAuthorities,
                        attributes,
                        user.getUserNameAttribute()
                );

                // 새로운 인증 객체 생성 (원래 principal, credentials, 새 권한 정보 포함)
                Authentication newAuth = new OAuth2AuthenticationToken(
                        oAuth2User,
                        updatedAuthorities,
                        userPrincipal.provider()
                );

                userRepository.updateUserRole(user.getId(), role);
                SecurityContextHolder.getContext().setAuthentication(newAuth);
                return newAuth;
            }
            return null;
        } catch (Exception e) {
            logger.error("Error updating role: {}", e.getMessage());
            throw new Exception("Error updating role: " + e.getMessage(), e);
        }
    }
}
