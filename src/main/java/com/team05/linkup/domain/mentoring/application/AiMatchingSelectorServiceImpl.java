package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.common.exception.DuplicateMentoringMatchException;
import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.mentoring.infrastructure.CustomUserRepositoryImpl;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AiMatchingSelectorServiceImpl implements MatchingService {
    private static final Logger logger = LogManager.getLogger(AiMatchingSelectorServiceImpl.class);
    private final UserRepository userRepository;
    private final MentoringRepository mentoringRepository;
    private final CustomUserRepositoryImpl customUserRepositoryImpl;

    @Override
    public void matchingMentor(String provider, String providerId, String nickname) throws Exception {
        try {
            User mentee = userRepository.findByProviderAndProviderId(provider, providerId)
                    .orElseThrow(() -> new UserNotfoundException("Mentee not found"));

            User mentor = userRepository.findByNickname(nickname)
                    .orElseThrow(() -> new UserNotfoundException("Mentor not found"));

            boolean exist = customUserRepositoryImpl.existsMentoringSession(providerId, nickname);

            if (exist) {
                logger.debug("mentee {} is already matched with mentor {}", nickname, providerId);
                throw new DuplicateMentoringMatchException("mentee is already matched with mentor");
            }
            MentoringSessions newMentoringSessions = MentoringSessions.builder()
                                                    .mentor(mentor)
                                                    .mentee(mentee)
                                                    .interest(mentor.getInterest())
                                                    .status(MentoringStatus.IN_PROGRESS)
                                                    .build();
            logger.debug("new mentoring session: {}", newMentoringSessions);
            mentoringRepository.save(newMentoringSessions);
        } catch (Exception e) {
            logger.error("Error in matchingMentor: {}", e.getMessage());
            throw new Exception("Error in matchingMentor: " + e.getMessage(), e);
        }
    }
}
