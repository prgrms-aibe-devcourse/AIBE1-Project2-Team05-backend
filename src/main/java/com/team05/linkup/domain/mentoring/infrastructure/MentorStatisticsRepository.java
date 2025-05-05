package com.team05.linkup.domain.mentoring.infrastructure;

import com.team05.linkup.domain.mentoring.domain.MentorStatisticsView;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MentorStatisticsRepository extends JpaRepository<MentorStatisticsView, String> {

    // mentorUserId 기준으로 단일 통계 조회
    MentorStatisticsView findByMentorUserId(String mentorUserId);
}
