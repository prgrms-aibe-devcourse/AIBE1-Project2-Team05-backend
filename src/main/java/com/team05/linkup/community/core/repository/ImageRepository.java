package com.team05.linkup.community.core.repository;

import com.team05.linkup.domain.Community;
import com.team05.linkup.domain.Image;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, String> {

    List<Image> findByCommunity(Community community);

    List<Image> findByCommunityId(String communityId);

    void deleteByCommunityId(String communityId);
}