package com.team05.linkup.domain.community.infra;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Image;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ImageRepository extends JpaRepository<Image, String> {

    List<Image> findByCommunity(Community community);

    List<Image> findByCommunityId(String communityId);

    void deleteByCommunityId(String communityId);
}