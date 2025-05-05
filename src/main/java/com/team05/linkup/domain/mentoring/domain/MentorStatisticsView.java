package com.team05.linkup.domain.mentoring.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "mentor_statistics") // 멘토링 통계 뷰
@Getter
@NoArgsConstructor
public class MentorStatisticsView {

    @Id
    @Column(name = "mentor_user_id")
    private String mentorUserId;

    @Column(name = "total_sessions")
    private Long totalSessions;

    @Column(name = "ongoing_sessions")
    private Long ongoingSessions;

    @Column(name = "average_rating")
    private Double averageRating;

}
