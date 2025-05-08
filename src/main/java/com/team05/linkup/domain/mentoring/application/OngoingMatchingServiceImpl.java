package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.dto.OngoingMatchingDTO;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.time.ZoneOffset;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OngoingMatchingServiceImpl implements OngoingMatchingService {

    private final MentoringRepository mentoringRepository;

    @Override
    public List<OngoingMatchingDTO> getOngoingMatchingsForMentor(String mentorId, int limit) {
        // Pageable 객체 생성
        PageRequest pageRequest = PageRequest.of(0, limit);

        // 진행중/완료 상태 필터
        List<MentoringStatus> statuses = List.of(MentoringStatus.IN_PROGRESS, MentoringStatus.COMPLETED);

        // 쿼리 실행
        List<MentoringSessions> sessions = mentoringRepository
                .findRecentSessionsByMentorIdAndStatusIn(mentorId, statuses, pageRequest);

        // DTO 변환
        return sessions.stream().map(session -> {
            User mentee = session.getMentee();
            return OngoingMatchingDTO.builder()
                    .sessionId(session.getId())
                    .menteeNickname(mentee.getNickname())
                    .menteeProfileImageUrl(mentee.getProfileImageUrl())
                    .matchingDate(session.getCreatedAt().toInstant().atZone(ZoneOffset.UTC).toString())
                    .category(session.getInterest().getDisplayName())
                    .tag(mentee.getProfileTag())
                    .description(mentee.getIntroduction())
                    .status(session.getStatus().getStatusName()) // 한글 표시
                    .contactLink(mentee.getContactLink())
                    .build();
        }).toList();
    }
}
