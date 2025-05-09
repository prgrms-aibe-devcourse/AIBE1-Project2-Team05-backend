package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponseDTO;
import com.team05.linkup.domain.community.dto.CommunityWeeklyPopularDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.time.ZonedDateTime;
import java.util.List;

public interface CommunityRepository extends JpaRepository<Community, String>, CommunityRepositoryCustom {

    // 기본 정렬 쿼리 유지

    /**
     * 커뮤니티 요약의 페이지 매김된 목록을 찾습니다.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponseDTO(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, c.content, " +
            "u.profileImageUrl, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long) AS commentCount) " +
            "FROM Community c JOIN c.user u " +
            "WHERE (:category IS NULL OR c.category = :category) " +
            "  AND (:tagName IS NULL OR EXISTS (SELECT t_sub FROM c.tags t_sub WHERE t_sub.name = :tagName))")
    Page<CommunitySummaryResponseDTO> findCommunitySummaries(
            @Param("category") CommunityCategory category,
            @Param("tagName") String tagName,
            Pageable pageable);

    /**
     * 인기 게시글 조회
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponseDTO(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, c.content, " +
            "u.profileImageUrl, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long) AS commentCount) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.createdAt > :startDate " +
            "ORDER BY c.viewCount DESC, c.likeCount DESC, c.createdAt DESC")
    List<CommunitySummaryResponseDTO> findPopularSince(@Param("startDate") ZonedDateTime startDate, Pageable pageable);

    /**
     * 주간 인기 게시글 조회
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunityWeeklyPopularDTO(" +
            "c.id, c.title, c.category) " +
            "FROM Community c " +
            "WHERE c.createdAt > :startDate " +
            "ORDER BY c.viewCount DESC, c.likeCount DESC, c.createdAt DESC"
    )
    List<CommunityWeeklyPopularDTO> findWeeklyPopular(@Param("startDate") ZonedDateTime startDate, Pageable pageable);


    /**
     * 검색 쿼리
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponseDTO(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, c.content, " +
            "u.profileImageUrl, " +
            "CAST((SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id) AS Long) AS commentCount) " +
            "FROM Community c JOIN c.user u " +
            "WHERE c.title LIKE CONCAT('%', :keyword, '%') " +
            "   OR c.content LIKE CONCAT('%', :keyword, '%')")
    Page<CommunitySummaryResponseDTO> searchSummariesByKeyword(@Param("keyword") String keyword, Pageable pageable);

    // 좋아요 증감 메서드 유지
    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = c.likeCount + 1 WHERE c.id = :communityId")
    int incrementLikeCount(@Param("communityId") String communityId);

    @Modifying
    @Transactional
    @Query("UPDATE Community c SET c.likeCount = CASE WHEN c.likeCount > 0 THEN c.likeCount - 1 ELSE 0 END WHERE c.id = :communityId")
    int decrementLikeCount(@Param("communityId") String communityId);


    /**
     * 멘토 마이페이지 - 내가 등록한 재능 목록(최신 2개 조회) (미리보기용)
     * - JOIN FETCH로 태그 함께 조회 (N+1 방지)
     * -> LEFT JOIN FETCH - 태그가 없는 커뮤니티도 조회
     */
    @Query("""
        SELECT DISTINCT c FROM Community c
        LEFT JOIN FETCH c.tags
        WHERE c.user.nickname = :nickname AND c.category = 'TALENT'
        ORDER BY c.createdAt DESC
    """)
    List<Community> findLatestTalentsByNickname(@Param("nickname") String nickname, Pageable pageable);


    //
    /**
     * 멘토 마이페이지 - 내가 등록한 재능 목록 더보기(전체 페이징 조회) (더보기용)
     * - JOIN FETCH 사용하여 태그 즉시 로딩
     * -> LEFT JOIN FETCH - 태그가 없는 커뮤니티도 조회
     */
    @Query("""
        SELECT DISTINCT c FROM Community c
        LEFT JOIN FETCH c.tags
        WHERE c.user.nickname = :nickname AND c.category = 'TALENT'
        ORDER BY c.createdAt DESC
    """)
    Page<Community> findTalentsByNicknameWithPaging(@Param("nickname") String nickname, Pageable pageable);



