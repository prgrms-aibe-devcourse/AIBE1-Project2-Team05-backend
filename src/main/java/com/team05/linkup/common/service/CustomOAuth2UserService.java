package com.team05.linkup.common.service;


import com.team05.linkup.common.oauth.userInfoAssistant.OAuth2UserInfoFactory;
import com.team05.linkup.common.oauth.userInfoAssistant.Oauth2UserInfo;
import com.team05.linkup.common.repository.UserRepository;
import com.team05.linkup.domain.User;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.users.util.RandomNicknameGenerator;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserService;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.OAuth2Error;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Collections;

@Service
@RequiredArgsConstructor
public class CustomOAuth2UserService implements OAuth2UserService<OAuth2UserRequest, OAuth2User> {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final RandomNicknameGenerator randomNicknameGenerator;

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        OAuth2UserService<OAuth2UserRequest, OAuth2User> delegate = new DefaultOAuth2UserService();
        OAuth2User oAuth2User = delegate.loadUser(userRequest);

        String registrationId = userRequest.getClientRegistration().getRegistrationId();
        String userNameAttribute = userRequest.getClientRegistration()
                .getProviderDetails()
                .getUserInfoEndpoint()
                .getUserNameAttributeName();
        Oauth2UserInfo userInfo = OAuth2UserInfoFactory.getOAuth2UserInfo(registrationId, oAuth2User.getAttributes());

        String providerId = userInfo.getId();
        String name = userInfo.getName();
        String profileImage = userInfo.getImageUrl();


        if (registrationId == null || registrationId.isEmpty() || providerId == null || providerId.isEmpty()) {
            logger.error("providerId or registrationId is null or empty");
            throw new OAuth2AuthenticationException(new OAuth2Error("Missing essential user info from OAuth provider"));
        }


        ZonedDateTime utcNow = ZonedDateTime.now(ZoneOffset.UTC);
        User newUser = User.builder()
                .provider(registrationId)
                .providerId(providerId)
                .userNameAttribute(userNameAttribute)
                .name(name)
                .nickname(randomNicknameGenerator.generateNickname())
                .role(Role.TEMP)

                .profileImageUrl(profileImage)
                .build();




        try {
            userRepository.upsertUserByProvider(newUser);
        } catch (Exception e) {
            throw new RuntimeException("유저 저장 중 오류 발생", e);
        }

        return new DefaultOAuth2User(
                Collections.singleton(new SimpleGrantedAuthority(newUser.getRole().toString())),
                oAuth2User.getAttributes(),
                userNameAttribute
        );
    }
}
