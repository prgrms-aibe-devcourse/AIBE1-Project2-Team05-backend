package com.team05.linkup.common.application;

import com.team05.linkup.domain.user.infrastructure.UserRepository;
import com.team05.linkup.domain.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@Transactional
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private static final Logger logger = LogManager.getLogger(UserServiceImpl.class.getName());

    @Override
    public User saveOrUpdateUser(User user) {
        try {
            String provider = user.getProvider();
            String providerId = user.getProviderId();

            Optional<User> existingUserOpt = userRepository.findByProviderAndProviderId(provider, providerId);

            if (existingUserOpt.isPresent()) {
                User existingUser = existingUserOpt.get();

                logger.info("Updating existing user with providerId: {}", providerId);
                return userRepository.save(existingUser);
            } else {
                // Save new user
                logger.info("Saving new user with providerId: {}", providerId);
                return userRepository.save(user);
            }
        } catch (Exception e) {
            logger.error("Error in saveOrUpdateUser: {}", e.getMessage());
            throw new RuntimeException("Error saving or updating user: " + e.getMessage(), e);
        }
    }
}
