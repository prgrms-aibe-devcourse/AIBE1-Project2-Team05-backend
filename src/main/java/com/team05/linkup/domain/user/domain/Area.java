package com.team05.linkup.domain.user.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.enums.Role;
import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Builder
@Getter
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "area")
public class Area {
    @Id
    private Integer id; // user 엔티티의 areaId와 매핑 ID

    @Column(length = 30, nullable = false)
    private String areaName; // 지역 이름
}
