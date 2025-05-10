package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.community.domain.CommunityCategory;
import lombok.Getter;

import java.time.ZonedDateTime;

@Getter
public class MyPostResponseDTO {
    private String id;
    private ZonedDateTime createdAt;
    private String category;
    private String categoryDisplayName; // ✅ 프론트 출력용
    private String title;
    private String content;
    private int viewCount;
    private int likeCount;
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
     * 🔹 Enum 이름을 출력용 displayName으로 변환하는 유틸 메서드
     */
    private String convertToDisplayName(String categoryName) {
        try {
            return CommunityCategory.valueOf(categoryName).getDisplayName();
        } catch (IllegalArgumentException e) {
            return categoryName; // 혹시 모를 잘못된 값 대비 fallback
        }
    }


}

