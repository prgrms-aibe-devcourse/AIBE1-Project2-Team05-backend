package com.team05.linkup.domain.user.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.enums.ActivityTime;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.dto.ProfileUpdateRequestDTO;
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

    public List<String> parseTags() {
        if (profileTag == null || profileTag.isBlank()) {
            return List.of();
        }
        return List.of(profileTag.split(",")).stream()
                .map(String::trim)
                .filter(tag -> !tag.isEmpty())
                .toList();
    }

    // ✅ 1. 프로필 정보 수정 메서드 추가 (🔧 추가)
    public void updateProfileFields(ProfileUpdateRequestDTO dto) {
        this.nickname = dto.getNickname();
        this.introduction = dto.getIntroduction();
        this.interest = dto.getInterest();
        this.activityTime = dto.getActivityTime();
        this.activityType = dto.getActivityType();
        this.contactLink = dto.getContactLink();
        this.matchStatus = dto.getOpenToMatching() != null ? dto.getOpenToMatching() : this.matchStatus;

        // Area, sigungu 변경 (nullable 보호는 Service에서 검증할 것)
        this.area = area;
        this.sigunguCode = dto.getSigunguCode();

        // 태그 String 처리
        this.profileTag = dto.getTags() != null ? String.join(",", dto.getTags()) : null;
    }

    // ✅ 2. 프로필 이미지 URL만 업데이트 (🔧 추가)
    public void updateProfileImage(String imageUrl) {
        this.profileImageUrl = imageUrl;
    }

}
