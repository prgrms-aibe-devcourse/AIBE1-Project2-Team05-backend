package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.dto.AiCommentResponseDTO;

public interface AiCommentViewService {
    AiCommentResponseDTO getAiComment(String text) throws Exception;
}
