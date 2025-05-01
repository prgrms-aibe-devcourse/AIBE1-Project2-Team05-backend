package com.team05.linkup.domain.mentoring.dto;

import java.util.List;

public record AiMatchingRequestDTO(String profileTag, List<OtherProfile> otherProfiles) {
    public record OtherProfile(String providerId, String tag) {}
}
