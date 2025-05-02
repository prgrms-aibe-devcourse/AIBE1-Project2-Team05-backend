package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Bookmark;
import com.team05.linkup.domain.user.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

/**
 * {@link Bookmark} 엔티티에 대한 데이터 접근 작업을 처리하는 Spring Data JPA 리포지토리 인터페이스.
 */
public interface BookmarkRepository extends JpaRepository<Bookmark, String> {

    /**
     * 특정 사용자와 커뮤니티 게시글에 대한 북마크 존재 여부를 확인합니다.
     *
     * @param user        확인할 사용자 엔티티
     * @param communityId 확인할 커뮤니티 게시글 ID
     * @return 북마크가 존재하면 true, 그렇지 않으면 false
     */
    boolean existsByUserAndCommunityId(User user, String communityId); // 사용자 객체 기반 확인

    /**
     * 특정 사용자와 커뮤니티 게시글에 해당하는 북마크 정보를 조회합니다.
     * 토글 로직에서 기존 북마크를 삭제하기 위해 사용됩니다.
     *
     * @param user        조회할 사용자 엔티티
     * @param communityId 조회할 커뮤니티 게시글 ID
     * @return Optional<Bookmark> 객체. 북마크가 존재하면 해당 엔티티를, 없으면 비어있는 Optional을 반환합니다.
     */
    Optional<Bookmark> findByUserAndCommunityId(User user, String communityId); // 사용자 객체 기반 조회

}