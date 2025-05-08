package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Tag;
import com.team05.linkup.domain.community.dto.TagDTO;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.ZonedDateTime;
import java.util.List;
import java.util.Optional;

/**
 * Tag 엔티티에 대한 데이터 접근 계층(Repository)
 * JpaRepository를 상속받아 기본적인 CRUD 기능을 제공하며,
 * 필요한 커스텀 쿼리 메서드를 정의할 수 있습니다.
 */
@Repository
public interface TagRepository extends JpaRepository<Tag, Long> {

    /**
     * 태그 이름으로 기존 태그를 조회합니다. (대소문자 구분)
     * @param name 조회할 태그 이름
     * @return Optional<Tag> 조회된 태그 (없으면 Optional.empty())
     */
    Optional<Tag> findByName(String name);

    // 최근 N일 동안 사용된 태그를 빈도순으로 조회
    // COUNT(c.id) 대신 COUNT(t.id) 또는 조인 테이블의 레코드를 세는 것이 더 정확할 수 있습니다.
    @Query("SELECT new com.team05.linkup.domain.community.dto.TagDTO(t.name) " +
            "FROM Community c JOIN c.tags t " +
            "WHERE c.createdAt >= :sinceDate " +
            "GROUP BY t.id, t.name " + // t.id 도 GROUP BY에 포함하는 것이 좋습니다.
            "ORDER BY COUNT(c.id) DESC, t.name ASC")
    List<TagDTO> findPopularTagsSince(@Param("sinceDate") ZonedDateTime sinceDate, Pageable pageable);

    boolean existsByName(String name); // 태그 존재 여부 확인 메소드 (활용 가능)
}