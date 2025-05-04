package com.team05.linkup.domain.user.dto;

import lombok.Builder;
import lombok.Getter;

import java.util.List;

@Getter
@Builder
public class CommunityQnAPostResponseDTO {  // 사용자에게 응답할 dto
    private String postId;
    private String nickname;
    private String profileImageUrl;
    private String createdAt;
    private String title;
    private String content;
    private List<String> tags;       // List 형태의 태그
    private int commentCount;
}
