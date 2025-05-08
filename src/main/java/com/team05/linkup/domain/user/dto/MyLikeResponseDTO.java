package com.team05.linkup.domain.user.dto;

import java.time.ZonedDateTime;

public class MyLikeResponseDTO implements InterestItemDTO {

    private final ZonedDateTime updatedAt;
    private final String title;
    private final String content;
    private final String type = "like";  // 타입 구분 필드

    public MyLikeResponseDTO(ZonedDateTime updatedAt, String title, String content) {
        this.updatedAt = updatedAt;
        this.title = title;
        this.content = content;
    }

    public ZonedDateTime getUpdatedAt() {
        return updatedAt;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    @Override
    public String getType() {
        return type;
    }
}
