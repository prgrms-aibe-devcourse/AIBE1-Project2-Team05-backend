package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface MentoringRepository extends JpaRepository<MentoringSessions, String> {
    @Query(value = "SELECT * FROM mentoring_sessions WHERE mentee_user_id = :userId ORDER BY created_at DESC LIMIT :limit", nativeQuery = true)
    List<MentoringSessions> findByMenteeUserIdWithLimit(@Param("userId") String userId, @Param("limit") int limit);

    @Query("SELECT m FROM MentoringSessions m WHERE m.mentee.id = :menteeId AND m.status = :status")
    List<MentoringSessions> findByMenteeIdAndStatus(@Param("menteeId") String menteeId, @Param("status") MentoringStatus status);

    @Query(value = "SELECT * FROM mentoring_sessions WHERE id = :id", nativeQuery = true)
    Optional<MentoringSessions> findMentoringSessionById(@org.springframework.data.repository.query.Param("id") String id);
}
