package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;

import com.team05.linkup.domain.user.dto.MyCommentResponseDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
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
                        .mentor(mapToMentorDto(session))
                        .build())
                .toList();
    }

    public Page<MatchedMentorProfileDto> getMyMatchesPaged(String nickname, int page, int size, String status) {
        // 1. 페이징 객체 생성
        Pageable pageable = PageRequest.of(page, size);

        // 2. 닉네임 기반으로 menteeId 조회
        String menteeId = mentoringRepository.findMenteeIdByNickname(nickname);

        // 3. 상태 필터를 포함한 페이징된 매칭 세션 조회
        Page<MentoringSessions> sessionsPage;
        if ("ALL".equals(status) || status.isEmpty()) {
            // 상태 필터가 없을 경우 모든 상태 조회
            sessionsPage = mentoringRepository.findByMenteeUserIdPaged(menteeId, pageable);
        } else {
            // 상태 필터가 있을 경우 해당 상태만 조회
            MentoringStatus mentoringStatus = MentoringStatus.valueOf(status);
            sessionsPage = mentoringRepository.findByMenteeUserIdAndStatusPaged(menteeId, mentoringStatus, pageable);
        }

        // 4. DTO로 매핑
        return sessionsPage.map(session -> MatchedMentorProfileDto.builder()
                .sessionId(session.getId())
                .status(session.getStatus().name())
                .createdAt(session.getCreatedAt())
                .mentor(mapToMentorDto(session))
                .build());
    }

    private MatchedMentorProfileDto.MentorDto mapToMentorDto(MentoringSessions session) {
        return MatchedMentorProfileDto.MentorDto.builder()
                .mentorId(session.getMentor().getId())
                .nickname(session.getMentor().getNickname())
                .profileImageUrl(session.getMentor().getProfileImageUrl())
                .introduction(session.getMentor().getIntroduction())
                .interest(session.getMentor().getInterest().getDisplayName())
                .activityTime(session.getMentor().getActivityTime().getDisplayName())
                .activityType(session.getMentor().getActivityType().getDisplayName())
                .contactLink(session.getMentor().getContactLink())
                .build();
    }
}