package com.team05.linkup.domain.review.infrastructure;

import com.team05.linkup.domain.review.domain.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReviewRepository extends JpaRepository<Review, String> {
    @Query(value = """
        SELECT 
            u.nickname AS reviewer_name,
            u.profile_image_url AS reviewer_profile_image_url,
            r.created_at AS review_date,
            r.star AS star,
            r.content AS content
        FROM 
            review r
        JOIN 
            mentoring_sessions m ON r.mentoring_session_id = m.id
        JOIN 
            user u ON m.mentee_user_id = u.id
        WHERE 
            m.mentor_user_id = :mentorId
        ORDER BY 
            r.created_at DESC
        LIMIT :limit
    """, nativeQuery = true)
    List<Object[]> findReceivedReviewsByMentorId(
            @Param("mentorId") String mentorId,
            @Param("limit") int limit
    );

    @Query("SELECT r FROM Review r WHERE r.mentoringSessionId IN :sessionIds ORDER BY r.createdAt DESC")
    Page<Review> findByMentoringSessionIdIn(@Param("sessionIds") List<String> sessionIds, Pageable pageable);

    @Query(value = """
        SELECT 
            u.nickname AS reviewer_name,
            u.profile_image_url AS reviewer_profile_image_url,
            r.created_at AS review_date,
            r.star AS star,
            r.content AS content
        FROM 
            review r
        JOIN 
            mentoring_sessions m ON r.mentoring_session_id = m.id
        JOIN 
            user u ON m.mentee_user_id = u.id
        WHERE 
            m.mentor_user_id = :mentorId
        ORDER BY 
            r.created_at DESC
        LIMIT :size OFFSET :offset
    """, nativeQuery = true)
    List<Object[]> findReceivedReviewsByMentorIdWithPaging(
            @Param("mentorId") String mentorId,
            @Param("offset") int offset,
            @Param("size") int size
    );

    @Query(value = """
        SELECT 
            u.nickname AS reviewer_name,
            u.profile_image_url AS reviewer_profile_image_url,
            r.created_at AS review_date,
            r.star AS star,
            r.content AS content
        FROM 
            review r
        JOIN 
            mentoring_sessions m ON r.mentoring_session_id = m.id
        JOIN 
            user u ON m.mentee_user_id = u.id
        WHERE 
            m.mentor_user_id = :mentorId
        ORDER BY 
            r.created_at DESC
    """, countQuery = """
        SELECT 
            COUNT(*) 
        FROM 
            review r
        JOIN 
            mentoring_sessions m ON r.mentoring_session_id = m.id
        WHERE 
            m.mentor_user_id = :mentorId
    """, nativeQuery = true)
    Page<Object[]> findReceivedReviewsByMentorIdPaged(
            @Param("mentorId") String mentorId,
            Pageable pageable
    );

}
