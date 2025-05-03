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
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Table(uniqueConstraints = @UniqueConstraint(name = "uk_provider_provider_id", columnNames = {"provider", "providerId"}))
public class User extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;
    @Column(length = 36, updatable = false, nullable = false)
    private String provider;
    @Column(length = 100, nullable = false)
    private String providerId;
    @Column(length = 50, nullable = false)
    private String userNameAttribute;

    @Column(length = 100, nullable = false)
    private String name;
    @Column(length = 100, nullable = false, unique = true)
    private String nickname;
    @Enumerated(EnumType.STRING)
    @Column(nullable = false, length = 10)
    private Role role;
    @Column(length = 255, nullable = false)
    private String profileImageUrl;
    @Builder.Default
    private boolean accountDisable = false;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "area", referencedColumnName = "areacode")
    private Area area;

    @Column(name = "sigunguCode")
    private Integer sigunguCode;

    @Column(length = 255)
    private String introduction;

    @Enumerated(EnumType.STRING)
    private Interest interest;

    @Enumerated(EnumType.STRING)
    private ActivityTime activityTime;
    @Enumerated(EnumType.STRING)
    private ActivityType activityType;
    @Column(length = 255)
    private String contactLink;
    @Builder.Default
    private boolean matchStatus = false;
    @Column(length = 255)
    private String profileTag;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    private List<RefreshToken> refreshToken;
}
