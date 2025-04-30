package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.Community;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.ZonedDateTime;
import java.util.List;

public class CommunityDto {

    @Getter
    @NoArgsConstructor
    public static class Request {
        private String title;
        private String category;
        private String communityTag;
        private String content;
    }

    @Getter
    @NoArgsConstructor
    public static class SearchDetailRequest {
        private String id;  // 검색 시 사용되는 ID
        private String keyword;
        private String nickname;
    }

    @Getter
    @Builder
    public static class Response {
        private String id;
        private String userId;
        private String title;
        private String category;
        private String communityTag;
        private String content;
        private ZonedDateTime createdAt;
        private ZonedDateTime updatedAt;

        public static Response from(Community community) {
            return Response.builder()
                    .id(community.getId())
                    .userId(community.getUser().getId())
                    .title(community.getTitle())
                    .category(community.getCategory().name())
                    .communityTag(community.getCommunityTag())
                    .content(community.getContent())
                    .createdAt(community.getCreatedAt())
                    .updatedAt(community.getUpdatedAt())
                    .build();
        }
    }

    @Getter
    @Builder
    public static class DetailResponse {
        private String id;
        private String userId;
        private String nickname;
        private String profileImageUrl;
        private String title;
        private String category;
        private String communityTag;
        private String content;
        private int viewCount;
        private int likeCount;
        private int commentCount;
        private boolean isLiked;
        private boolean isBookmarked;
        private List<String> imageUrls;
        private ZonedDateTime createdAt;
        private ZonedDateTime updatedAt;
    }
}
