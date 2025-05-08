package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.dto.CommentDto;
import com.team05.linkup.domain.community.infrastructure.CommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.domain.SliceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

/**
 * 댓글 관련 비즈니스 로직을 처리하는 서비스 클래스입니다.
 * 댓글 조회, 생성, 수정, 삭제 기능을 제공합니다.
 */
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommentService {

    private final CommentRepository commentRepository;
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository;

    /**
     * 게시글 ID로 모든 댓글을 조회합니다. (페이징 없음)
     * 부모 댓글과 각 부모 댓글의 자식 댓글을 함께 조회합니다.
     *
     * @param communityId 게시글 ID
     * @return 댓글 목록 (부모 댓글과 자식 댓글 포함)
     */
    public List<CommentDto.Response> getCommentsByCommunityId(String communityId) {
        // 부모 댓글만 조회 (parentCommentId가 null인 것)
        List<Comment> parentComments = commentRepository.findParentCommentsByCommunityId(communityId);

        return parentComments.stream()
                .map(parent -> {
                    // 각 부모 댓글의 자식 댓글 조회
                    List<Comment> childComments = commentRepository.findChildCommentsByParentId(parent.getId());
                    return CommentDto.Response.from(parent, childComments);
                })
                .collect(Collectors.toList());
    }

    /**
     * 게시글 ID로 댓글을 페이징하여 조회합니다. (무한 스크롤용)
     * 부모 댓글과 각 부모 댓글의 자식 댓글을 함께 조회합니다.
     *
     * @param communityId 게시글 ID
     * @param pageable 페이징 정보
     * @return 댓글 목록의 슬라이스 (다음 페이지 존재 여부 포함)
     * @throws EntityNotFoundException 게시글이 존재하지 않는 경우
     */
    public Slice<CommentDto.Response> getCommentsSlice(String communityId, Pageable pageable) {
        // 페이지 요청 시, 1개 더 많은 항목을 요청하여 다음 페이지 존재 여부 확인
        Pageable pageWithExtra = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize() + 1,
                pageable.getSort()
        );

        // 게시글 존재 여부 확인
        if (!communityRepository.existsById(communityId)) {
            throw new EntityNotFoundException("게시글을 찾을 수 없습니다.");
        }

        // 부모 댓글만 페이징 조회
        List<Comment> parentComments = commentRepository.findParentCommentsByCommunityIdWithPaging(
                communityId,
                pageWithExtra
        );

        // 다음 페이지 존재 여부 확인
        boolean hasNext = false;
        if (parentComments.size() > pageable.getPageSize()) {
            parentComments.remove(parentComments.size() - 1);
            hasNext = true;
        }

        // 각 부모 댓글에 대한 자식 댓글 조회 (N+1 문제 주의)
        List<CommentDto.Response> responseList = parentComments.stream()
                .map(parent -> {
                    List<Comment> childComments = commentRepository.findChildCommentsByParentId(parent.getId());
                    return CommentDto.Response.from(parent, childComments);
                })
                .collect(Collectors.toList());

        return new SliceImpl<>(responseList, pageable, hasNext);
    }

    /**
     * 특정 부모 댓글의 자식 댓글을 페이징하여 조회합니다.
     * 무한 스크롤 구현을 위한 메서드입니다.
     *
     * @param parentId 부모 댓글 ID
     * @param pageable 페이징 정보
     * @return 댓글 목록의 슬라이스 (다음 페이지 존재 여부 포함)
     * @throws EntityNotFoundException 부모 댓글이 존재하지 않는 경우
     */
    public Slice<CommentDto.Response> getChildCommentsSlice(String parentId, Pageable pageable) {
        // 부모 댓글 존재 여부 확인
        Comment parentComment = commentRepository.findById(parentId)
                .orElseThrow(() -> new EntityNotFoundException("부모 댓글을 찾을 수 없습니다."));

        // 페이지 요청 시, 1개 더 많은 항목을 요청하여 다음 페이지 존재 여부 확인
        Pageable pageWithExtra = PageRequest.of(
                pageable.getPageNumber(),
                pageable.getPageSize() + 1,
                pageable.getSort()
        );

        // 자식 댓글 페이징 조회
        List<Comment> childComments = commentRepository.findChildCommentsByParentIdWithPaging(
                parentId,
                pageWithExtra
        );

        // 다음 페이지 존재 여부 확인
        boolean hasNext = false;
        if (childComments.size() > pageable.getPageSize()) {
            childComments.remove(childComments.size() - 1);
            hasNext = true;
        }

        // 응답 DTO 변환
        List<CommentDto.Response> responseList = childComments.stream()
                .map(child -> CommentDto.Response.from(child, List.of()))
                .collect(Collectors.toList());

        return new SliceImpl<>(responseList, pageable, hasNext);
    }

    /**
     * 새로운 댓글을 생성합니다.
     * 부모 댓글인 경우 순서 번호를 할당합니다.
     *
     * @param userId 사용자 ID
     * @param communityId 게시글 ID
     * @param request 댓글 생성 요청 데이터
     * @return 생성된 댓글 정보
     * @throws EntityNotFoundException 사용자가 존재하지 않는 경우
     */
    @Transactional
    public CommentDto.Response createComment(String userId, String communityId, CommentDto.Request request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        String commentId = UUID.randomUUID().toString();

        Comment comment = Comment.builder()
                .id(commentId)
                .userId(userId)
                .communityId(communityId)
                .commentContent(request.getCommentContent())
                .name(user.getNickname())
                .totalLikeCount(0)
                .parentCommentId(request.getParentCommentId()) // null이면 부모 댓글
                .orderNumber(request.getParentCommentId() == null ? getNextOrderNumber(communityId) : null)
                .build();

        Comment savedComment = commentRepository.save(comment);
        return CommentDto.Response.from(savedComment, List.of());
    }

    /**
     * 다음 순서 번호를 계산합니다.
     * 부모 댓글의 정렬 순서를 관리하는데 사용됩니다.
     *
     * @param communityId 게시글 ID
     * @return 다음 순서 번호
     */
    private Long getNextOrderNumber(String communityId) {
        List<Comment> existingComments = commentRepository.findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(communityId);
        if (existingComments.isEmpty()) {
            return 1L;
        } else {
            Comment lastComment = existingComments.get(existingComments.size() - 1);
            return lastComment.getOrderNumber() != null ? lastComment.getOrderNumber() + 1 : 1L;
        }
    }

    /**
     * 기존 댓글을 수정합니다.
     * 작성자만 수정할 수 있습니다.
     *
     * @param userId 사용자 ID
     * @param communityId 게시글 ID
     * @param commentId 수정할 댓글 ID
     * @param request 댓글 수정 요청 데이터
     * @return 수정된 댓글 정보
     * @throws EntityNotFoundException 댓글이 존재하지 않는 경우
     * @throws IllegalArgumentException 댓글 작성자가 아닌 경우
     */
    @Transactional
    public CommentDto.Response updateComment(String userId, String communityId, String commentId, CommentDto.Request request) {
        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다."));

        // 댓글 작성자만 수정 가능
        if (!comment.getUserId().equals(userId)) {
            throw new IllegalArgumentException("댓글 수정 권한이 없습니다.");
        }

        // 댓글 내용 수정
        comment.updateContent(request.getCommentContent());

        // 자식 댓글 목록 (있는 경우)
        List<Comment> childComments = comment.getParentCommentId() == null ?
                commentRepository.findChildCommentsByParentId(commentId) : List.of();

        return CommentDto.Response.from(comment, childComments);
    }

    /**
     * 댓글을 삭제합니다.
     * 작성자만 삭제할 수 있으며, 부모 댓글 삭제 시 자식 댓글도 함께 삭제됩니다.
     *
     * @param userId 사용자 ID
     * @param communityId 게시글 ID
     * @param commentId 삭제할 댓글 ID
     * @throws EntityNotFoundException 댓글이 존재하지 않는 경우
     * @throws IllegalArgumentException 댓글 작성자가 아닌 경우
     */
    @Transactional
    public void deleteComment(String userId, String communityId, String commentId) {
        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다."));

        // 댓글 작성자만 삭제 가능
        if (!comment.getUserId().equals(userId)) {
            throw new IllegalArgumentException("댓글 삭제 권한이 없습니다.");
        }

        // 부모 댓글인 경우 자식 댓글도 함께 삭제
        if (comment.getParentCommentId() == null) {
            List<Comment> childComments = commentRepository.findChildCommentsByParentId(commentId);
            commentRepository.deleteAll(childComments);
        }

        commentRepository.delete(comment);
    }
}