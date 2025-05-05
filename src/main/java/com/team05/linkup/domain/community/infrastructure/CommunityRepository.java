package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import com.team05.linkup.domain.community.infra.CommunityRepositoryCustom;
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


    // 멘토 마이페이지 - 내가 등록한 재능 목록
    @Query(value = """
        SELECT 
            title, 
            community_tag_id, 
            CASE
                WHEN CHAR_LENGTH(content) > 55
                    THEN CONCAT(LEFT(content, 55), '...')
                ELSE content 
            END AS content
        FROM 
            community 
        WHERE 
            category = 'TALENT' 
            AND user_id IN (
                SELECT id FROM user WHERE nickname = :nickname
            )
        ORDER BY 
            updated_at DESC 
        LIMIT :limit
        """, nativeQuery = true)
    List<Object[]> findByCategory(@Param("nickname") String nickname, @Param("limit") int limit);

    /**
     * 마이페이지 - 내가 등록한 재능(TALENT) 목록 조회 (페이징 지원)
     *
     * @param nickname 유저 닉네임
     * @param pageable 페이지 정보 (page, size, sort 등)
     * @return 제목, 태그 ID, 본문 요약이 포함된 결과 목록
     */
    @Query(value = """
        SELECT 
            title, 
            community_tag_id, 
            CASE
                WHEN CHAR_LENGTH(content) > 55
                    THEN CONCAT(LEFT(content, 55), '...')
                ELSE content 
            END AS content
        FROM 
            community 
        WHERE 
            category = 'TALENT' 
            AND user_id IN (
                SELECT id FROM user WHERE nickname = :nickname
            )
        ORDER BY 
            updated_at DESC
        """, countQuery = """
        SELECT COUNT(*)
        FROM community
        WHERE category = 'TALENT'
          AND user_id IN (
              SELECT id FROM user WHERE nickname = :nickname
          )
    """, nativeQuery = true)
    Page<Object[]> findTalentsByNicknameWithPaging(@Param("nickname") String nickname, Pageable pageable);


    // 공통 마이페이지 - 내가 작성한 커뮤니티 게시글
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




    // 공통 마이페이지 - 내가 작성한 댓글
    @Query(value = """
    SELECT 
        cs.updated_at,
        CONCAT('"', ct.title, '" 게시글에 댓글'),            
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
        cs.updated_at DESC 
    LIMIT :limit
    """, nativeQuery = true)
    List<Object[]> findByMyCommunityComments(@Param("userId") String userId, @Param("limit") int limit);

    @Query("SELECT u.id FROM User u WHERE u.nickname = :nickname")
    String findUserIdByNickname(@Param("nickname") String nickname);


    /**
     * 마이페이지 - 내가 작성한 댓글 목록 조회 (페이징 지원)
     *
     * @param userId 사용자 ID (닉네임 기반으로 조회된 내부 식별자)
     * @param pageable 페이지 정보 (page, size, sort 등)
     * @return 댓글 작성 시각, 연결된 게시글 제목 설명, 댓글 요약이 포함된 결과 목록
     */
    @Query(value = """
        SELECT 
            cs.updated_at,
            CONCAT('"', ct.title, '" 게시글에 댓글'),            
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
            cs.updated_at DESC
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