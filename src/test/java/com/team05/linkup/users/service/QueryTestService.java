package com.team05.linkup.users.service;

import com.team05.linkup.users.Users;
import com.team05.linkup.users.repository.TestUserRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class QueryTestService {

    private final TestUserRepository userRepository;

    public QueryTestService(TestUserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Transactional
    public void testJpaPerformance(String providerId, int repeatCount) {
        long start = System.nanoTime();

        for (int i = 0; i < repeatCount; i++) {
            Optional<Users> userOpt = userRepository.findByProviderId(providerId);
            if (userOpt.isPresent()) {
                userRepository.updateByUdatedAt(providerId);
            } else {
                Users newUser = new Users();
                newUser.setProviderId(providerId);
                userRepository.save(newUser);
            }
        }

        long end = System.nanoTime();
        System.out.println("Execution Time: " + (end - start) / 1_000_000 + " ms");
    }

    @Transactional
    public void testNativeUpsert(String providerId, int repeatCount) {
        long start = System.nanoTime();

        for (int i = 0; i < repeatCount; i++) {
            userRepository.upsert(providerId);
        }

        long end = System.nanoTime();
        System.out.println("Execution Time: " + (end - start) / 1_000_000 + " ms");
    }

}
