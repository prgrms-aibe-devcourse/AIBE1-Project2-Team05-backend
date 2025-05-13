package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Comment;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentRepository extends JpaRepository<Comment, String> {

    // 부모 댓글만 조회 (순서대로)
    @Query("SELECT c FROM Comment c WHERE c.communityId = :communityId AND c.parentCommentId IS NULL ORDER BY c.orderNumber, c.createdAt")
    List<Comment> findParentCommentsByCommunityId(@Param("communityId") String communityId);

    // 부모 댓글만 페이징 조회
    @Query("SELECT c FROM Comment c WHERE c.communityId = :communityId AND c.parentCommentId IS NULL ORDER BY c.orderNumber, c.createdAt")
    Slice<Comment> findParentCommentsByCommunityIdWithPaging(@Param("communityId") String communityId, Pageable pageable);

    // 특정 부모 댓글의 자식 댓글 조회
    @Query("SELECT c FROM Comment c WHERE c.parentCommentId = :parentId ORDER BY c.createdAt")
    List<Comment> findChildCommentsByParentId(@Param("parentId") String parentId);

    // 특정 부모 댓글의 자식 댓글 페이징 조회
    @Query("SELECT c FROM Comment c WHERE c.parentCommentId = :parentId ORDER BY c.createdAt")
    Slice<Comment> findChildCommentsByParentIdWithPaging(@Param("parentId") String parentId, Pageable pageable);

    // 게시글의 부모 댓글 목록 (orderNumber 기준 정렬)
    List<Comment> findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(String communityId);

    // 게시글의 모든 댓글 삭제 (cascade로 처리 가능하지만 명시적으로 추가)
    void deleteByCommunityId(String communityId);

    // 게시글에 달린 모든 댓글 조회
    List<Comment> findByCommunityId(String communityId);

    /**
     * 단일 게시글, 특정 게시글의 댓글 수를 계산합니다.
     *
     * @param communityId 게시글 ID
     * @return 댓글 수
     */
    @Query("SELECT COUNT(c) FROM Comment c WHERE c.communityId = :communityId")
    int countByCommunityId(@Param("communityId") String communityId);

    /**
     * 여러 게시글 ID에 해당하는 각 게시글별 댓글 수를 조회합니다.
     *
     * @param communityIds 게시글 ID 목록
     * @return 게시글 ID와 댓글 수를 포함하는 Object[] 배열의 리스트([0]: 게시글 ID(String), [1]: 댓글 수(Long))
     */
    @Query("SELECT c.communityId, COUNT(c) FROM Comment c WHERE c.communityId IN :communityIds GROUP BY c.communityId")
    List<Object[]> countCommentsByCommunityIds(@Param("communityIds") List<String> communityIds);
}