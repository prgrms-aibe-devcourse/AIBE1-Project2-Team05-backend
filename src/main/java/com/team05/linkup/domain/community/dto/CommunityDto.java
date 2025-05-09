package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Tag;
import jakarta.validation.constraints.NotBlank;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 커뮤니티 기능과 관련된 DTO 클래스들을 정의합니다.
 * 게시글 생성/수정, 상세조회, 검색 등에 사용되는 데이터 구조를 포함합니다.
 */
public class CommunityDto {

    /**
     * 커뮤니티 게시글 생성 및 수정 요청 DTO
     */
    @Getter
    @NoArgsConstructor
    public static class Request {
        @NotBlank(message = "제목은 필수 입력값입니다.")
        private String title;

        @NotBlank(message = "카테고리는 필수 입력값입니다.")
        private String category;

        /**
         * 게시글에 첨부할 태그 이름 목록입니다.
         * 프론트엔드에서 "tags": ["tag1", "tag2"] 형태로 전송하는 것을 가정합니다.
         */
        private List<String> tags;

        @NotBlank(message = "내용은 필수 입력값입니다.")
        private String content;
    }

    /**
     * 커뮤니티 게시글 검색 요청 DTO
     * ID, 키워드, 닉네임 등 다양한 조건으로 게시글을 검색할 수 있습니다.
     */
    @Getter
    @NoArgsConstructor
    public static class SearchDetailRequest {
        private String id;         // 검색 시 사용되는 ID
        private String keyword;    // 검색 키워드 (제목, 내용 등)
        private String nickname;   // 작성자 닉네임

        // 확장된 검색 필드
        private String category;   // 카테고리 검색
        private String userRole;   // 작성자 역할 검색 (ROLE_MENTOR/ROLE_MENTEE)
        private String tag;        // 태그 검색
        private String sortBy;     // 정렬 기준 (createdAt, viewCount, likeCount)
        private String direction;  // 정렬 방향 (asc, desc)
    }

    /**
     * 커뮤니티 게시글 기본 응답 DTO
     * 목록 조회 등에서 사용되는 간략한 정보를 포함합니다.
     */
    @Getter
    @Builder
    public static class Response {
        private String id;
        private String userId;
        private String title;
        private String category;
        private List<String> tags;
        private String content;
        private ZonedDateTime createdAt;
        private ZonedDateTime updatedAt;

        /**
         * Community 엔티티로부터 Response DTO를 생성합니다.
         *
         * @param community 게시글 엔티티
         * @return 게시글 응답 DTO
         */
        public static Response from(Community community) {
            return Response.builder()
                    .id(community.getId())
                    .userId(community.getUser().getId())
                    .title(community.getTitle())
                    .category(community.getCategory().name())
                    .tags(community.getTags().stream().map(Tag::getName).collect(Collectors.toList()))
                    .content(community.getContent())
                    .createdAt(community.getCreatedAt())
                    .updatedAt(community.getUpdatedAt())
                    .build();
        }
    }

    /**
     * 커뮤니티 게시글 상세 응답 DTO
     * 게시글의 모든 상세 정보를 포함합니다.
     */
    @Getter
    @Builder
    public static class DetailResponse {
        private String id;
        private String userId;
        private String nickname;
        private String profileImageUrl;
        private String title;
        private String category;
        private List<String> tags;
        private String content;
        private int viewCount;     // Long에서 int로 변환
        private int likeCount;     // Long에서 int로 변환
        private int commentCount;
        private boolean isLiked;
        private boolean isBookmarked;
        private List<String> imageUrls;
        private ZonedDateTime createdAt;
        private ZonedDateTime updatedAt;
    }

    /**
     * 커뮤니티 게시글 목록 요약 응답 DTO
     * 목록 조회 시 필요한 간략한 정보만 포함합니다.
     */
    @Getter
    @Builder
    public static class CommunitySummaryResponse {
        private String id;
        private String userId;
        private String nickname;
        private String profileImageUrl;
        private String title;
        private String category;
        private List<String> tags;
        private String content;
        private int viewCount;
        private int likeCount;
        private int commentCount;
        private ZonedDateTime createdAt;

        // 서비스에서 Community 엔티티를 이 DTO로 변환하는 로직 필요
        public static CommunitySummaryResponse fromEntity(Community community, int commentCount) {
            String preview = community.getContent();
            if (preview != null && preview.length() > 100) {
                preview = preview.substring(0, 100) + "...";
            }

            return CommunitySummaryResponse.builder()
                    .id(community.getId())
                    .nickname(community.getUser().getNickname())
                    .profileImageUrl(community.getUser().getProfileImageUrl())
                    .title(community.getTitle())
                    .category(community.getCategory().name())
                    .tags(community.getTags().stream().map(Tag::getName).collect(Collectors.toList()))
                    .content(preview)
                    .viewCount(community.getViewCount().intValue())
                    .likeCount(community.getLikeCount().intValue())
                    .commentCount(commentCount)
                    .createdAt(community.getCreatedAt())
                    .build();
        }

        /**
         * 미리보기용 내용 생성 (최대 100자)
         */
        public String getPreviewContent() {
            if (content == null) {
                return "";
            }

            int maxLength = 100;
            if (content.length() <= maxLength) {
                return content;
            }

            return content.substring(0, maxLength) + "...";
        }
    }
}