package com.team05.linkup.users.service;

import com.team05.linkup.users.Users;
import com.team05.linkup.users.repository.TestUserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class QueryTestServiceConcurrencyTest {

    @Mock
    private TestUserRepository userRepository;

    @InjectMocks
    private QueryTestService queryTestService;

    private final String providerId = "test-provider-id";

    @BeforeEach
    public void setUp() {
        // 기본적으로 사용할 사용자 객체 초기화
        Users user = new Users();
        user.setProviderId(providerId);
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.of(user));
    }

    @Test
    public void testConcurrentAccess() throws InterruptedException {
        // 유저가 존재하는 상황에서 여러 스레드로 동시 접근 시나리오
        ExecutorService executor = Executors.newFixedThreadPool(5); // 5개의 스레드 풀

        // 5개의 스레드가 동시에 동일한 providerId에 대해 작업을 수행
        for (int i = 0; i < 5; i++) {
            executor.submit(() -> {
                queryTestService.testJpaPerformance(providerId, 1);
            });
        }

        executor.shutdown();
        while (!executor.isTerminated()) {
            // 모든 작업이 끝날 때까지 기다립니다
        }

        // 모든 스레드에서 update가 호출된 횟수를 확인
        verify(userRepository, times(5)).updateByUdatedAt(providerId);
        verify(userRepository, never()).save(any(Users.class)); // save는 호출되지 않아야 함
    }
}
