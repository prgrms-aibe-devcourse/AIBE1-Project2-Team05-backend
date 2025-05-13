package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.domain.User;
import org.springframework.security.access.AccessDeniedException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class MentoringStatusService {

    private final MentoringRepository mentoringRepository;

    @Transactional
    public void setMentoringStatus(String mentoringId, MentoringStatus mentoringStatus, User user) {
        // 1. 멘토링 세션 조회
        MentoringSessions session = mentoringRepository.findById(mentoringId)
                .orElseThrow(() -> new IllegalArgumentException("해당 멘토링 세션을 찾을 수 없습니다."));

        // 2. 현재 사용자가 멘토링 세션의 소유자인지 확인
        if (!(session.getMentee().getId().equals(user.getId()) || session.getMentor().getId().equals(user.getId()))) {
            throw new AccessDeniedException("해당 멘토링 세션에 대한 권한이 없습니다.");
        }

        // 3. 상태 업데이트
        session.setStatus(mentoringStatus);

        // 4. 변경 사항 저장
        mentoringRepository.save(session);
    }
}