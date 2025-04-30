package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    Optional<User> findById(String id);

    // 닉네임으로 Profile을 찾는 메서드
    Optional<User> findByNickname(String nickname);

    @Query("SELECT u FROM User u WHERE u.providerId = :providerId")
    Optional<User> findByProviderId(@Param("providerId") String providerId);

    Optional<User> findByProviderAndProviderId(String provider, String providerId);

    @Modifying
    @Query("""
                UPDATE User u SET u.role = :role
                WHERE u.providerId = :providerId AND u.role = 'ROLE_TEMP'
          """)
    void updateUserRole(@Param("providerId") String id, @Param("role") Role role);

    @Query("""
        SELECT u.profileTag
        FROM User u
        WHERE u.providerId = :providerId
    """)
    String findProfileTagByProviderId(@Param("providerId") String providerId);

    @Query("""
        SELECT u.providerId, u.profileImageUrl
        FROM User u
        WHERE u.providerId <> :providerId
    """)
    List<Object[]> findOtherProfileTagsByProviderId(@Param("providerId") String providerId);

}