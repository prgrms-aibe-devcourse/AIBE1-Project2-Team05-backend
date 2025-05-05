package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class FilterMatchingService {

    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final MentoringRepository mentoringRepository;

    public String createMatching(String nickname, UserPrincipal userPrincipal) {
        // 1. 닉네임 유효성 검증
        if (nickname == null || nickname.isEmpty()) {
            throw new IllegalArgumentException("닉네임이 유효하지 않습니다.");
        }

        // 2. 닉네임으로 멘토 조회
        User mentor = userRepository.findByNickname(nickname)
                .orElseThrow(() -> new IllegalArgumentException("사용자를 찾을 수 없습니다."));

        // 3. 현재 사용자 조회
        String principalProvider = userPrincipal.provider();
        String principalProviderId = userPrincipal.providerId();
        User mentee = userRepository.findByProviderAndProviderId(principalProvider, principalProviderId)
                .orElseThrow(() -> new IllegalArgumentException("현재 사용자를 찾을 수 없습니다."));


        // 4. 멘토링 세션 생성
        MentoringSessions session = MentoringSessions.builder()
                .mentor(mentor)
                .mentee(mentee)
                .interest(mentor.getInterest())
                .status(MentoringStatus.IN_PROGRESS) // 상태: 진행 중
                .build();

        // 5. 저장
        mentoringRepository.save(session);
        logger.info("매칭이 성공적으로 생성되었습니다. 멘토: {}, 멘티: {}", mentor.getNickname(), mentee.getNickname());

        // 6. 멘토의 contactLink 반환
        return mentor.getContactLink();
    }
}
