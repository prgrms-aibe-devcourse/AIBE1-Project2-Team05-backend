package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.CommentService;
import com.team05.linkup.domain.community.dto.CommentDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;

/**
 * 커뮤니티 게시글 댓글 관련 요청을 처리하는 컨트롤러.
 * 댓글 생성, 조회, 수정, 삭제 기능을 제공합니다.
 */

@Slf4j
@RestController
@RequestMapping("/v1/community")
@RequiredArgsConstructor
@Tag(name = "댓글 API", description = "댓글 관련 API")
public class CommentController {

    private final CommentService commentService;

    /**
     * 게시글의 댓글 목록을 페이징하여 조회합니다.
     * 무한 스크롤 구현을 위한 Slice 타입을 반환합니다.
     *
     * @param communityId 댓글을 조회할 게시글 ID
     * @param pageable 페이징 정보 (기본값: size=20, sort=createdAt)
     * @return 댓글 목록과 다음 페이지 존재 여부
     */
    @GetMapping("/{postId}/comments")
    @Operation(summary = "댓글 목록 조회", description = "게시글의 댓글 목록을 조회합니다. 페이징을 지원하여 무한 스크롤 구현에 적합합니다.")
    public ResponseEntity<ApiResponse<CommentDto.SliceResponse>> getComments(
            @PathVariable("postId") String communityId,
            @PageableDefault(size = 20, sort = "createdAt") Pageable pageable) {

        log.info("댓글 목록 조회 요청: communityId={}, page={}, size={}",
                communityId, pageable.getPageNumber(), pageable.getPageSize());

        try {
            Slice<CommentDto.Response> comments = commentService.getCommentsSlice(communityId, pageable);
            log.info("댓글 목록 조회 성공: communityId={}, 댓글 수={}, 다음 페이지 여부={}",
                    communityId, comments.getContent().size(), comments.hasNext());

            return ResponseEntity.ok(ApiResponse.success(
                    new CommentDto.SliceResponse(comments.getContent(), comments.hasNext())
            ));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            log.error("댓글 목록 조회 실패 (EntityNotFoundException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            log.error("댓글 목록 조회 중 예외 발생: {}", e.getMessage(), e);
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "댓글 목록 조회 중 오류가 발생했습니다."));
        }
    }

    /**
     * 특정 부모 댓글의 자식 댓글 목록을 페이징하여 조회합니다.
     * 무한 스크롤 구현을 위한 Slice 타입을 반환합니다.
     *
     * @param parentId 자식 댓글을 조회할 부모 댓글 ID
     * @param pageable 페이징 정보 (기본값: size=10, sort=createdAt)
     * @return 자식 댓글 목록과 다음 페이지 존재 여부
     */
    @GetMapping("/comments/{parentId}/replies")
    @Operation(summary = "답글 목록 조회", description = "부모 댓글에 대한 답글 목록을 조회합니다. 페이징을 지원하여 무한 스크롤 구현에 적합합니다.")
    public ResponseEntity<ApiResponse<CommentDto.SliceResponse>> getChildComments(
            @PathVariable("parentId") String parentId,
            @PageableDefault(size = 10, sort = "createdAt") Pageable pageable) {

        log.info("답글 목록 조회 요청: parentId={}, page={}, size={}",
                parentId, pageable.getPageNumber(), pageable.getPageSize());

        try {
            Slice<CommentDto.Response> comments = commentService.getChildCommentsSlice(parentId, pageable);
            log.info("답글 목록 조회 성공: parentId={}, 답글 수={}, 다음 페이지 여부={}",
                    parentId, comments.getContent().size(), comments.hasNext());

            return ResponseEntity.ok(ApiResponse.success(
                    new CommentDto.SliceResponse(comments.getContent(), comments.hasNext())
            ));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            log.error("답글 목록 조회 실패 (EntityNotFoundException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            log.error("답글 목록 조회 중 예외 발생: {}", e.getMessage(), e);
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "답글 목록 조회 중 오류가 발생했습니다."));
        }
    }

    /**
     * 게시글에 새 댓글을 작성합니다.
     *
     * @param userPrincipal 인증된 사용자 정보
     * @param communityId 댓글을 작성할 게시글 ID
     * @param request 댓글 내용을 포함한 요청 데이터
     * @return 생성된 댓글 정보
     */
    @PostMapping("/{postId}/comments")
    @Operation(summary = "댓글 작성", description = "게시글에 댓글을 작성합니다.")
    public ResponseEntity<ApiResponse<CommentDto.Response>> createComment(
            @AuthenticationPrincipal UserPrincipal userPrincipal,
            @PathVariable("postId") String communityId,
            @Valid @RequestBody CommentDto.Request request) {

        log.info("댓글 작성 요청: communityId={}, parentCommentId={}, 요청 데이터: {}",
                communityId, request.getParentCommentId(), request);

        if (userPrincipal == null) {
            log.warn("댓글 작성 실패: 인증되지 않은 사용자");
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED, "로그인이 필요합니다."));
        }

        try {
            CommentDto.Response response = commentService.createComment(userPrincipal, communityId, request);
            log.info("댓글 작성 성공: commentId={}, communityId={}", response.getId(), communityId);
            return ResponseEntity.ok(ApiResponse.created(response));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            log.error("댓글 작성 실패 (EntityNotFoundException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            log.error("댓글 작성 중 예외 발생: {}", e.getMessage(), e);
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "댓글 작성 중 오류가 발생했습니다."));
        }
    }

    /**
     * 기존 댓글을 수정합니다.
     * 자신이 작성한 댓글만 수정할 수 있습니다.
     *
     * @param userPrincipal 인증된 사용자 정보
     * @param communityId 댓글이 속한 게시글 ID
     * @param commentId 수정할 댓글 ID
     * @param request 수정할 댓글 내용
     * @return 수정된 댓글 정보
     */
    @PatchMapping("/comments/{postId}/{commentId}")
    @Operation(summary = "댓글 수정", description = "댓글을 수정합니다.")
    public ResponseEntity<ApiResponse<CommentDto.Response>> updateComment(
            @AuthenticationPrincipal UserPrincipal userPrincipal,
            @PathVariable("postId") String communityId,
            @PathVariable("commentId") String commentId,
            @Valid @RequestBody CommentDto.Request request) {

        log.info("댓글 수정 요청: communityId={}, commentId={}, 요청 데이터: {}",
                communityId, commentId, request);

        if (userPrincipal == null) {
            log.warn("댓글 수정 실패: 인증되지 않은 사용자");
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED, "로그인이 필요합니다."));
        }

        try {
            CommentDto.Response response = commentService.updateComment(userPrincipal, communityId, commentId, request);
            log.info("댓글 수정 성공: commentId={}", commentId);
            return ResponseEntity.ok(ApiResponse.success(response));
        } catch (IllegalArgumentException e) {
            log.error("댓글 수정 실패 (IllegalArgumentException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.NO_EDIT_PERMISSION, e.getMessage()));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            log.error("댓글 수정 실패 (EntityNotFoundException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            log.error("댓글 수정 중 예외 발생: {}", e.getMessage(), e);
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "댓글 수정 중 오류가 발생했습니다."));
        }
    }

    /**
     * 댓글을 삭제합니다.
     * 자신이 작성한 댓글만 삭제할 수 있습니다.
     *
     * @param userPrincipal 인증된 사용자 정보
     * @param communityId 댓글이 속한 게시글 ID
     * @param commentId 삭제할 댓글 ID
     * @return 성공 응답
     */
    @DeleteMapping("/comments/{postId}/{commentId}")
    @Operation(summary = "댓글 삭제", description = "댓글을 삭제합니다.")
    public ResponseEntity<ApiResponse<Void>> deleteComment(
            @AuthenticationPrincipal UserPrincipal userPrincipal,
            @PathVariable("postId") String communityId,
            @PathVariable("commentId") String commentId) {

        log.info("댓글 삭제 요청: communityId={}, commentId={}", communityId, commentId);

        if (userPrincipal == null) {
            log.warn("댓글 삭제 실패: 인증되지 않은 사용자");
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.UNAUTHORIZED, "로그인이 필요합니다."));
        }

        try {
            commentService.deleteComment(userPrincipal, communityId, commentId);
            log.info("댓글 삭제 성공: commentId={}", commentId);
            return ResponseEntity.ok(ApiResponse.success());
        } catch (IllegalArgumentException e) {
            log.error("댓글 삭제 실패 (IllegalArgumentException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.NO_DELETE_PERMISSION, e.getMessage()));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            log.error("댓글 삭제 실패 (EntityNotFoundException): {}", e.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.COMMENT_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            log.error("댓글 삭제 중 예외 발생: {}", e.getMessage(), e);
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "댓글 삭제 중 오류가 발생했습니다."));
        }
    }
}