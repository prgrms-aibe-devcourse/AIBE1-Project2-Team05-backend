package com.team05.linkup.domain.mentoring.dto;

import java.util.List;

public record AiMatchingResponseDTO(String profileTag, List<Result> results) {
    public record Result(
                        Integer areaId,
                        String providerId,
                         String profileTag,
                         String profileImageUrl,
                         double similarity) {}
}
