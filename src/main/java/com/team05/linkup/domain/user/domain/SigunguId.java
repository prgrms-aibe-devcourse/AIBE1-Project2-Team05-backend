package com.team05.linkup.domain.user.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.*;

import java.io.Serializable;


@Embeddable
@EqualsAndHashCode
@Builder
@Getter
@NoArgsConstructor(access = AccessLevel.PUBLIC)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
public class SigunguId implements Serializable {

    @Column(name = "areacode")
    private Integer areacode;
    @Column(name = "sigungucode", length = 20, nullable = false)
    private Integer sigungucode;
}
