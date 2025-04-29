package com.team05.linkup.users.service;

import com.team05.linkup.users.Users;
import com.team05.linkup.users.repository.TestUserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class QueryTestServiceTest {

    @Mock
    private TestUserRepository userRepository;

    @InjectMocks
    private QueryTestService queryTestService;

    private final String providerId = "test-provider-id";

    @Test
    public void testJpaPerformance_WhenUserExists() {
        // Arrange
        Users user = new Users();
        user.setProviderId(providerId);
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.of(user));

        // Act
        queryTestService.testJpaPerformance(providerId, 5);

        // Assert
        verify(userRepository, times(5)).findByProviderId(providerId);
        verify(userRepository, times(5)).updateByUdatedAt(providerId);
        verify(userRepository, never()).save(any(Users.class));
    }

    @Test
    public void testJpaPerformance_WhenUserDoesNotExist() {
        // Arrange
        when(userRepository.findByProviderId(providerId)).thenReturn(Optional.empty());

        // Act
        queryTestService.testJpaPerformance(providerId, 3);

        // Assert
        verify(userRepository, times(3)).findByProviderId(providerId);
        verify(userRepository, never()).updateByUdatedAt(any(String.class));
        verify(userRepository, times(3)).save(any(Users.class));
    }

    @Test
    public void testJpaPerformance_WithZeroRepeatCount() {
        // Act
        queryTestService.testJpaPerformance(providerId, 0);

        // Assert
        verify(userRepository, never()).findByProviderId(any(String.class));
        verify(userRepository, never()).updateByUdatedAt(any(String.class));
        verify(userRepository, never()).save(any(Users.class));
    }

    @Test
    public void testNativeUpsertPerformance() {
        String providerId = "upsert-test-id";
        int repeatCount = 1000;

        queryTestService.testNativeUpsert(providerId, repeatCount);
    }

}