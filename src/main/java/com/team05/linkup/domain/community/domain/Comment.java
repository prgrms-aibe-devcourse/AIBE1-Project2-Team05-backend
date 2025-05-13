package com.team05.linkup.domain.community.domain;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.ZonedDateTime;

@Entity
@Table(name = "comments")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Comment {

    @Id
    private String id;

    @Column(name = "user_id", nullable = false)
    private String userId;

    @Column(name = "community_id", nullable = false)
    private String communityId;

    @Column(name = "comment_content", nullable = false, length = 300)
    private String commentContent;

    @Column(name = "order_number")
    private Long orderNumber;

    @Column(name = "is_parent", nullable = false)
    private boolean isParent;

    @Column(name = "total_like_count", columnDefinition = "int default 0")
    private int totalLikeCount;

    @Column(name = "name", length = 100)
    private String name;

    @Column(name = "parent_comment_id")
    private String parentCommentId;

    @CreationTimestamp
    @Column(name = "created_at")
    private ZonedDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at")
    private ZonedDateTime updatedAt;

    public void updateContent(String commentContent) {
        this.commentContent = commentContent;
    }
}