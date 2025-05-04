package com.team05.linkup.domain.user.domain;

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
    @Column(name = "areacode")
    private Integer areacode;

    @Column(length = 30, nullable = false)
    private String areaName; // 지역 이름

    @OneToMany(mappedBy = "area", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Sigungu> sigungus;
}
