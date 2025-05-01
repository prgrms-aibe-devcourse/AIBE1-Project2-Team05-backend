package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.community.domain.Comment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CommentRepository extends JpaRepository<Comment, String> {

    @Query("SELECT c FROM Comment c WHERE c.communityId = :communityId AND c.parentCommentId IS NULL ORDER BY c.orderNumber")
    List<Comment> findParentCommentsByCommunityId(@Param("communityId") String communityId);

    @Query("SELECT c FROM Comment c WHERE c.parentCommentId = :parentId ORDER BY c.createdAt")
    List<Comment> findChildCommentsByParentId(@Param("parentId") String parentId);

    // Method name 쿼리 수정
    List<Comment> findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(String communityId);

    List<Comment> findByParentCommentIdOrderByCreatedAt(String parentCommentId);

    Integer countByCommunityId(String communityId);
}