package com.team05.linkup.domain.user.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import lombok.Getter;

import java.time.ZonedDateTime;

/**
 * 마이페이지 - 내가 작성한 커뮤니티 게시글 응답 DTO
 * <p>
 * 커뮤니티에서 사용자가 작성한 게시글 정보를 요약해서 응답하는 데 사용됩니다.
 * <br>
 * 게시글 ID, 작성일, 카테고리(영문/한글), 제목, 내용 요약, 조회수, 좋아요 수, 댓글 수를 포함합니다.
 * </p>
 */
@Getter
public class MyPostResponseDTO {
    /**
     * 게시글 ID
     * <p>응답 JSON에서는 postId로 반환됨</p>
     */
    @JsonProperty("postId") // ✅ 응답에서 postId로 직렬화
    private String id;

    /** 게시글 작성일 (UTC 기준) */
    private ZonedDateTime createdAt;

    /** 게시글 카테고리 (영문 ENUM 값, 예: QUESTION, INFO) */
    private String category;

    /** 게시글 카테고리의 한글 이름 (예: 질문/답변, 정보공유) */
    private String categoryDisplayName; // 프론트 출력용

    /** 게시글 제목 */
    private String title;

    /** 게시글 요약 내용 (최대 55자 + "...") */
    private String content;

    /** 게시글 조회 수 */
    private int viewCount;

    /** 게시글 좋아요 수 */
    private int likeCount;

    /** 게시글 댓글 수 */
    private int commentCount;

    public MyPostResponseDTO(
            String id,
            ZonedDateTime createdAt,
            String category,
            String title,
            String content,
            int viewCount,
            int likeCount,
            int commentCount
    ) {
        this.id = id;
        this.createdAt = createdAt;
        this.category = category;
        this.categoryDisplayName = convertToDisplayName(category); // ✅ 변환 처리
        this.title = title;
        this.content = content;
        this.viewCount = viewCount;
        this.likeCount = likeCount;
        this.commentCount = commentCount;
    }

    /**
     * 주어진 카테고리 ENUM 이름(String)을 displayName(한글)으로 변환합니다.
     * <p>잘못된 값이 들어올 경우 그대로 반환합니다.</p>
     *
     * @param categoryName ENUM 값 (예: QUESTION)
     * @return 한글 displayName (예: 질문/답변)
     */
    private String convertToDisplayName(String categoryName) {
        try {
            return CommunityCategory.valueOf(categoryName).getDisplayName();
        } catch (IllegalArgumentException e) {
            return categoryName; // 혹시 모를 잘못된 값 대비 fallback
        }
    }


}

