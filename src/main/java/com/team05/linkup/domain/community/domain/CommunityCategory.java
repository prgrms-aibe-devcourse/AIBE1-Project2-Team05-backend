package com.team05.linkup.domain.community.domain;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum CommunityCategory {
    QUESTION("질문/답변"), // ("질문/답변"), // Keep korean names if needed for display elsewhere
    INFO("정보공유"),     // ("정보공유"),
    REVIEW("후기"),   // ("후기"),
    FREE("자유게시판"),     // ("자유게시판"),
    TALENT("재능나눔");   // ("재능나눔");

    private final String displayName;
}