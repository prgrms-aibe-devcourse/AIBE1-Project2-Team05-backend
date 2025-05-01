package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.community.domain.Community;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, String> {

    @Query("SELECT c FROM Comment c WHERE c.community.id = :communityId AND c.isParent = true ORDER BY c.orderNumber")
    List<Comment> findParentCommentsByCommunityId(@Param("communityId") String communityId);

    @Query("SELECT c FROM Comment c WHERE c.parentComment.id = :parentId ORDER BY c.createdAt")
    List<Comment> findChildCommentsByParentId(@Param("parentId") String parentId);

    List<Comment> findByCommunityAndIsParentTrueOrderByOrderNumber(Community community);

    List<Comment> findByParentCommentOrderByCreatedAt(Comment parentComment);

    Integer countByCommunityId(String communityId);
}