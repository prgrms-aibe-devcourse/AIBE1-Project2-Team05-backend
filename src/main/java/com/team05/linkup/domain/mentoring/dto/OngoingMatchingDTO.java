package com.team05.linkup.domain.mentoring.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
public class OngoingMatchingDTO {

    private String sessionId;              // 매칭 세션 ID
    private String menteeNickname;         // 멘티 닉네임
    private String menteeProfileImageUrl;  // 멘티 프로필 이미지
    private String matchingDate;           // 매칭 시작일 (yyyy-MM-dd 형식 문자열)
    private String category;               // 관심 분야 (Interest enum → displayName)
    private String tag;                    // 세부 태그 (멘티의 profileTag 사용)
    private String description;            // 멘티 소개글
    private String status;                 // 매칭 상태 (MentoringStatus enum → displayName)
    private String contactLink;            // 카카오톡 오픈채팅 등 연락 링크
}
