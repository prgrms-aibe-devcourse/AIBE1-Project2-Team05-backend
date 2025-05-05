package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

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

    Page<CommunityQnAPostDTO> findRecentQnAPostsByInterestPaged(String interest, Pageable pageable);
}