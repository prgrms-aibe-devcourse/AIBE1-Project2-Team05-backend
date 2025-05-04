package com.team05.linkup.domain.user.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Builder
@Getter
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
public class Sigungu {

    @EmbeddedId
    private SigunguId id;

    @MapsId("areacode")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "areacode", nullable = false)
    private Area area;

    @Column(name = "sigunguname", nullable = false, length = 20)
    private String sigunguname;
}
