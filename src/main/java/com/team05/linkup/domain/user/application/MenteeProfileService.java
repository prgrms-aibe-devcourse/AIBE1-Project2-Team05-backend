package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class MenteeProfileService {

    private final MentoringRepository mentoringRepository;

    public List<MatchedMentorProfileDto> getMyMentoringSessions(String menteeId, int limit) {
        List<MentoringSessions> sessions = mentoringRepository.findByMenteeUserIdWithLimit(menteeId, limit);

        return sessions.stream()
                .map(session -> MatchedMentorProfileDto.builder()
                        .sessionId(session.getId())
                        .status(session.getStatus().name())
                        .createdAt(session.getCreatedAt())
                        .mentor(MatchedMentorProfileDto.MentorDto.builder()
                                .mentorId(session.getMentor().getId())
                                .nickname(session.getMentor().getNickname())
                                .profileImageUrl(session.getMentor().getProfileImageUrl())
                                .introduction(session.getMentor().getIntroduction())
                                .interest(session.getMentor().getInterest().getDisplayName())
                                .activityTime(session.getMentor().getActivityTime().getDisplayName())
                                .activityType(session.getMentor().getActivityType().getDisplayName())
                                .contactLink(session.getMentor().getContactLink())
                                .build())
                        .build())
                .toList();
    }
}
