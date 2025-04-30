package com.team05.linkup.common.scheduler;

import com.team05.linkup.domain.user.infrastructure.RefreshTokenRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.ZonedDateTime;

@Component
@RequiredArgsConstructor
public class RefreshTokenCleanScheduler {
    private static final Logger logger = LogManager.getLogger();
    private final RefreshTokenRepository refreshTokenRepository;

    @Scheduled(cron = "0 0 0 * * *")
    @Transactional
    public void cleanUsedRefreshToken() throws Exception {
        try {
            ZonedDateTime now = ZonedDateTime.now();
            refreshTokenRepository.deleteAllUserTokens(now);
            logger.info("clean used refresh token");
        } catch (Exception e) {
            logger.error("clean used refresh token Exception error {}", e.getMessage());
            throw new Exception("clean used refresh token Exception error :", e);
        }
    }
}
