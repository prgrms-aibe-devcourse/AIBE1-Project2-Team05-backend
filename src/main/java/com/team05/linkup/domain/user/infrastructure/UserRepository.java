package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.dto.ProfileTagInterestDTO;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.community.dto.ActiveUsersTempDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, String> , CustomerUserRepository{

    Optional<User> findById(String id);

    // 닉네임으로 Profile을 찾는 메서드
    Optional<User> findByNickname(String nickname);

    @Query("SELECT u FROM User u WHERE u.providerId = :providerId")
    Optional<User> findByProviderId(@Param("providerId") String providerId);

    Optional<User> findByProviderAndProviderId(String provider, String providerId);

    @Modifying
    @Query("""
                UPDATE User u SET u.role = :role
                WHERE u.id = :id AND u.role = 'ROLE_TEMP'
          """)
    void updateUserRole(@Param("id") String id, @Param("role") Role role);

    @Query("""
        SELECT new com.team05.linkup.domain.mentoring.dto.ProfileTagInterestDTO(u.profileTag, u.interest)
        FROM User u
        WHERE u.providerId = :providerId AND u.provider = :provider
    """)
    ProfileTagInterestDTO findProfileTagAndInterestByProviderAndProviderId(@Param("provider") String provider, @Param("providerId") String providerId);

//    @Query("""
//        SELECT u.area.areacode,
//                       area.areaName,
//                       u.sigunguCode,
//                       sigungu.sigunguname,
//                       u.nickname,
//                       u.profileTag,
//                       u.profileImageUrl,
//                       u.providerId,
//                       u.contactLink
//        FROM User u, Area area, Sigungu sigungu
//        WHERE u.providerId <> :providerId AND u.provider = :provider AND u.interest = :interest AND u.role = 'ROLE_MENTOR'
//    """)
//    List<Object[]> findOtherProfileTagsByProviderId(@Param("provider") String provider,
//                                                    @Param("providerId") String providerId,
//                                                    @Param("interest") Interest interest);

    // 닉네임을 기준으로 사용자와 지역 정보를 조회하는 쿼리
    @Query("SELECT u FROM User u LEFT JOIN FETCH u.area WHERE u.nickname = :nickname")
    Optional<User> findUserWithAreaByNickname(@Param("nickname") String nickname);

    @Query("SELECT u.interest FROM User u WHERE u.nickname = :nickname")
    Interest findInterestByNickname(@Param("nickname") String nickname);

    boolean existsByNickname(String nickname);


    /**
     * 지정된 시작일 이후의 사용자 활동(게시글 수, 댓글 수)을 집계하여 반환합니다.
     * 비활성화된 계정은 제외합니다.
     *
     * @param startDate 활동 집계 시작일
     * @return 사용자별 활동 정보 DTO 목록
     */
    @Query("SELECT NEW com.team05.linkup.domain.community.dto.ActiveUsersTempDTO(" +
            "u.id, u.nickname, u.profileImageUrl, " +
            "COALESCE(pc.postCount, 0L), COALESCE(cc.commentCount, 0L)) " +
            "FROM User u " +
            "LEFT JOIN (" +
                "SELECT p.user.id AS authorUserId, COUNT(p.id) AS postCount " +
                "FROM Community p " + // 제공해주신 Community 엔티티명 사용
                "WHERE p.createdAt >= :startDate GROUP BY p.user.id) pc ON u.id = pc.authorUserId " +
            // 댓글 수 집계: Comment 엔티티의 'userId' 필드 (String 타입)를 사용자의 id와 직접 연결
            "LEFT JOIN (" +
                "SELECT c.userId AS commentAuthorId, COUNT(c.id) AS commentCount " +
                "FROM Comment c " + // 제공해주신 Comment 엔티티명 사용
                "WHERE c.createdAt >= :startDate GROUP BY c.userId) cc ON u.id = cc.commentAuthorId " +
            "WHERE u.accountDisable = false") // User 엔티티의 accountDisable 필드 활용
    List<ActiveUsersTempDTO> findUserActivities(@Param("startDate") ZonedDateTime startDate);

}
