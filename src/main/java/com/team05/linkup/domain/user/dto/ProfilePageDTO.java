package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class ProfilePageDTO {
    private String id; // 사용자 ID
    private String nickname; // 사용자 닉네임
    private String profileImageUrl; // 프로필 이미지 URL
    private String role; // 사용자 역할 (멘티, 멘토)
    private String tag; // 사용자 태그
    private String interest; // 관심 주제
    private String area; // 선호 지역
    private String introduction; // 자기소개
    private boolean me; // 현재 사용자와 프로필 소유자가 같은지 여부
}