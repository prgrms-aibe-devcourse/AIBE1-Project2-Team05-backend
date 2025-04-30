package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.time.ZonedDateTime;
import java.util.List;


/**
 * {@link Community} 엔티티를 위한 Spring Data JPA 저장소입니다.
 * 커뮤니티 데이터 접근을 위한 CRUD 작업 및 사용자 정의 쿼리를 제공합니다.
 */
public interface CommunityRepository extends JpaRepository<Community, String> {
    /**
     * 커뮤니티 요약의 페이지 매김된 목록을 찾습니다. 선택적으로 카테고리별로 필터링할 수 있으며,
     * 작성자 닉네임과 각 게시물의 댓글 수를 포함
     *
     * 참고: 하위 쿼리 조건 'cmt.communityId = c.id'는 Comment 엔터티가
     * 직접 'communityId' 필드를 사용한다고 가정합니다. Comment가 @ManyToOne 'community' 필드를 사용하는 경우,
     * 조건을 'cmt.community = c'로 변경합니다.
     *
     * @param category 필터링 기준 카테고리(선택 사항, null일 수 있음).
     * @param pageable 페이지 매김 및 정렬 정보.
     * @return CommunitySummaryResponse DTO 페이지.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "(SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id)) " +
            "FROM Community c JOIN c.user u " +
            "WHERE (:category IS NULL OR c.category = :category)")
    Page<CommunitySummaryResponse> findCommunitySummaries(
            @Param("category") CommunityCategory category,
            Pageable pageable);

    /**
     * 지정된 시작일 이후 생성된 인기 커뮤니티 요약 목록을 찾습니다.
     * 조회수, 좋아요 수, 생성일 순으로 정렬합니다.
     * 작성자 닉네임과 각 게시물의 댓글 수를 포함합니다.
     *
     * 참고: 하위 쿼리 조건 'cmt.communityId = c.id'는 Comment 엔터티가
     * 직접 'communityId' 필드를 사용한다고 가정합니다. Comment가 @ManyToOne 'community' 필드를 사용하는 경우
     * 조건을 'cmt.community = c'로 변경합니다.
     *
     * @param startDate 게시물이 생성되어야 하는 날짜입니다.
     * @param pageable 페이지 매김 정보(주로 여기서는 결과를 제한하는 데 사용됨).
     * @return 인기 CommunitySummaryResponse DTO 목록입니다.
     */
    @Query("SELECT new com.team05.linkup.domain.community.dto.CommunitySummaryResponse(" +
            "c.id, u.nickname, c.title, c.category, c.createdAt, c.viewCount, c.likeCount, " +
            "(SELECT COUNT(cmt.id) FROM Comment cmt WHERE cmt.communityId = c.id)) " +
            "FROM Community c JOIN c.user u " + // User 정보 필요 시 JOIN
            "WHERE c.createdAt > :startDate " +
            "ORDER BY c.viewCount DESC, c.likeCount DESC, c.createdAt DESC")
    List<CommunitySummaryResponse> findPopularSince(@Param("startDate") ZonedDateTime startDate, Pageable pageable);


}