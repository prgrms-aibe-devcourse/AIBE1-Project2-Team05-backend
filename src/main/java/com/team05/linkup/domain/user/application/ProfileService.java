package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.ProfilePageDTO;
import com.team05.linkup.domain.user.infrastructure.AreaRepository;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ProfileService {

    private static final Logger logger = LogManager.getLogger();
    private final AreaRepository areaRepository;

    public ProfilePageDTO getProfile(User user) {

        String areaName = areaRepository.findById(user.getAreaId())
                .map(area -> area.getAreaName())
                .orElse(null);

        boolean isCurrentUser = isCurrentUser(user);

        return ProfilePageDTO.builder()
                .id(user.getId())
                .nickname(user.getNickname())
                .profileImageUrl(user.getProfileImageUrl())
                .role(user.getRole().name())
                .tag(user.getProfileTag())
                .interest(user.getInterest().getDisplayName())
                .area(areaName)
                .introduction(user.getIntroduction())
                .me(isCurrentUser) // 현재 사용자와 비교해 설정 (예: SecurityContext에서 가져오기)
                .build();
    }

    private static boolean isCurrentUser(User user) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String currentProviderId = null;
        if (principal instanceof String) {
            currentProviderId = (String) principal;
        }
        logger.debug("사용자 provider Id: {}, 프로필 provider ID: {}", currentProviderId, user.getProviderId());
        return currentProviderId != null && currentProviderId.equals(user.getProviderId());
    }
}