package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.dto.CommunityCreatedEventDTO;

public interface AiCommentService {
    void handleCommunityCreated(CommunityCreatedEventDTO event) throws Exception;
}
