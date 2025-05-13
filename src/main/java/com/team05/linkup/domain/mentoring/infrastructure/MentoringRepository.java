package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface MentoringRepository extends JpaRepository<MentoringSessions, String> {
    @Query(value = "SELECT * FROM mentoring_sessions WHERE mentee_user_id = :userId ORDER BY created_at DESC LIMIT :limit", nativeQuery = true)
    List<MentoringSessions> findByMenteeUserIdWithLimit(@Param("userId") String userId, @Param("limit") int limit);

    @Query("SELECT m FROM MentoringSessions m WHERE m.mentee.id = :menteeId AND m.status = :status")
    List<MentoringSessions> findByMenteeIdAndStatus(@Param("menteeId") String menteeId, @Param("status") MentoringStatus status);

    @Query(value = "SELECT * FROM mentoring_sessions WHERE id = :id", nativeQuery = true)
    Optional<MentoringSessions> findMentoringSessionById(@org.springframework.data.repository.query.Param("id") String id);

    @Query("SELECT m FROM MentoringSessions m JOIN FETCH m.mentor JOIN FETCH m.mentee WHERE m.mentee.id = :menteeId")
    List<MentoringSessions> findByMenteeIdWithMentorAndMentee(@Param("menteeId") String menteeId);


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

    // 닉네임으로 menteeId 조회
    @Query("SELECT u.id FROM User u WHERE u.nickname = :nickname")
    String findMenteeIdByNickname(@Param("nickname") String nickname);

    // menteeId로 페이징된 매칭 세션 조회
    @Query("SELECT m FROM MentoringSessions m WHERE m.mentee.id = :menteeId ORDER BY m.createdAt DESC")
    Page<MentoringSessions> findByMenteeUserIdPaged(@Param("menteeId") String menteeId, Pageable pageable);

    // menteeId로 페이징된 매칭 세션 조회 + 상태 필터링
    @Query("SELECT m FROM MentoringSessions m WHERE m.mentee.id = :menteeId AND m.status = :status ORDER BY m.createdAt DESC")
    Page<MentoringSessions> findByMenteeUserIdAndStatusPaged(@Param("menteeId") String menteeId, @Param("status") MentoringStatus status, Pageable pageable);
}
