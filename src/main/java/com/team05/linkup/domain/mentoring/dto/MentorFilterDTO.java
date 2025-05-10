package com.team05.linkup.domain.mentoring.dto;

import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.List;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MentorFilterDTO {
    private Interest interest;
    private Integer areaCode;
    private Integer sigunguCode;
    private List<ActivityTime> activityTime;
    private ActivityType activityType;
}
