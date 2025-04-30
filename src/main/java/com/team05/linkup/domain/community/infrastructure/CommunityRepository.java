package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.enums.CommunityCategory;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CommunityRepository extends JpaRepository<Community, String> {

    Page<Community> findAllByOrderByCreatedAtDesc(Pageable pageable);

    Page<Community> findByCategoryOrderByCreatedAtDesc(CommunityCategory category, Pageable pageable);

    Page<Community> findAllByOrderByViewCountDesc(Pageable pageable);

//    @Query("SELECT c FROM Community c LEFT JOIN Like l ON c.id = l.community.id " +
//            "GROUP BY c.id ORDER BY COUNT(l.id) DESC")
//    Page<Community> findAllOrderByLikeCountDesc(Pageable pageable);

    @Query("SELECT c FROM Community c WHERE c.title LIKE %:keyword% OR c.content LIKE %:keyword%")
    Page<Community> findByTitleContainingOrContentContaining(@Param("keyword") String keyword, Pageable pageable);

    @Query("SELECT c FROM Community c WHERE c.category = :category AND (c.title LIKE %:keyword% OR c.content LIKE %:keyword%)")
    Page<Community> findByCategoryAndTitleContainingOrContentContaining(
            @Param("category") CommunityCategory category,
            @Param("keyword") String keyword,
            Pageable pageable);
}