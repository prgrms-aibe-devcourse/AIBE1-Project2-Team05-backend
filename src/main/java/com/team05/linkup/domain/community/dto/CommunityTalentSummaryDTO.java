package com.team05.linkup.domain.community.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.ZonedDateTime;
import java.util.List;

/**
 * 멘토 마이페이지 - 내가 등록한 재능 게시글 요약 정보 DTO
 *
 * <p>미리보기와 더보기 목록 모두 이 구조를 사용한다.</p>
 * <p>게시글의 작성일, 제목, 커뮤니티 태그, 미리보기용 내용(최대 55자) 포함</p>
 */
@Data
@AllArgsConstructor
public class CommunityTalentSummaryDTO {

    /** 게시글 고유 ID (상세페이지 이동용) */
    @Schema(description = "게시글 ID (상세 페이지 이동용)")
    private String postId;

    /** 게시글 작성일 (UTC 기준) */
    @Schema(description = "게시글 작성일 (UTC 기준)")
    private ZonedDateTime createdAt;

    /** 재능 게시글 제목 */
    @Schema(description = "재능 게시글 제목")
    private String title;

    /** 커뮤니티 태그 이름 목록 (예: ["백엔드", "Java"]) */
    @Schema(description = "커뮤니티 태그 이름 목록")
    private List<String> tags;

    /** 게시글 내용 (최대 55자, 잘린 경우 '...' 포함) */
    @Schema(description = "게시글 내용 (최대 55자, 잘린 경우 ... 포함)")
    private String content;

}
