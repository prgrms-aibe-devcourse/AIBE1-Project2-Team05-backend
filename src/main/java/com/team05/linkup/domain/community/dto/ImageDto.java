package com.team05.linkup.domain.community.dto;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

/**
 * 이미지 관련 데이터 전송 객체를 정의하는 클래스입니다.
 * 이미지 URL 목록을 주고받기 위한 DTO 구조를 포함합니다.
 */
public class ImageDto {

    /**
     * 이미지 응답 DTO
     * 업로드된 이미지 URL 목록을 포함합니다.
     */
    @Getter
    @Builder
    public static class Response {
        private final List<String> imageUrls;

        /**
         * URL 목록으로부터 Response 객체를 생성하는 팩토리 메서드
         *
         * @param urls 이미지 URL 목록
         * @return 생성된 Response 객체
         */
        public static Response of(List<String> urls) {
            return Response.builder()
                    .imageUrls(urls)
                    .build();
        }
    }
}