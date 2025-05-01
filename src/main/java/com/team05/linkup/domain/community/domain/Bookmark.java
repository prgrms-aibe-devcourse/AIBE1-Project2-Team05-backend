package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import com.team05.linkup.domain.user.domain.User;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

/**
 * 사용자가 커뮤니티 게시글을 북마크하는 관계를 나타내는 엔티티 클래스.
 * {@link User}와 {@link Community} 간의 다대다 관계를 매핑. (실제로는 일대다 매핑 테이블)
 */
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "bookmark",
        uniqueConstraints = {@UniqueConstraint(name = "uk_user_community", columnNames = {"user_id", "community_id"})}
)
public class Bookmark extends BaseEntity { // BaseEntity 상속 (createdAt, updatedAt 자동 관리 가정)

    /**
     * 북마크의 고유 식별자 (UUID).
     */
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36)
    private String id;

    /**
     * 북마크를 한 사용자 엔티티.
     * 지연 로딩(LAZY)을 사용하여 성능 최적화.
     * 사용자가 삭제되면 관련 북마크도 함께 삭제됩니다(ON DELETE CASCADE DB 제약조건 필요).
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    /**
     * 북마크된 커뮤니티 게시글 엔티티.
     * 지연 로딩(LAZY)을 사용하여 성능 최적화.
     * 게시글이 삭제되면 관련 북마크도 함께 삭제됩니다(ON DELETE CASCADE DB 제약조건 필요).
     */
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "community_id", nullable = false)
    private Community community;

    /**
     * 북마크 생성을 위한 빌더 패턴 생성자.
     *
     * @param user      북마크를 하는 사용자
     * @param community 북마크 대상 게시글
     */
    @Builder
    public Bookmark(User user, Community community) {
        this.user = user;
        this.community = community;
    }
}