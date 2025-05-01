package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.stream.Collectors;

public class CommentDto {

    @Getter
    @NoArgsConstructor
    public static class Request {
        private String commentContent;
        private String parentCommentId; // 답글인 경우에만 사용
    }

    @Getter
    @Builder
    public static class Response {
        private String id;
        private String userId;
        private String nickname;
        private String profileImageUrl;
        private String commentContent;
        private boolean isParent;
        private int totalLikeCount;
        private ZonedDateTime createdAt;
        private ZonedDateTime updatedAt;
        private List<Response> childComments;

        public static Response from(Comment comment, List<Comment> childComments) {
            User user = null; // 실제 구현에서는 userRepository를 통해 조회

            return Response.builder()
                    .id(comment.getId())
                    .userId(comment.getUserId())
                    .nickname(comment.getName()) // User 객체 대신 name 필드 사용
                    .profileImageUrl(user != null ? user.getProfileImageUrl() : null)
                    .commentContent(comment.getCommentContent())
                    .isParent(comment.getParentCommentId() == null) // parentCommentId 기준으로 판단
                    .totalLikeCount(comment.getTotalLikeCount())
                    .createdAt(comment.getCreatedAt())
                    .updatedAt(comment.getUpdatedAt())
                    .childComments(childComments.stream()
                            .map(child -> Response.from(child, List.of()))
                            .collect(Collectors.toList()))
                    .build();
        }
    }
}