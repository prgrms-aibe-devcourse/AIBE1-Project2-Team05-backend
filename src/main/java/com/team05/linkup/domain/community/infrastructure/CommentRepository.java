package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Comment;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * 댓글 엔티티에 대한 데이터 액세스 인터페이스입니다.
 * Spring Data JPA를 활용하여 댓글 데이터를 조회, 저장, 수정, 삭제하는 기능을 제공합니다.
 */
public interface CommentRepository extends JpaRepository<Comment, String> {

    /**
     * 특정 게시글의 모든 부모 댓글을 조회합니다.
     * 부모 댓글은 parentCommentId가 null인 댓글입니다.
     * 결과는 orderNumber 기준으로 정렬됩니다.
     *
     * @param communityId 게시글 ID
     * @return 부모 댓글 목록
     */
    @Query("SELECT c FROM Comment c WHERE c.communityId = :communityId AND c.parentCommentId IS NULL ORDER BY c.orderNumber")
    List<Comment> findParentCommentsByCommunityId(@Param("communityId") String communityId);

    /**
     * 특정 게시글의 부모 댓글을 페이징하여 조회합니다.
     * 무한 스크롤 구현을 위한 메서드입니다.
     * 결과는 orderNumber 기준으로 정렬됩니다.
     *
     * @param communityId 게시글 ID
     * @param pageable 페이징 정보
     * @return 페이징된 부모 댓글 목록
     */
    @Query("SELECT c FROM Comment c WHERE c.communityId = :communityId AND c.parentCommentId IS NULL ORDER BY c.orderNumber")
    List<Comment> findParentCommentsByCommunityIdWithPaging(@Param("communityId") String communityId, Pageable pageable);

    /**
     * 특정 부모 댓글의 모든 자식 댓글을 조회합니다.
     * 자식 댓글은 parentCommentId가 지정된 댓글입니다.
     * 결과는 createdAt 기준으로 정렬됩니다.
     *
     * @param parentId 부모 댓글 ID
     * @return 자식 댓글 목록
     */
    @Query("SELECT c FROM Comment c WHERE c.parentCommentId = :parentId ORDER BY c.createdAt")
    List<Comment> findChildCommentsByParentId(@Param("parentId") String parentId);

    /**
     * 특정 부모 댓글의 자식 댓글을 페이징하여 조회합니다.
     * 무한 스크롤 구현을 위한 메서드입니다.
     * 결과는 createdAt 기준으로 정렬됩니다.
     *
     * @param parentId 부모 댓글 ID
     * @param pageable 페이징 정보
     * @return 페이징된 자식 댓글 목록
     */
    @Query("SELECT c FROM Comment c WHERE c.parentCommentId = :parentId ORDER BY c.createdAt")
    List<Comment> findChildCommentsByParentIdWithPaging(@Param("parentId") String parentId, Pageable pageable);

    /**
     * 특정 게시글의 부모 댓글을 orderNumber 기준으로 정렬하여 조회합니다.
     * 메서드 이름 쿼리를 사용합니다.
     *
     * @param communityId 게시글 ID
     * @return 정렬된 부모 댓글 목록
     */
    List<Comment> findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(String communityId);

    /**
     * 특정 부모 댓글의 모든 자식 댓글을 생성 시간 기준으로 정렬하여 조회합니다.
     * 메서드 이름 쿼리를 사용합니다.
     *
     * @param parentCommentId 부모 댓글 ID
     * @return 정렬된 자식 댓글 목록
     */
    List<Comment> findByParentCommentIdOrderByCreatedAt(String parentCommentId);

    /**
     * 특정 게시글의 총 댓글 수를 계산합니다.
     *
     * @param communityId 게시글 ID
     * @return 댓글 수
     */
    Integer countByCommunityId(String communityId);

    // 수동 매칭 현황 - 재능 기부 게시글 댓글 카운트
    @Query("SELECT c.communityId, COUNT(c) FROM Comment c WHERE c.communityId IN :communityIds GROUP BY c.communityId")
    List<Object[]> countCommentsByCommunityIds(@Param("communityIds") List<String> communityIds);
}