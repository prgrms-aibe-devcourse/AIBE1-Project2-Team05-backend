package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MentoringRepository extends JpaRepository<MentoringSessions, String> {
    @Query(value = "SELECT * FROM mentoring_sessions WHERE mentee_user_id = :userId ORDER BY created_at DESC LIMIT :limit", nativeQuery = true)
    List<MentoringSessions> findByMenteeUserIdWithLimit(@Param("userId") String userId, @Param("limit") int limit);


    // 멘토 마이페이지 - 매칭 현황(나의 멘토링 통계)
    // 분야(카테고리) 조회
    @Query("SELECT m.interest, COUNT(m) FROM MentoringSessions m WHERE m.mentor.id = :mentorId GROUP BY m.interest")
    List<Object[]> countMentoringByInterest(@Param("mentorId") String mentorId);

    // 매칭 현황(진행 중인 매칭)
    @Query("""
        SELECT ms
        FROM MentoringSessions ms
        WHERE ms.mentor.id = :mentorId
          AND ms.status IN (:statuses)
        ORDER BY ms.createdAt DESC
    """)
    List<MentoringSessions> findRecentSessionsByMentorIdAndStatusIn(
            @Param("mentorId") String mentorId,
            @Param("statuses") List<MentoringStatus> statuses,
            Pageable pageable
    );

    // 매칭 현황(멘토링 통계 뷰 조회)
    @Query(value = """
    SELECT 
            total_mentoring_count,
            ongoing_mentoring_count,
            average_rating,
            interest,
            interest_count
        FROM mentor_statistics
        WHERE mentor_id = :mentorId
    """, nativeQuery = true)
    List<Object[]> getMentorStatisticsFromView(@Param("mentorId") String mentorId);



}