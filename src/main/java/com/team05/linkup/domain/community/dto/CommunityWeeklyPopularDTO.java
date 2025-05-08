package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.CommunityCategory;


/**
 * 커뮤니티 주간 인기 게시글 요약 뷰를 나타내는 데이터 전송 객체(DTO).
 *
 * @param id 커뮤니티 게시물의 고유 ID.
 * @param title 커뮤니티 게시물의 제목.
 * @param category 커뮤니티 게시물의 카테고리.
 */
public record CommunityWeeklyPopularDTO(
        String id,
        String title,
        CommunityCategory category
) {
}