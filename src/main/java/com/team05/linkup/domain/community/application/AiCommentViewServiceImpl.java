package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.dto.AiCommentResponseDTO;
import com.team05.linkup.domain.community.infrastructure.CustomAiCommentRepositoryImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AiCommentViewServiceImpl implements AiCommentViewService {
    private final CustomAiCommentRepositoryImpl customAiCommentRepository;
    @Override
    public AiCommentResponseDTO getAiComment(String communityId) throws Exception {
        String comment = customAiCommentRepository.findCommentByText(communityId);
        return new AiCommentResponseDTO(comment);
    }
}
