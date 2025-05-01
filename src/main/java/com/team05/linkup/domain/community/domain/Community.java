package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.baseEntity.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

/**
 * 커뮤니티 게시글 엔티티
 * 사용자가 작성한 게시글을 나타냅니다.
 */
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

    @Lob
    @Column(nullable = false)
    private String content;

    @Column(name = "view_count", nullable = false, columnDefinition = "BIGINT default 0")
    private Long viewCount = 0L;

    @Column(name = "like_count", nullable = false, columnDefinition = "BIGINT default 0")
    private Long likeCount = 0L;

    // 도메인 로직
    /**
     * 게시글 내용 업데이트
     *
     * @param title 게시글 제목
     * @param content 게시글 내용
     * @param category 게시글 카테고리
     * @param communityTag 게시글 태그
     */
    public void update(String title, String content, CommunityCategory category, String communityTag) {
        this.title = title;
        this.content = content;
        this.category = category;
        this.communityTag = communityTag;
    }

    /**
     * 조회수 증가
     */
    public void incrementViewCount() {
        this.viewCount += 1;
    }

    /**
     * 좋아요 수 증가
     */
    public void incrementLikeCount() {
        this.likeCount += 1;
    }

    /**
     * 좋아요 수 감소
     */
    public void decrementLikeCount() {
        if (this.likeCount > 0) {
            this.likeCount -= 1;
        }
    }
}