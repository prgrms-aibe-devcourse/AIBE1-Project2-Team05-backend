package com.team05.linkup.community.file.dto;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

public class ImageDto {
    @Getter
    @Builder
    public static class Response {
        private List<String> imageUrls;
    }
}