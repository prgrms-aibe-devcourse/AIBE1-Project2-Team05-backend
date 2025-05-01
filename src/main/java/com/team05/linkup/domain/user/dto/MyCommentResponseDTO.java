package com.team05.linkup.domain.user.dto;

import java.time.LocalDateTime;

public class MyCommentResponseDTO {
    private LocalDateTime updatedAt;
    private String description;      // 예: "게시글 제목에 댓글"
    private String commentContent;

    public MyCommentResponseDTO(LocalDateTime updatedAt, String description, String commentContent) {
        this.updatedAt = updatedAt;
        this.description = description;
        this.commentContent = commentContent;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getDescription() {
        return description;
    }

    public String getCommentContent() {
        return commentContent;
    }
}
