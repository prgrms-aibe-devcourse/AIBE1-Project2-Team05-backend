package com.team05.linkup.common.oauth.jwtAssistant;


import com.team05.linkup.domain.User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class GoogleOAuth2Strategy implements OAuth2ProviderStrategy {
    @Override
    public String extractProviderId(OAuth2User oAuth2User) {
        return oAuth2User.getAttribute("sub");
    }

    @Override
    public Map<String, Object> buildUserAttributes(User user) {
        return Map.of("sub", user.getProviderId(),
                "name",user.getName(),
                "picture", user.getProfileImageUrl());
    }
}