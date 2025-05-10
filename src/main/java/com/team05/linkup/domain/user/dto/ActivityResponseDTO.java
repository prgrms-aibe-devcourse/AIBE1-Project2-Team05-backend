package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

/**
 * 마이페이지 - 활동 내역 응답 DTO (멘토/멘티 공통)
 */
@Getter
@Builder(toBuilder = true)
public class ActivityResponseDTO {

    @Schema(description = "현재 로그인한 사용자인지 여부")
    private boolean me; // 🟢 [신규] 본인 여부 플래그

    @Schema(description = "프로필 닉네임 (본인 여부 판별용)")
    private String nickname;    // 프론트에서 "내 활동 내역" vs "OOO님의 활동 내역" 판단용

    @Schema(description = "내가 작성한 커뮤니티 게시글 목록")
    private List<MyPostResponseDTO> posts;

    @Schema(description = "내가 작성한 댓글 목록")
    private List<MyCommentResponseDTO> comments;

    @Schema(description = "북마크한 게시글 목록")
    private List<MyBookmarkResponseDTO> bookmarks;

    @Schema(description = "좋아요 누른 게시글 목록")
    private List<MyLikeResponseDTO> likes;


    // 멘토 전용
    @Schema(description = "멘토 전용 - 내가 등록한 재능 게시글 목록")
    private List<CommunityTalentSummaryDTO> talents;

    // 멘티 전용
    @Schema(description = "멘티 전용 - 내가 신청한 멘토 목록")
    private List<MatchedMentorProfileDto> matches;
}
