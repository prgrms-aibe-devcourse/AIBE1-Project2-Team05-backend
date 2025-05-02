package com.team05.linkup.domain.user.dto;

import java.time.LocalDateTime;

public record MyLikeResponseDTO(
        LocalDateTime updatedAt,
        String title,
        String content
) {}
