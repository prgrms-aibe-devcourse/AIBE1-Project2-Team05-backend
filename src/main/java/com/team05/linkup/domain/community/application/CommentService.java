package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.dto.CommentDto;
import com.team05.linkup.domain.community.infra.CommentRepository;
import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommentService {

    private final CommentRepository commentRepository;
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository;

    // 게시글의 모든 댓글 조회
    public List<CommentDto.Response> getCommentsByCommunityId(String communityId) {
        List<Comment> parentComments = commentRepository.findParentCommentsByCommunityId(communityId);

        return parentComments.stream()
                .map(parent -> {
                    List<Comment> childComments = commentRepository.findChildCommentsByParentId(parent.getId());
                    return CommentDto.Response.from(parent, childComments);
                })
                .collect(Collectors.toList());
    }

    // 댓글 작성
    @Transactional
    public CommentDto.Response createComment(String userId, String communityId, CommentDto.Request request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        // 부모 댓글 여부 확인
        boolean isParent = request.getParentCommentId() == null;
        Comment parentComment = null;

        // 답글인 경우 부모 댓글 조회
        if (!isParent) {
            parentComment = commentRepository.findById(request.getParentCommentId())
                    .orElseThrow(() -> new EntityNotFoundException("부모 댓글을 찾을 수 없습니다."));
        }

        // order_number 계산 (부모 댓글인 경우에만)
        Long orderNumber = null;
        if (isParent) {
            List<Comment> existingComments = commentRepository.findByCommunityAndIsParentTrueOrderByOrderNumber(community);
            if (existingComments.isEmpty()) {
                orderNumber = 1L;
            } else {
                orderNumber = existingComments.get(existingComments.size() - 1).getOrderNumber() + 1;
            }
        }

        // 댓글 생성
        Comment comment = Comment.builder()
                .user(user)
                .community(community)
                .commentContent(request.getCommentContent())
                .orderNumber(orderNumber)
                .isParent(isParent)
                .totalLikeCount(0)
                .name(user.getNickname())
                .parentComment(parentComment)
                .build();

        Comment savedComment = commentRepository.save(comment);
        return CommentDto.Response.from(savedComment, List.of());
    }

    // 댓글 수정
    @Transactional
    public CommentDto.Response updateComment(String userId, String communityId, String commentId, CommentDto.Request request) {
        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다."));

        // 작성자 확인
        if (!comment.getUser().getId().equals(userId)) {
            throw new IllegalArgumentException("댓글 수정 권한이 없습니다.");
        }

        // 댓글 내용 수정
        comment.updateContent(request.getCommentContent());

        return CommentDto.Response.from(comment,
                comment.isParent() ? commentRepository.findByParentCommentOrderByCreatedAt(comment) : List.of());
    }

    // 댓글 삭제
    @Transactional
    public void deleteComment(String userId, String communityId, String commentId) {
        Comment comment = commentRepository.findById(commentId)
                .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다."));

        // 작성자 확인
        if (!comment.getUser().getId().equals(userId)) {
            throw new IllegalArgumentException("댓글 삭제 권한이 없습니다.");
        }

        // 부모 댓글인 경우 자식 댓글도 모두 삭제
        if (comment.isParent()) {
            List<Comment> childComments = commentRepository.findByParentCommentOrderByCreatedAt(comment);
            commentRepository.deleteAll(childComments);
        }

        commentRepository.delete(comment);
    }
}