    // 공통 마이페이지 - 내가 작성한 커뮤니티 게시글
    @Query(value = """
    SELECT 
        c.id,
        c.created_at,
        c.category,
        c.title,
        CASE
            WHEN CHAR_LENGTH(c.content) > 55
                THEN CONCAT(LEFT(c.content, 55), '...')
            ELSE c.content
        END AS content,
        c.view_count,
        c.like_count,
        COUNT(ct.id) AS comment_count
    FROM 
        community c 
    LEFT JOIN 
        comments ct ON c.id = ct.community_id
    WHERE 
        c.category != 'TALENT'
        AND c.user_id IN (
            SELECT u.id FROM user u WHERE u.nickname = :nickname
        )
    GROUP BY 
        c.id
    ORDER BY 
        c.updated_at DESC
    LIMIT :limit
    """, nativeQuery = true)
    List<Object[]> findByCommunityPosts(@Param("nickname") String nickname, @Param("limit") int limit);

    /**
     * 마이페이지 - 내가 작성한 커뮤니티 게시글 목록 조회 (페이징)
     *
     * @param nickname 유저 닉네임
     * @param pageable 페이지 정보 (page, size 등)
     */
    @Query(value = """
    SELECT 
        c.id,
        c.updated_at,
        c.category,
        c.title,
        CASE
            WHEN CHAR_LENGTH(c.content) > 55
                THEN CONCAT(LEFT(c.content, 55), '...')
            ELSE c.content
        END AS content,
        c.view_count,
        c.like_count,
        COUNT(ct.id) AS comment_count
    FROM 
        community c 
    LEFT JOIN 
        comments ct ON c.id = ct.community_id
    WHERE 
        c.category != 'TALENT'
        AND c.user_id IN (
            SELECT u.id FROM user u WHERE u.nickname = :nickname
        )
    GROUP BY 
        c.id
    ORDER BY 
        c.updated_at DESC
    """,
            countQuery = """
    SELECT COUNT(*) FROM community 
    WHERE category != 'TALENT'
      AND user_id IN (
          SELECT id FROM user WHERE nickname = :nickname
      )
    """,
            nativeQuery = true)
    Page<Object[]> findCommunityPostsWithPaging(@Param("nickname") String nickname, Pageable pageable);




    /**
     * 마이페이지 - 내가 작성한 댓글 목록 조회 (미리보기)
     *
     * @param userId 유저 ID
     * @param limit 조회할 댓글 수
     * @return 댓글이 달린 게시글의 ID, 카테고리, 작성일, 게시글 제목, 댓글 내용(요약 포함)
     */
    @Query(value = """
    SELECT 
        ct.id AS post_id,
        ct.category,
        cs.created_at,
        ct.title AS post_title,
        CASE
            WHEN CHAR_LENGTH(cs.comment_content) > 55
                THEN CONCAT(LEFT(cs.comment_content, 55), '...')
            ELSE cs.comment_content
        END AS comment_content
    FROM 
        comments cs JOIN community ct ON cs.community_id = ct.id
    WHERE 
        cs.user_id = :userId 
    ORDER BY 
        cs.created_at DESC 
    LIMIT :limit
    """, nativeQuery = true)
    List<Object[]> findByMyCommunityComments(@Param("userId") String userId, @Param("limit") int limit);

    @Query("SELECT u.id FROM User u WHERE u.nickname = :nickname")
    String findUserIdByNickname(@Param("nickname") String nickname);


    /**
     * 마이페이지 - 내가 작성한 댓글 목록 조회 (페이징)
     *
     * @param userId 유저 ID
     * @param pageable 페이지 정보 (page, size 등)
     * @return 댓글이 달린 게시글의 ID, 카테고리, 작성일, 게시글 제목, 댓글 내용(요약 포함)
     */
    @Query(value = """
    SELECT 
        ct.id AS post_id,
        ct.category,
        cs.created_at,
        ct.title AS post_title,
        CASE
            WHEN CHAR_LENGTH(cs.comment_content) > 55
                THEN CONCAT(LEFT(cs.comment_content, 55), '...')
            ELSE cs.comment_content
        END AS comment_content
    FROM 
        comments cs JOIN community ct ON cs.community_id = ct.id
    WHERE 
        cs.user_id = :userId 
    ORDER BY 
        cs.created_at DESC
    """, countQuery = """
    SELECT COUNT(*) 
    FROM comments 
    WHERE user_id = :userId
    """, nativeQuery = true)
    Page<Object[]> findMyCommentsPaged(@Param("userId") String userId, Pageable pageable);


