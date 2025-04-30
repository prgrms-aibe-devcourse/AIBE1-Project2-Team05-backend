package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.user.domain.User;
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

    Optional<User> findByProviderAndProviderId(String provider, String providerId);

    @Modifying
    @Query("""
                UPDATE User u SET u.role = :role
                WHERE u.providerId = :providerId
          """)
    void updateUserRole(@Param("providerId") String id, @Param("role") String role);
}