package com.team05.linkup.common.oauth.userInfoAssistant;

import lombok.RequiredArgsConstructor;

import java.util.Map;

@RequiredArgsConstructor
public class KakaoOAuth2UserInfo implements Oauth2UserInfo{
    private final Map<String, Object> attributes;

    @Override
    public String getId() {
        return (String) attributes.get("id");
    }

    @Override
    public String getName() {
        return (String) ((Map) attributes.get("properties")).get("nickname");
    }

    @Override
    public String getImageUrl() {
        return (String) ((Map) attributes.get("properties")).get("profile_image");
    }
}
