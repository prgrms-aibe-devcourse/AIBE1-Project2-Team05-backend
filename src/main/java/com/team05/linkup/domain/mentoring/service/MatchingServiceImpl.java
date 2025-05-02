package com.team05.linkup.domain.mentoring.service;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MatchingServiceImpl implements MatchingService {
    private static final Logger logger = LogManager.getLogger(MatchingServiceImpl.class);
    private final UserRepository userRepository;
    private final MentoringRepository mentoringRepository;

    @Override
    public void matchingMentor(String provider, String providerId, String nickname) throws Exception {
        try {
//            User user = userRepository.findByProviderAndProviderId(provider, providerId)
//                    .orElseThrow(() -> new UserNotfoundException("Mentee not found"));
//
//            User mentor = userRepository.findByNickname(nickname)
//                    .orElseThrow(() -> new UserNotfoundException("Mentor not found"));
//            userRepository.findByProviderAndProviderId(provider, providerId).ifPresent(user -> {
//                userRepository.findByNickname(nickname).ifPresent(mentor -> {
//                    MentoringSessions mentoringSessions = MentoringSessions.builder()
//                            .mentee_user_id(user)
//                            .mentor_user_id(mentor)
//                            .build();
//                    mentoringRepository.save(mentoringSessions);
//                });
//            });
        } catch (UserNotfoundException e) {
            logger.error("mentor is not found: {}", e.getMessage());
            throw new UserNotfoundException("mentor is not found");
        } catch (Exception e) {
            throw new Exception("Error in matchingMentor: " + e.getMessage(), e);
        }
    }
}
