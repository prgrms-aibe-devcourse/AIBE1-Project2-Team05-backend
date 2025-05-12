package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.Comment;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 댓글 기능과 관련된 DTO 클래스들을 정의합니다.
 * 댓글 작성 요청, 응답, 무한 스크롤을 위한 페이징 응답 등을 포함합니다.
 */
public class CommentDto {

    /**
     * 댓글 작성 및 수정 요청 DTO
     * 댓글 내용과 부모 댓글 ID(답글인 경우)를 포함합니다.
     */
    @Getter
    @NoArgsConstructor
    public static class Request {
        private String commentContent;
        private String parentCommentId; // 답글인 경우에만 사용
    }

    /**
     * 댓글 응답 DTO
     * 댓글의 상세 정보와 하위 댓글 목록을 포함합니다.
     */
    @Getter
    @Builder
    public static class Response {
        private String id;                  // 댓글 ID
        private String userId;              // 작성자 ID
        private String nickname;            // 작성자 닉네임
        private String profileImageUrl;     // 작성자 프로필 이미지 URL
        private String commentContent;      // 댓글 내용
        private boolean isParent;           // 부모 댓글 여부
        private int totalLikeCount;         // 좋아요 수
        private ZonedDateTime createdAt;    // 생성 시간
        private ZonedDateTime updatedAt;    // 수정 시간
        private List<Response> childComments; // 하위 댓글 목록

        /**
         * Comment 엔티티와 하위 댓글 목록으로부터 Response DTO를 생성합니다.
         *
         * @param comment 댓글 엔티티
         * @param childComments 하위 댓글 목록
         * @return 댓글 응답 DTO
         */
        public static Response from(Comment comment, List<Comment> childComments) {
            return Response.builder()
                    .id(comment.getId())
                    .userId(comment.getUserId())
                    .nickname(comment.getName()) // User 객체 대신 name 필드 사용
                    .profileImageUrl(null) // Service에서 User 조회하여 설정해야 함
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

    /**
     * 무한 스크롤을 위한 Slice 응답 DTO
     * 현재 페이지의 댓글 목록과 다음 페이지 존재 여부를 포함합니다.
     */
    @Getter
    @Builder
    public static class SliceResponse {
        private final List<Response> content;  // 댓글 목록
        private final boolean hasNext;         // 다음 페이지 존재 여부

        /**
         * 댓글 목록과 다음 페이지 존재 여부로 SliceResponse를 생성합니다.
         *
         * @param content 댓글 목록
         * @param hasNext 다음 페이지 존재 여부
         */
        public SliceResponse(List<Response> content, boolean hasNext) {
            this.content = content;
            this.hasNext = hasNext;
        }
    }
}