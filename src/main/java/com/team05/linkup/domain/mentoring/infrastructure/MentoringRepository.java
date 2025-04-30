package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

public interface MentoringRepository extends JpaRepository<MentoringSessions, String> {

    @Query(value = "SELECT * FROM mentoring_session WHERE mentee_nickname = :nickname ORDER BY created_at DESC LIMIT :limit", nativeQuery = true)
    List<MentoringSessions> findByMenteeNicknameWithLimit(@Param("nickname") String nickname, @Param("limit") int limit);
}