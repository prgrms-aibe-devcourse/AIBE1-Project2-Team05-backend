package com.team05.linkup.domain.user.dto;

import com.querydsl.core.annotations.QueryProjection;
import lombok.Getter;

@Getter
public class CommunityQnAPostDTO {  // QueryDSL Projection용

    private final String postId;                // 게시글 ID
    private final String nickname;              // 작성자 닉네임
    private final String profileImageUrl;       // 프로필 이미지
    private final String createdAt;             // 작성일 (문자열 변환)
    private final String title;                 // 제목
    private final String content;               // 내용 요약
    private final String tagName;               // 단일 태그명(단일 문자열 형태로 받음 (예: "React,Spring") / 후처리 확장 가능)
    private final int commentCount;             // 댓글 수

    @QueryProjection
    public CommunityQnAPostDTO(String postId, String nickname, String profileImageUrl,
                               String createdAt, String title, String content,
                               String tagName, int commentCount) {
        this.postId = postId;
        this.nickname = nickname;
        this.profileImageUrl = profileImageUrl;
        this.createdAt = createdAt;
        this.title = title;
        this.content = content;
        this.tagName = tagName;
        this.commentCount = commentCount;
    }
}
