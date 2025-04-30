package com.team05.linkup.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.enums.CommunityCategory;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Table(name = "community")
public class Community extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36, updatable = false, nullable = false)
    private String id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(length = 100, nullable = false)
    private String title;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CommunityCategory category;

    @Column(name = "community_tag")
    private String communityTag;

    @Column(columnDefinition = "LONGTEXT", nullable = false)
    private String content;

    @Column(name = "view_count", columnDefinition = "int default 0")
    private int viewCount;

    // 도메인 로직
    public void update(String title, String content, CommunityCategory category, String communityTag) {
        this.title = title;
        this.content = content;
        this.category = category;
        this.communityTag = communityTag;
    }

    public void incrementViewCount() {
        this.viewCount += 1;
    }
}