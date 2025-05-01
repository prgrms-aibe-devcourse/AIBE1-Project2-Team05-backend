package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.Comment;
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
            return Response.builder()
                    .id(comment.getId())
                    .userId(comment.getUser().getId())
                    .nickname(comment.getUser().getNickname())
                    .profileImageUrl(comment.getUser().getProfileImageUrl())
                    .commentContent(comment.getCommentContent())
                    .isParent(comment.isParent())
                    .totalLikeCount(comment.getTotalLikeCount() != null ? comment.getTotalLikeCount() : 0)
                    .createdAt(comment.getCreatedAt())
                    .updatedAt(comment.getUpdatedAt())
                    .childComments(childComments.stream()
                            .map(child -> Response.from(child, List.of()))
                            .collect(Collectors.toList()))
                    .build();
        }
    }
}