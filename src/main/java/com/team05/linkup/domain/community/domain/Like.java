package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity; // BaseEntity 사용 시
import com.team05.linkup.domain.user.domain.User;
import jakarta.persistence.*;
import lombok.*;

/**
 * 사용자가 커뮤니티 게시글에 대해 '좋아요'를 표시하는 관계를 나타내는 엔티티.
 * 각 '좋아요'는 특정 사용자와 특정 게시글을 연결.
 * User와 Community의 조합은 고유해야 합니다. (UniqueConstraint)
 */
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "likes", uniqueConstraints = {
                @UniqueConstraint(columnNames = {"user_id", "community_id"})})
public class Like extends BaseEntity {

    /**
     * '좋아요' 레코드의 고유 식별자 (UUID, 시간 기반 생성).
     */
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;

    /**
     * '좋아요'를 누른 사용자. 지연 로딩 사용.
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    /**
     * '좋아요'를 받은 커뮤니티 게시글. 지연 로딩 사용.
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "community_id", nullable = false)
    private Community community;

    /**
     * 사용자와 커뮤니티 정보를 받아 '좋아요' 엔티티를 생성.
     *
     * @param user '좋아요'를 누른 사용자 엔티티.
     * @param community '좋아요'를 받은 커뮤니티 게시글 엔티티.
     */
    @Builder
    public Like(User user, Community community) {
        this.user = user;
        this.community = community;
    }
}