    // 공통 마이페이지 - 내가 북마크한 게시글
    @Query(value = """
        SELECT 
            b.updated_at,
            ct.title,
            CASE
                WHEN CHAR_LENGTH(ct.content) > 55
                    THEN CONCAT(LEFT(ct.content, 55), '...')
                ELSE ct.content
            END AS content
        FROM 
            bookmark b JOIN community ct ON b.community_id = ct.id
        WHERE 
            b.user_id = :userId 
        ORDER BY 
            b.updated_at DESC 
        LIMIT :limit
        """, nativeQuery = true)
    List<Object[]> findByMyBookmarks(@Param("userId") String userId, @Param("limit") int limit);

    /**
     * 관심 목록 - 내가 북마크한 게시글 (페이징 지원)
     */
    @Query(value = """
        SELECT 
            b.updated_at,
            ct.title,
            CASE
                WHEN CHAR_LENGTH(ct.content) > 55
                    THEN CONCAT(LEFT(ct.content, 55), '...')
                ELSE ct.content
            END AS content
        FROM 
            bookmark b JOIN community ct ON b.community_id = ct.id
        WHERE 
            b.user_id = :userId
        ORDER BY 
            b.updated_at DESC
    """, countQuery = """
        SELECT COUNT(*)
        FROM bookmark b
        WHERE b.user_id = :userId
    """, nativeQuery = true)
    Page<Object[]> findBookmarksByUserId(@Param("userId") String userId, Pageable pageable);

    // 공통 마이페이지 - 내가 좋아요한 게시글
    @Query(value = """
    SELECT 
        l.updated_at,
        c.title,
        CASE
            WHEN CHAR_LENGTH(c.content) > 55
                THEN CONCAT(LEFT(c.content, 55), '...')
            ELSE c.content
        END AS content
    FROM 
        likes l JOIN community c ON l.community_id = c.id
    WHERE 
        l.user_id = :user
    ORDER BY 
        l.updated_at DESC 
    LIMIT :limit
""", nativeQuery = true)
    List<Object[]> findByMyLikePosts(@Param("user") String user, @Param("limit") int limit);

    // 수동 매칭 현황 - 재능 기부 게시글
    List<Community> findByCategoryAndUserNicknameOrderByUpdatedAtDesc(
            CommunityCategory category, String nickname);

//    QueryDSL 방식으로 변경 (일단 nativeQuery 버전은 주석으로 임시 유지)
//    // 멘토 마이페이지_매칭 현황 - (인기 QnA 조회 쿼리)
//    @Query(value = """
//    SELECT
//        c.id,
//        c.updated_at,
//        c.title,
//        CASE
//            WHEN CHAR_LENGTH(c.content) > 55 THEN CONCAT(LEFT(c.content, 55), '...')
//            ELSE c.content
//        END AS content
//    FROM community c
//    WHERE
//        c.category = 'QUESTION'
//        AND c.community_tag_id = :interestTag
//    ORDER BY c.updated_at DESC
//    LIMIT :limit
//""", nativeQuery = true)
//    List<Object[]> findPopularQnAPostsByInterest(
//            @Param("interestTag") String interestTag,
//            @Param("limit") int limit
//    );


    /**
     * 관심 목록 - 내가 좋아요한 게시글 (페이징 지원)
     */
    @Query(value = """
        SELECT 
            l.updated_at,
            c.title,
            CASE
                WHEN CHAR_LENGTH(c.content) > 55
                    THEN CONCAT(LEFT(c.content, 55), '...')
                ELSE c.content
            END AS content
        FROM 
            likes l JOIN community c ON l.community_id = c.id
        WHERE 
            l.user_id = :userId
        ORDER BY 
            l.updated_at DESC
    """, countQuery = """
        SELECT COUNT(*)
        FROM likes l
        WHERE l.user_id = :userId
    """, nativeQuery = true)
    Page<Object[]> findLikesByUserId(@Param("userId") String userId, Pageable pageable);
}