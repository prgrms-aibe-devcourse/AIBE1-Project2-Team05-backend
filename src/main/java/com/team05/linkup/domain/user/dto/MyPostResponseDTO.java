package com.team05.linkup.domain.user.dto;

import lombok.Getter;

import java.time.ZonedDateTime;

@Getter
public class MyPostResponseDTO {
    private String id;
    private ZonedDateTime createdAt;    // 작성일
//    private ZonedDateTime updatedAt;  // 수정일
    private String category;
    private String title;
    private String content;
    private int viewCount;
    private int likeCount;
    private int commentCount;

    public MyPostResponseDTO(String id, ZonedDateTime createdAt, /*ZonedDateTime updatedAt,*/ String category, String title, String content,
                             int viewCount, int likeCount, int commentCount) {
        this.id = id;
        this.createdAt = createdAt;
//        this.updatedAt = updatedAt;
        this.category = category;
        this.title = title;
        this.content = content;
        this.viewCount = viewCount;
        this.likeCount = likeCount;
        this.commentCount = commentCount;
    }

}

