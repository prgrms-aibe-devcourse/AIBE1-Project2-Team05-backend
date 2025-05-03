package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.AiComment;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunityCreatedEventDTO;
import com.team05.linkup.domain.community.infrastructure.AiCommentRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.event.EventListener;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.transaction.event.TransactionalEventListener;

import static org.springframework.transaction.event.TransactionPhase.AFTER_COMMIT;

@Service
@RequiredArgsConstructor
public class AiCommentServiceImpl implements AiCommentService{
    private final AiCommentRepository aiCommentRepository;
    private final GeminiServiceImpl geminiService;

    @Override
    @EventListener
    @TransactionalEventListener(phase = AFTER_COMMIT)
    @Async
    public void handleCommunityCreated(CommunityCreatedEventDTO event) throws Exception {
        try {
            if (CommunityCategory.QUESTION.equals(event.community().getCategory())) {
                String content = event.community().getContent();
                String response = geminiService.getGeminiResponse(content);
                AiComment aiComment = AiComment.builder()
                                    .community(event.community())
                                    .content(response).build();
                aiCommentRepository.save(aiComment);
            }
        }catch (Exception e) {
            throw new Exception("Error in generateComment: " + e.getMessage(), e);
        }
    }
}
