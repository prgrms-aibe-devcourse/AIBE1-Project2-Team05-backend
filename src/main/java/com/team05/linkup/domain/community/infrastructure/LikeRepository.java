package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Like;
import com.team05.linkup.domain.user.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * {@link Like} 엔티티를 위한 Spring Data JPA 저장소.
 * '좋아요' 데이터 접근을 위한 CRUD 작업 및 사용자 정의 쿼리를 제공.
 */
@Repository
public interface LikeRepository extends JpaRepository<Like, String> {

    /**
     * 특정 사용자와 커뮤니티 게시글에 대한 '좋아요' 존재 여부를 확인합니다.
     *
     * @param user        확인할 사용자 엔티티
     * @param communityId 확인할 커뮤니티 게시글 ID
     * @return '좋아요'가 존재하면 true, 그렇지 않으면 false
     */
    boolean existsByUserAndCommunityId(User user, String communityId); // 사용자 객체 기반 확인

    /**
     * 특정 사용자와 특정 커뮤니티 게시글에 대한 '좋아요' 정보를 조회.
     * 사용자가 해당 게시글에 좋아요를 눌렀는지 확인하는 데 사용.
     *
     * @param user      조회할 사용자 엔티티.
     * @param community 조회할 커뮤니티 게시글 엔티티.
     * @return Optional<Like> 해당 '좋아요' 정보가 존재하면 포함하고, 없으면 비어있는 Optional 객체.
     */
    Optional<Like> findByUserAndCommunity(User user, Community community);


    long countByCommunityId(String communityId);


    /**
     * 특정 커뮤니티 게시글에 연결된 모든 '좋아요' 레코드를 삭제합니다.
     * Community 엔티티를 직접 참조하여 삭제를 수행합니다.
     * @Modifying 어노테이션은 이 쿼리가 데이터베이스 상태를 변경함을 나타냅니다.
     * @param community 삭제할 '좋아요'들이 참조하는 Community 엔티티
     */
    @Modifying
    @Query("DELETE FROM Like l WHERE l.community = :community")
    void deleteAllByCommunity(@Param("community") Community community);
}