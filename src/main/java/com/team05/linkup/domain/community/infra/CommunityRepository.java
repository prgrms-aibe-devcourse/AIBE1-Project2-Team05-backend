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

/**
 * {@link Community} 엔티티를 위한 Spring Data JPA 저장소입니다.
 * 커뮤니티 데이터 접근을 위한 CRUD 작업 및 사용자 정의 쿼리를 제공합니다.
 */
public interface CommunityRepository extends JpaRepository<Community, String> {

    // 기본 정렬 쿼리
    Page<Community> findAllByOrderByCreatedAtDesc(Pageable pageable);

    Page<Community> findByCategoryOrderByCreatedAtDesc(CommunityCategory category, Pageable pageable);

    Page<Community> findAllByOrderByViewCountDesc(Pageable pageable);

//    @Query("SELECT c FROM Community c LEFT JOIN Like l ON c.id = l.community.id " +
//            "GROUP BY c.id ORDER BY COUNT(l.id) DESC")
//    Page<Community> findAllOrderByLikeCountDesc(Pageable pageable);

    // 키워드 검색 쿼리
    @Query("SELECT c FROM Community c WHERE c.title LIKE %:keyword% OR c.content LIKE %:keyword%")
    Page<Community> findByTitleContainingOrContentContaining(@Param("keyword") String keyword, Pageable pageable);

    @Query("SELECT c FROM Community c WHERE c.category = :category AND (c.title LIKE %:keyword% OR c.content LIKE %:keyword%)")
    Page<Community> findByCategoryAndTitleContainingOrContentContaining(
            @Param("category") CommunityCategory category,
            @Param("keyword") String keyword,
            Pageable pageable);

    /**
     * 커뮤니티 요약의 페이지 매김된 목록을 찾습니다. 선택적으로 카테고리별로 필터링할 수 있으며,
     * 작성자 닉네임과 각 게시물의 댓글 수를 포함
     *
     * @param category 필터링 기준 카테고리(선택 사항, null일 수 있음).
     * @param pageable 페이지 매김 및 정렬 정보.
     * @return CommunitySummaryResponse DTO 페이지.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt) FROM Comment cmt WHERE cmt.community = c) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE (:category IS NULL OR c.category = :category)")
    Page<CommunitySummaryResponse> findCommunitySummaries(
            @Param("category") CommunityCategory category,
            Pageable pageable);

    /**
     * 지정된 시작일 이후 생성된 인기 커뮤니티 요약 목록을 찾습니다.
     * 조회수, 좋아요 수, 생성일 순으로 정렬합니다.
     * 작성자 닉네임과 각 게시물의 댓글 수를 포함합니다.
     *
     * @param startDate 게시물이 생성되어야 하는 날짜입니다.
     * @param pageable 페이지 매김 정보(주로 여기서는 결과를 제한하는 데 사용됨).
     * @return 인기 CommunitySummaryResponse DTO 목록입니다.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt) FROM Comment cmt WHERE cmt.community = c) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.createdAt > :startDate " +
            "ORDER BY c.viewCount DESC, c.likeCount DESC, c.createdAt DESC")
    List<CommunitySummaryResponse> findPopularSince(@Param("startDate") ZonedDateTime startDate, Pageable pageable);

    /**
     * 키워드를 사용하여 제목, 내용, 태그에서 게시글을 검색하고 요약 정보를 반환합니다.
     * 대소문자를 구분하지 않고 검색합니다.
     *
     * 경고: 이 쿼리는 데이터 양 증가 시 심각한 성능 저하를 유발할 수 있습니다.
     * (특히 title, content, communityTag 컬럼에 인덱스가 없거나 활용되지 못할 경우)
     * 향후 Full-Text Search 또는 검색 엔진 도입을 강력히 권장합니다.
     *
     * @param keyword 검색할 키워드 문자열.
     * @param pageable 페이징 및 정렬 정보.
     * @return 검색 조건에 맞는 게시글 요약 정보(CommunitySummaryResponse)를 담고 있는 Page 객체.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "CAST((SELECT COUNT(cmt) FROM Comment cmt WHERE cmt.community = c) AS Long)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.title LIKE CONCAT('%', :keyword, '%') " +
            "   OR c.content LIKE CONCAT('%', :keyword, '%') " +
            "   OR c.communityTag LIKE CONCAT('%', :keyword, '%')")
    Page<CommunitySummaryResponse> searchSummariesByKeyword(@Param("keyword") String keyword, Pageable pageable);

    /**
     * 지정된 ID의 커뮤니티 게시글의 좋아요 수를 1 증가시킵니다.
     * 이 작업은 데이터베이스 수준에서 직접 수행됩니다.
     *
     * @param communityId 좋아요 수를 증가시킬 게시글의 ID.
     * @return 영향을 받은 행의 수 (일반적으로 1 또는 0).
     */
    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = c.likeCount + 1 WHERE c.id = :communityId")
    int incrementLikeCount(@Param("communityId") String communityId);

    /**
     * 지정된 ID의 커뮤니티 게시글의 좋아요 수를 1 감소시킵니다.
     * 좋아요 수가 0보다 작아지지 않도록 합니다.
     * 이 작업은 데이터베이스 수준에서 직접 수행됩니다.
     *
     * @param communityId 좋아요 수를 감소시킬 게시글의 ID.
     * @return 영향을 받은 행의 수 (일반적으로 1 또는 0).
     */
    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = CASE WHEN c.likeCount > 0 THEN c.likeCount - 1 ELSE 0 END WHERE c.id = :communityId")
    int decrementLikeCount(@Param("communityId") String communityId);
}