package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.mentoring.domain.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, String> {

    @Query(value = """
        SELECT 
            u.name AS reviewer_name,
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
}
