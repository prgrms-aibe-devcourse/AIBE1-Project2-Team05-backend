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
public class QueryTestServiceTest {

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
    public void testUserRegistration_WhenUserDoesNotExist() {
        // 유저가 없을 때 새 유저를 저장
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.empty());

        queryTestService.testJpaPerformance(providerId, 1); // 반복 횟수는 1로 설정

        // 새로 저장된 유저에 대한 save 호출 확인
        verify(userRepository, times(1)).save(any(Users.class));
        verify(userRepository, never()).updateByUdatedAt(any(String.class)); // update는 호출되지 않아야 함
    }

    @Test
    public void testUpdateExistingUser_WhenUserExists() {
        // 유저가 이미 존재할 때, updatedAt을 갱신
        Users user = new Users();
        user.setProviderId(providerId);
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.of(user));

        queryTestService.testJpaPerformance(providerId, 1);

        // update 호출 확인
        verify(userRepository, times(1)).updateByUdatedAt(providerId);
        verify(userRepository, never()).save(any(Users.class)); // save는 호출되지 않아야 함
    }

    @Test
    public void testNativeUpsert_WhenUserDoesNotExist() {
        // 유저가 없을 경우 upsert를 통해 새로운 사용자 추가
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.empty());

        // 반복 횟수를 1로 설정
        queryTestService.testNativeUpsert(providerId, 1);

        // `save`가 호출되어 새로운 유저가 추가되었는지 확인
        verify(userRepository, times(1)).save(any(Users.class));
        verify(userRepository, never()).updateByUdatedAt(any(String.class)); // update는 호출되지 않아야 함
    }

    @Test
    public void testNativeUpsert_WhenUserExists() {
        // 유저가 존재할 경우, `updatedAt`을 갱신
        Users user = new Users();
        user.setProviderId(providerId);
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.of(user));

        // 반복 횟수를 1로 설정
        queryTestService.testNativeUpsert(providerId, 1);

        // `updateByUdatedAt`이 호출되었는지 확인
        verify(userRepository, times(1)).updateByUdatedAt(providerId);
        verify(userRepository, never()).save(any(Users.class)); // save는 호출되지 않아야 함
    }

    @Test
    public void testConcurrentNativeUpsert() throws InterruptedException {
        // 동시성 테스트: 5개의 스레드가 동시에 upsert를 실행
        ExecutorService executor = Executors.newFixedThreadPool(5); // 5개의 스레드 풀

        // 5개의 스레드가 동시에 동일한 providerId에 대해 작업을 수행
        for (int i = 0; i < 5; i++) {
            executor.submit(() -> {
                queryTestService.testNativeUpsert(providerId, 1);
            });
        }

        executor.shutdown();
        while (!executor.isTerminated()) {
            // 모든 작업이 끝날 때까지 기다립니다
        }

        // upsert가 모두 처리되었는지 확인
        verify(userRepository, times(5)).updateByUdatedAt(providerId);
        verify(userRepository, never()).save(any(Users.class)); // save는 호출되지 않아야 함
    }
}
