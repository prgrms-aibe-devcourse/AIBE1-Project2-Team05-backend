package com.team05.linkup.domain.mentoring.dto;

import java.util.List;

public record AiMatchingRequestDTO(String profileTag, List<OtherProfile> otherProfiles) {
    public record OtherProfile(
                                Integer areacode,
                                String areaName,      // 추가
                                Integer sigungucode,  // 추가
                                String sigunguname,   // 추가
                                String nickname,
                                String profileTag,
                                String profileImageUrl,
                                String providerId
                               ) {}
}
