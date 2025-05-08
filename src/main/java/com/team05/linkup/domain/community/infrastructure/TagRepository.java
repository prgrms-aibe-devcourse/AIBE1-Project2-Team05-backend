package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Tag;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

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
}