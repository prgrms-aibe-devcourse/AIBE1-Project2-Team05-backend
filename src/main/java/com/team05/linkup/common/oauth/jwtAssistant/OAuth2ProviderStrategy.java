package com.team05.linkup.common.oauth.jwtAssistant;


import com.team05.linkup.domain.User;
import org.springframework.security.oauth2.core.user.OAuth2User;

import java.util.Map;

public interface OAuth2ProviderStrategy {
    String extractProviderId(OAuth2User oAuth2User);
    Map<String, Object> buildUserAttributes(User user);
}