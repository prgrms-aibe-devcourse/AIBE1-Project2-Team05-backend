package com.team05.linkup.domain.user.domain;

import jakarta.persistence.*;
import lombok.*;

import java.time.ZonedDateTime;

@Getter
@Entity
@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
public class RefreshToken {

    @Id
    @Column(length = 36)
    private String id;

    @Column(length = 36, updatable = false, nullable = false)
    private String provider;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id")
    private User user;

    @Column(nullable = false, updatable = false)
    private ZonedDateTime createdAt;

    @Column(nullable = false)
    private ZonedDateTime expiredAt;

    @Column(nullable = false)
    private boolean used = false;

    public boolean isExpired() {
        return expiredAt.isBefore(ZonedDateTime.now());
    }

    public void markUsed() {
        this.used = true;
    }

}
