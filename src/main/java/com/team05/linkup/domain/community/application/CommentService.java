package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.community.dto.CommentDto;
import com.team05.linkup.domain.community.infra.CommentRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommentService {

    private final CommentRepository commentRepository;
    private final UserRepository userRepository;

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

    private Long getNextOrderNumber(String communityId) {
        List<Comment> existingComments = commentRepository.findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(communityId);
        if (existingComments.isEmpty()) {
            return 1L;
        } else {
            Comment lastComment = existingComments.get(existingComments.size() - 1);
            return lastComment.getOrderNumber() != null ? lastComment.getOrderNumber() + 1 : 1L;
        }
    }

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