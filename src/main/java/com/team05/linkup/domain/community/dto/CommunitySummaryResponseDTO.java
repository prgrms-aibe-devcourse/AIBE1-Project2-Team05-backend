package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.CommunityCategory;
import java.time.ZonedDateTime;

/**
 * 커뮤니티 게시물의 요약 뷰를 나타내는 데이터 전송 객체(DTO).
 * 커뮤니티 엔터티의 모든 세부 정보가 필요하지 않은 목록 뷰에 사용됩니다.
 * 작성자의 별명, 댓글 수와 같은 계산된 데이터 또는 관련 데이터가 포함됩니다.
 *
 * @param id 커뮤니티 게시물의 고유 ID.
 * @param nickname 게시물을 만든 사용자의 별명.
 * @param title 커뮤니티 게시물의 제목.
 * @param category 커뮤니티 게시물의 카테고리.
 * @param createdAt 게시물이 작성된 날짜 및 시간.
 * @param viewCount 게시물이 받은 조회수.
 * @param likeCount 게시물이 받은 좋아요 수.
 * @param content 게시물 내용.
 * @param profileImageUrl 게시물을 만든 사용자의 프로필 이미지 URL.
 * @param commentCount 게시물과 연결된 총 댓글 수.
 */
public record CommunitySummaryResponseDTO(
        String id,
        String nickname,
        String title,
        CommunityCategory category,
        ZonedDateTime createdAt,
        Long viewCount,
        Long likeCount,
        String content,
        String profileImageUrl,
        Long commentCount
) {
}