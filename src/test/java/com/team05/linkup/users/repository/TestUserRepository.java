package com.team05.linkup.users.repository;

import com.team05.linkup.users.Users;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface TestUserRepository extends JpaRepository<Users, String> {
    Optional<Users> findByProviderId(String providerId);


    @Modifying
    @Query("UPDATE Users u SET u.updatedAt = CURRENT_TIMESTAMP WHERE u.providerId = :providerId")
    void updateByUdatedAt(String providerId);

    @Modifying
    @Query(value = """
        INSERT INTO user (provider_id, created_at, updated_at)
        VALUES (:providerId, NOW(), NOW())
        ON DUPLICATE KEY UPDATE updated_at = NOW()
        """, nativeQuery = true)
    void upsert(@Param("providerId") String providerId);
}
