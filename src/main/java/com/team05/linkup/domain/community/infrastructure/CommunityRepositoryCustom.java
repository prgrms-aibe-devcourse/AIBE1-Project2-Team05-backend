package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;

import java.util.List;

public interface CommunityRepositoryCustom {

    /**
     * 멘토의 관심 태그와 일치하는 QnA 게시글 중 최신순으로 N개 조회
     *
     * @param interest 관심 태그
     * @param limit 출력할 게시글 수
     * @return 게시글 요약 DTO 목록
     */
    List<CommunityQnAPostDTO> findRecentQnAPostsByInterest(String interest, int limit);
}