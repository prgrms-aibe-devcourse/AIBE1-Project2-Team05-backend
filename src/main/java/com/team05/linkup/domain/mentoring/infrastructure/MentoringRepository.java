package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MentoringRepository extends JpaRepository<MentoringSessions, String> {
    @Query(value = "SELECT * FROM mentoring_sessions WHERE mentee_user_id = :userId ORDER BY created_at DESC LIMIT :limit", nativeQuery = true)
    List<MentoringSessions> findByMenteeUserIdWithLimit(@Param("userId") String userId, @Param("limit") int limit);

    // 멘토 마이페이지
    // 총 멘토링 수
    Long countByMentor_Id(String mentorId);

    // 진행 중 멘토링 수
    Long countByMentor_IdAndStatusIn(String mentorId, List<MentoringStatus> statuses);

    // 분야(카테고리) 조회
//    @Query("SELECT DISTINCT m.interest FROM MentoringSessions m WHERE m.mentor.id = :mentorId")
//    List<Interest> findDistinctCategoriesByMentorId(@Param("mentorId") String mentorId);
    @Query("SELECT m.interest, COUNT(m) FROM MentoringSessions m WHERE m.mentor.id = :mentorId GROUP BY m.interest")
    List<Object[]> countMentoringByInterest(@Param("mentorId") String mentorId);
}