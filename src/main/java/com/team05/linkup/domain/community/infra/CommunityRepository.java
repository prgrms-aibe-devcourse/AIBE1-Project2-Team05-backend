package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.List;

public interface CommunityRepository extends JpaRepository<Community, String> {

    // 기본 정렬 쿼리 유지

    /**
     * 커뮤니티 요약의 페이지 매김된 목록을 찾습니다.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE (:category IS NULL OR c.category = :category)")
    Page<CommunitySummaryResponse> findCommunitySummaries(
            @Param("category") CommunityCategory category,
            Pageable pageable);

    /**
     * 인기 게시글 조회
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.createdAt > :startDate " +
            "ORDER BY c.viewCount DESC, c.likeCount DESC, c.createdAt DESC")
    List<CommunitySummaryResponse> findPopularSince(@Param("startDate") ZonedDateTime startDate, Pageable pageable);

    /**
     * 검색 쿼리
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.title LIKE CONCAT('%', :keyword, '%') " +
            "   OR c.content LIKE CONCAT('%', :keyword, '%') " +
            "   OR c.communityTag LIKE CONCAT('%', :keyword, '%')")
    Page<CommunitySummaryResponse> searchSummariesByKeyword(@Param("keyword") String keyword, Pageable pageable);

    // 좋아요 증감 메서드 유지
    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = c.likeCount + 1 WHERE c.id = :communityId")
    int incrementLikeCount(@Param("communityId") String communityId);

    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = CASE WHEN c.likeCount > 0 THEN c.likeCount - 1 ELSE 0 END WHERE c.id = :communityId")
    int decrementLikeCount(@Param("communityId") String communityId);
}