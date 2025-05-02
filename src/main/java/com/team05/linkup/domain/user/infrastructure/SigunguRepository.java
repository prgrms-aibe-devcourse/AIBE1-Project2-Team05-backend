package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.user.domain.Sigungu;
import com.team05.linkup.domain.user.domain.SigunguId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface SigunguRepository extends JpaRepository<Sigungu, SigunguId> {
    Optional<Sigungu> findByIdAreacodeAndIdSigungucode(Integer areacode, Integer sigungucode);
}