package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Category {
    QUESTION, // ("질문/답변"),
    INFO,     // ("정보공유"),
    REVIEW,   // ("후기"),
    FREE,     // ("자유게시판"),
    TALENT;   // ("재능나눔");
}