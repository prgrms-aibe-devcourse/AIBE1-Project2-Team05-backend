package com.team05.linkup.domain.community.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Getter;

/**
 * 활발한 사용자 목록 조회 API의 최종 응답을 위한 DTO입니다.
 * 클라이언트에게 전달될 사용자 정보를 담습니다.
 */
@Getter
@Builder
@Schema(description = "활발한 커뮤니티 사용자 응답 DTO")
public class ActiveUsersResponseDTO {

    @Schema(description = "사용자 고유 ID (UUID)", example = "a1b2c3d4-e5f6-7890-1234-567890abcdef")
    private String userId;

    @Schema(description = "사용자 닉네임", example = "열정적인커뮤니케이터")
    private String nickname;

    @Schema(description = "프로필 이미지 URL", example = "https://example.com/profiles/user1.jpg")
    private String profileImageUrl;

    @Schema(description = "지정된 기간 내 작성한 게시글 수", example = "15")
    private long postCount;

    @Schema(description = "지정된 기간 내 작성한 댓글 수", example = "50")
    private long commentCount;

    /**
     * 정적 팩토리 메소드: ActiveUsersResponseDTO 객체를 생성합니다.
     *
     * @param userId          사용자 ID
     * @param nickname        닉네임
     * @param profileImageUrl 프로필 이미지 URL
     * @param postCount       게시글 수
     * @param commentCount    댓글 수
     * @return 생성된 ActiveUsersResponseDTO 객체
     */
    public static ActiveUsersResponseDTO of(String userId, String nickname, String profileImageUrl, long postCount, long commentCount) {
        return ActiveUsersResponseDTO.builder()
                .userId(userId)
                .nickname(nickname)
                .profileImageUrl(profileImageUrl)
                .postCount(postCount)
                .commentCount(commentCount)
                .build();
    }
}