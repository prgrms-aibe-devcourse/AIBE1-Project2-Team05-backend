package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.user.domain.User;
import jakarta.persistence.*;
import lombok.*;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "community")
public class Community extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @Column(nullable = false, length = 100)
    private String title;

    @Enumerated(EnumType.STRING)
    private CommunityCategory category;

    @Column(name = "community_tag")
    private String communityTag;

    @Lob
    @Column(nullable = false)
    private String content;

    @Column(name = "view_count", nullable = false, columnDefinition = "BIGINT default 0")
    private Long viewCount = 0L;

    @Column(name = "like_count", nullable = false, columnDefinition = "BIGINT default 0")
    private Long likeCount = 0L;

}

