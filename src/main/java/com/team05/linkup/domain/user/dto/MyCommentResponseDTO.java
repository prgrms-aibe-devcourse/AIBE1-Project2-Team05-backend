package com.team05.linkup.domain.user.dto;

import java.time.ZonedDateTime;

public class MyCommentResponseDTO {
    private ZonedDateTime updatedAt;
    private String description;      // 예: "게시글 제목에 댓글"
    private String commentContent;

    public MyCommentResponseDTO(ZonedDateTime updatedAt, String description, String commentContent) {
        this.updatedAt = updatedAt;
        this.description = description;
        this.commentContent = commentContent;
    }

    public ZonedDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getDescription() {
        return description;
    }

    public String getCommentContent() {
        return commentContent;
    }
}
