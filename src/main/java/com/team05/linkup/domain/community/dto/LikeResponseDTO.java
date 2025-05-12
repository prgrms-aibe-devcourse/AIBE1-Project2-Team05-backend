package com.team05.linkup.domain.community.dto;

/**
 * 좋아요 토글 작업 후의 최종 상태를 나타내는 DTO.
 *
 * @param liked 좋아요 상태 (true: 좋아요됨, false: 좋아요 안됨)
 * @param likeCount 좋아요 최신값
 */
public record LikeResponseDTO(boolean liked, Long likeCount) {
}