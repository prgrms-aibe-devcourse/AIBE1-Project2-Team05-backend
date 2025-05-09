package com.team05.linkup.domain.user.dto;

import java.time.ZonedDateTime;

/**
 * [마이페이지] 내가 작성한 댓글 응답 DTO
 * - 게시글 ID, 카테고리, 제목, 작성일, 댓글 내용 포함
 * - 프론트에서 댓글 목록 출력 및 링크 연결에 사용
 */
public class MyCommentResponseDTO {
    private String postId;  // 게시글 ID (프론트에서 링크 이동에 사용)

    private String category; // 게시글 카테고리 (자유게시판, Q&A 등)

//    private ZonedDateTime updatedAt;
    private ZonedDateTime createdAt;     // 댓글 작성일 (UTC 기준)

//    private String description;      // 예: "ㅇㅇㅇㅇㅇ" 게시글에 댓글
    private String postTitle;    // 게시글 제목

    private String commentContent;

    public MyCommentResponseDTO(
            String postId,
            String category,
            /*ZonedDateTime updatedAt, */
            ZonedDateTime createdAt,
//            String description,
            String postTitle,
            String commentContent
    ) {
        this.postId = postId;
        this.category = category;
//        this.updatedAt = updatedAt;
        this.createdAt = createdAt;
//        this.description = description;
        this.postTitle = postTitle;
        this.commentContent = commentContent;
    }

    public String getPostId() {
        return postId;
    }

    public String getCategory() {
        return category;
    }

//    public ZonedDateTime getUpdatedAt() {return updatedAt;}
    public ZonedDateTime getCreatedAt() {
        return createdAt;
    }


//    public String getDescription() {return description;}
    public String getPostTitle() {  // 아래 getCommentContent()와 동일하게 JSON 응답용
        return postTitle;
    }

    // 이 getter는 명시적으로 호출되지 않아도 JSON 변환 시 사용됨 (e.g., @RestController 응답)
    // 삭제 시 댓글 내용이 응답에 포함되지 않으므로 유지 필수
    public String getCommentContent() {
        return commentContent;
    }
}
