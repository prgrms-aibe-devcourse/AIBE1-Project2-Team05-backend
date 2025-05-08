package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class ProfileUpdateRequestDTO {

    // 🔹 공통 필드
    private String nickname;
    private String introduction;
    private Interest interest;
    private ActivityTime activityTime;

    // 🔹 멘토 전용 필드
    private ActivityType activityType;
    private String contactLink;
    private Boolean openToMatching;

    // 🔹 지역 (Area 객체 대신 코드만 받음)
    private Integer areaCode;
    private Integer sigunguCode;

    // 🔹 태그
    private List<String> tags;
}
