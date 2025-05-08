package com.team05.linkup.domain.mentoring.dto;

import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MentorCardDTO {
    private String mentorId;
    private String nickname;
    private Interest interest;
    private String profileImageUrl;
    private String areaName;
    private String sigunguName;
    private String introduction;
    private ActivityTime activityTime;
    private ActivityType activityType;
}