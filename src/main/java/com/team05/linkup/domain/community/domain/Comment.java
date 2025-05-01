package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.baseEntity.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

/**
 * 커뮤니티 기능에서 comment entity
 * comment는 community(게시글) 및 잠재적으로 parent comment(답글)과 관련 될 수 있습니다.
 */
@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Table(name = "comments")
public class Comment extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36, updatable = false, nullable = false)
    private String id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "community_id", nullable = false)
    private Community community;

    @Column(name = "comment_content", length = 300, nullable = false)
    private String commentContent;

    @Column(name = "order_number") // For sorting replies if needed
    private Long orderNumber;

    @Column(name = "is_parent")
    private boolean isParent;

    @Column(name = "total_like_count", columnDefinition = "INT default 0")
    private Integer totalLikeCount = 0;

    @Column(length = 100) // Denormalized user name for easy retrieval
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_comment_id")
    private Comment parentComment;

    // 댓글 내용 수정
    public void updateContent(String content) {
        this.commentContent = content;
    }

    // 댓글 좋아요 수 증가
    public void incrementLikeCount() {
        this.totalLikeCount++;
    }

    // 댓글 좋아요 수 감소
    public void decrementLikeCount() {
        if (this.totalLikeCount > 0) {
            this.totalLikeCount--;
        }
    }
}