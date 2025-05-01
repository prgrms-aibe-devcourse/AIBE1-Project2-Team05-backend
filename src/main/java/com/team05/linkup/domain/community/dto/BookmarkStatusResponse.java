package com.team05.linkup.domain.community.dto;

/**
 * 북마크 토글 작업 후의 최종 상태를 나타내는 DTO.
 *
 * @param bookmarked 북마크 상태 (true: 북마크됨, false: 북마크 안됨)
 */
public record BookmarkStatusResponse(boolean bookmarked) {
}