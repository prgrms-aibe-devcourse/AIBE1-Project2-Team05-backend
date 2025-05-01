package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.user.domain.Area;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface AreaRepository extends JpaRepository<Area, Integer> {

}