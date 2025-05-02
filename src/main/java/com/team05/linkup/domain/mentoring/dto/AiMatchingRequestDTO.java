package com.team05.linkup.domain.mentoring.dto;

import java.util.List;

public record AiMatchingRequestDTO(String profileTag, List<OtherProfile> otherProfiles) {
    public record OtherProfile(
                                Integer areaId,
                                String nickname,
                               String profileTag,
                               String profileImageUrl,
                                String providerId
                               ) {}
}
