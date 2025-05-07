package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.dto.AiCommentResponseDTO;
import com.team05.linkup.domain.community.infrastructure.CustomAiCommentRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AiCommentViewServiceImpl implements AiCommentViewService {
    private final CustomAiCommentRepositoryImpl customAiCommentRepository;
    private static final Logger logger = LogManager.getLogger(AiCommentViewServiceImpl.class);
    @Override
    public AiCommentResponseDTO getAiComment(String communityId) throws Exception {
        try {
            String comment = customAiCommentRepository.findCommentByText(communityId);
            return new AiCommentResponseDTO(comment);
        } catch (Exception e) {
            logger.error("Error in getAiComment: {}", e.getMessage());
            throw new Exception("Error in getAiComment: " + e.getMessage(), e);
        }

    }
}
