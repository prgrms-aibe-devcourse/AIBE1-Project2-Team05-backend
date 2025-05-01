package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MenteeProfileService {

    private final MentoringRepository mentoringRepository;

    public List<MentoringSessions> getMyMentoringSessions(String nickname, int limit) {
        List<MentoringSessions> sessions = mentoringRepository.findByMenteeNicknameWithLimit(nickname, 2);
        return sessions;
    }
}
