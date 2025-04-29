package com.team05.linkup.common.repository;

import com.team05.linkup.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    Optional<User> findById(String id);

    @Query("SELECT u FROM User u WHERE u.providerId = :providerId")
    Optional<User> findByProviderId(@Param("providerId") String providerId);

    @Modifying
    @Query(value = """
    INSERT INTO user (
        id, provider, provider_id, user_name_attribute, name, nickname,
        role, profile_image_url, account_disable, area_id, introduction,
        interest, activity_time, activity_type, contact_link, match_status,
        profile_tag, created_at, updated_at
    )
    VALUES (
        UUID(), :provider, :providerId, :userNameAttribute, :name, :nickname,
        :role, :profileImageUrl, false, :areaId, :introduction,
        :interest, :activityTime, :activityType, :contactLink, false,
        :profileTag, NOW(), NOW()
    )
    ON DUPLICATE KEY UPDATE
        updated_at = NOW()
    """, nativeQuery = true)
    void upsertUserByProvider(User user);


}
