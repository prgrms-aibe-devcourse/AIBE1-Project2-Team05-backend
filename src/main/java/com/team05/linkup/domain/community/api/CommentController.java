package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.domain.community.dto.CommentDto;
import com.team05.linkup.domain.community.application.CommentService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/v1/community")
@RequiredArgsConstructor
@Tag(name = "댓글 API", description = "댓글 관련 API")
public class CommentController {

    private final CommentService commentService;

    @GetMapping("/{postId}/comments")
    @Operation(summary = "댓글 목록 조회", description = "게시글의 댓글 목록을 조회합니다.")
    public ApiResponse<List<CommentDto.Response>> getComments(
            @PathVariable("postId") String communityId) {
        return ApiResponse.success(commentService.getCommentsByCommunityId(communityId));
    }

    @PostMapping("/{postId}/comments")
    @Operation(summary = "댓글 작성", description = "게시글에 댓글을 작성합니다.")
    public ApiResponse<CommentDto.Response> createComment(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId,
            @RequestBody CommentDto.Request request) {
        return ApiResponse.created(commentService.createComment(userId, communityId, request));
    }

    @PatchMapping("/comments/{postId}/{commentId}")
    @Operation(summary = "댓글 수정", description = "댓글을 수정합니다.")
    public ApiResponse<CommentDto.Response> updateComment(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId,
            @PathVariable("commentId") String commentId,
            @RequestBody CommentDto.Request request) {
        return ApiResponse.success(commentService.updateComment(userId, communityId, commentId, request));
    }

    @DeleteMapping("/comments/{postId}/{commentId}")
    @Operation(summary = "댓글 삭제", description = "댓글을 삭제합니다.")
    public ApiResponse<?> deleteComment(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId,
            @PathVariable("commentId") String commentId) {
        commentService.deleteComment(userId, communityId, commentId);
        return ApiResponse.success();
    }
}