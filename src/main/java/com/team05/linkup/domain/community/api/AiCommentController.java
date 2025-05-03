package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.domain.community.application.AiCommentServiceImpl;
import com.team05.linkup.domain.community.application.GeminiServiceImpl;
import com.team05.linkup.domain.community.dto.CommunityCreatedEventDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@Tag(name = "제미니 Api 테스트", description = "제미니 테스트하는 API 입니다")
public class AiCommentController {
    private final AiCommentServiceImpl aiCommentService;

    @GetMapping("/test/gemini")
    @Operation(summary = "제미니 테스트", description = "고정된 응답")
    public ResponseEntity<ApiResponse<CommunityCreatedEventDTO>> testGemini() throws Exception {
        aiCommentService.handleCommunityCreated();
        return ResponseEntity.ok(ApiResponse.success(response));
    }
}
