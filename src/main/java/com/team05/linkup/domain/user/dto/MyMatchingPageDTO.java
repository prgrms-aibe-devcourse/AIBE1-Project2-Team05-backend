package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.mentoring.dto.OngoingMatchingDTO;
import com.team05.linkup.domain.mentoring.dto.ReceivedReviewDTO;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class MyMatchingPageDTO {
    private List<ReceivedReviewDTO> reviews;
    private List<CommunityQnAPostResponseDTO> communityQnAs;
    private List<OngoingMatchingDTO> ongoingMatchings;
    private MentorStatsDTO stats;
}