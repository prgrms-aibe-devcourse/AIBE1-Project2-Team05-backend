package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.AiCommentViewServiceImpl;
import com.team05.linkup.domain.community.dto.AiCommentResponseDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/community")
@Tag(name = "제미니 이벤트 리스너 댓글", description = "제미니 테스트하는 API 입니다")
public class AiCommentController {
    private final AiCommentViewServiceImpl aiCommentService;

    @GetMapping("/ai/{communityId}")
    @Operation(summary = "제미니 답변", description = "이벤트 리스너로 등록된 답변")
    public ResponseEntity<ApiResponse<AiCommentResponseDTO>> AiViewController(@AuthenticationPrincipal UserPrincipal userPrincipal,
                                                                              @PathVariable String communityId) throws Exception {

        if (userPrincipal == null) {
            return ResponseEntity.status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }
        AiCommentResponseDTO data = aiCommentService.getAiComment(communityId);
        return ResponseEntity.ok(ApiResponse.success(data));
    }
}
