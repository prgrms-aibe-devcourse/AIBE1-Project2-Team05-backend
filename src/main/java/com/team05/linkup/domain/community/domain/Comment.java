// --- Comment Entity ---
package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import jakarta.persistence.*;
import lombok.*;


/**
* 커뮤니티 기능에서 comment entity
 * comment는 community(게시글) 및 잠재적으로 parent comment(답글)과 관련 될 수 있습니다.
 */
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "comments")
public class Comment extends BaseEntity {

    @Id
    @Column(length = 36)
    private String id;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "user_id", nullable = false)
//    private User user;
    @Column(name = "user_id", nullable = false)
    private String userId;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "community_id", nullable = false)
//    private Community community;
    @Column(name = "community_id", nullable = false)
    private String communityId;

    @Column(nullable = false, length = 300)
    private String commentContent;

    @Column(name = "order_number") // For sorting replies if needed
    private Long orderNumber;

    @Column(name = "total_like_count", columnDefinition = "INT default 0")
    private int totalLikeCount = 0;

    @Column(length = 100) // Denormalized user name for easy retrieval
    private String name;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "parent_comment_id")
//    private Comment parentComment;
    @Column(name = "parent_comment_id")
    private String parentCommentId;


}