package com.team05.linkup.domain.user.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDateTime;

@Getter
@AllArgsConstructor
public class MyBookmarkResponseDTO {
    private LocalDateTime updatedAt;
    private String title;
    private String content;
}
