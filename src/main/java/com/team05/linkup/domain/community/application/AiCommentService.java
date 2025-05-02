package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Community;

public interface AiCommentService {
    void createCommunityWithAiComment(Community community) throws Exception;
}
