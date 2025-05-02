package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.AiComment;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.infrastructure.AiCommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AiCommentServiceImpl implements AiCommentService{
    private final AiCommentRepository aiCommentRepository;
    private final CommunityRepository communityRepository;
    private final GeminiServiceImpl geminiService;

    @Override
    @Transactional
    public void createCommunityWithAiComment(Community community) throws Exception {
        try {
            if (CommunityCategory.QUESTION.equals(community.getCategory())) {
                String content = community.getContent();
                String response = geminiService.getGeminiResponse(content);
                AiComment aiComment = AiComment.builder()
                                    .community(community)
                                    .content(response).build();
                aiCommentRepository.save(aiComment);
            }
        }catch (Exception e) {
            throw new Exception("Error in generateComment: " + e.getMessage(), e);
        }
    }
}
