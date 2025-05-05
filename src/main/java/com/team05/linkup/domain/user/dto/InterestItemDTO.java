package com.team05.linkup.domain.user.dto;

/**
 * 관심 게시글 응답 DTO (공통 타입 인터페이스)
 * 북마크 / 좋아요 구분용
 */
public interface InterestItemDTO {
    String getType();  // "bookmark" or "like"
}
