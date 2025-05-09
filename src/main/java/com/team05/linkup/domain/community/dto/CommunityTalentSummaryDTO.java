package com.team05.linkup.domain.community.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.ZonedDateTime;
import java.util.List;

/**
 * 멘토 마이페이지 - 내가 등록한 재능 게시글 요약 정보 DTO
 * - 미리보기 / 더보기 둘 다 이 구조 사용
 */
@Data
@AllArgsConstructor
public class CommunityTalentSummaryDTO {

    @Schema(description = "게시글 ID")
    private String postId; // 게시글 클릭 시 해당 게시글 상세페이지로 이동하기 위한 필드 추가

    @Schema(description = "게시글 작성일 (UTC 기준)")
    private ZonedDateTime createdAt;

    @Schema(description = "재능 게시글 제목")
    private String title;

    @Schema(description = "커뮤니티 태그 이름 목록")
    private List<String> tags; // 커뮤니티 태그 이름 리스트 (예: ["백엔드", "Java"])
//    private String communityTagId;

    @Schema(description = "게시글 내용 (최대 55자, 잘린 경우 ... 포함)")
    private String content;

}
