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

    // 이 getter는 명시적으로 호출되지 않아도 JSON 변환 시 사용됨 (e.g., @RestController 응답)
    // 삭제 시 댓글 내용이 응답에 포함되지 않으므로 유지 필수
    public String getCommentContent() {
        return commentContent;
    }
}
