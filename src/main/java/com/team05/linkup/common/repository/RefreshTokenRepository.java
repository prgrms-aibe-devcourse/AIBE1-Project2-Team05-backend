package com.team05.linkup.common.repository;

import com.team05.linkup.domain.RefreshToken;
import com.team05.linkup.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.ZonedDateTime;
import java.util.Optional;

@Repository
public interface RefreshTokenRepository extends JpaRepository<RefreshToken, String> {

    @Query("SELECT r FROM RefreshToken r JOIN FETCH r.user u WHERE u.providerId = :providerId AND r.used = false")
    Optional<RefreshToken> findByProviderId(@Param("providerId") String providerId);

    @Modifying
    @Query("UPDATE RefreshToken r SET r.used = true WHERE r.user = :userId AND r.used = false")
    void invalidateAllUserTokens(@Param("userId") User userId);

    @Modifying
    @Query("UPDATE RefreshToken r SET r.used = :used WHERE r.id = :id")
    void updateUsedStatus(@Param("id") String id, @Param("used") boolean used);

    @Modifying
    @Query("DELETE FROM RefreshToken r WHERE r.used = true OR r.expiredAt < :expiredAt")
    void deleteAllUserTokens(@Param("expiredAt") ZonedDateTime expiredAt);
}