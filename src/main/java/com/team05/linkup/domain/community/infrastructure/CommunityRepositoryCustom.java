package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.domain.Tag;
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

    /**
     * 다양한 조건으로 게시글을 고급 검색합니다.
     *
     * @param keyword 검색 키워드 (제목, 내용, 태그에서 검색)
     * @param nickname 작성자 닉네임
     * @param category 게시글 카테고리
     * @param userRole 사용자 역할 (ROLE_MENTOR, ROLE_MENTEE 등)
     * @param tag 게시글 태그
     * @param pageable 페이징 정보
     * @return 검색 결과 페이지
     */
    Page<Community> advancedSearch(
            String keyword,
            String nickname,
            CommunityCategory category,
            String userRole,
            Tag tag,
            Pageable pageable
    );
}