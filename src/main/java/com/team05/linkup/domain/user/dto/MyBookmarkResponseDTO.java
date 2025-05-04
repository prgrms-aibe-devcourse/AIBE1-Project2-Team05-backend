package com.team05.linkup.domain.user.dto;

import java.time.LocalDateTime;

public class MyBookmarkResponseDTO implements InterestItemDTO {

    private final LocalDateTime updatedAt;
    private final String title;
    private final String content;
    private final String type = "bookmark";

    public MyBookmarkResponseDTO(LocalDateTime updatedAt, String title, String content) {
        this.updatedAt = updatedAt;
        this.title = title;
        this.content = content;
    }

    public LocalDateTime getUpdatedAt() {
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
