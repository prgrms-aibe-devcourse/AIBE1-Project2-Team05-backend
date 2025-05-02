package com.team05.linkup.domain.community.dto;

import java.util.List;

public record GeminiRequestDTO(List<Contents> contents) {
    public record Contents(List<Parts> parts) {
        public record Parts(String text){}
    }
}
