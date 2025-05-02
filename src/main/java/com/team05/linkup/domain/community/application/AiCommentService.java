package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Community;

public interface AiCommentService {
    Community generateComment(Community community);
}
