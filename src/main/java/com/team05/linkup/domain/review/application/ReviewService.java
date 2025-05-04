package com.team05.linkup.domain.review.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.review.dto.MyCompletedMentoringDTO;
import com.team05.linkup.domain.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private static final Logger logger = LogManager.getLogger();
    private final MentoringRepository mentoringRepository;

    public List<MyCompletedMentoringDTO> getCompletedMentoringSessions(User user) {

        // userId와 상태가 COMPLETED인 멘토링 세션 조회
        List<MentoringSessions> completedSessions = mentoringRepository.findByMenteeIdAndStatus(user.getId(), MentoringStatus.COMPLETED);

        logger.debug(completedSessions);
        completedSessions.forEach(session -> {
            logger.debug("Mentoring Session ID: " + session.getId());
            logger.debug("Mentor Name: " + session.getMentor().getName());
        });

        // DTO로 변환
        return completedSessions.stream()
                .map(session -> MyCompletedMentoringDTO.builder()
                        .sessionId(session.getId())
                        .mentorName(session.getMentor().getName())
                        .build())
                .collect(Collectors.toList());
    }
}