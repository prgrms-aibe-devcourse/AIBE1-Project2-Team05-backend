package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder(toBuilder = true)
public class ActivityResponseDTO {
    private String nickname;    // 프론트에서 "내 활동 내역" vs "OOO님의 활동 내역" 판단용
    private List<MyPostResponseDTO> posts;
    private List<MyCommentResponseDTO> comments;
    private List<MyBookmarkResponseDTO> bookmarks;
    private List<MyLikeResponseDTO> likes;

    // 멘토 전용
    private List<CommunityTalentSummaryDTO> talents;

    // 멘티 전용
    private List<MatchedMentorProfileDto> matches;
}
