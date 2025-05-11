package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.mentoring.dto.AiMatchingRequestDTO;

import java.util.List;

public interface CustomerUserRepository{
    List<AiMatchingRequestDTO.OtherProfile> findOtherProfileTagsByProviderId(String provider, String providerId, Interest interest);
}
