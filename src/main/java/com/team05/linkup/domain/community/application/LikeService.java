package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Like;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.community.infrastructure.LikeRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException; // Or your custom exception
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

/**
 * 커뮤니티 게시글의 '좋아요' 기능과 관련된 비즈니스 로직을 처리하는 서비스 클래스.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class LikeService {

    private final LikeRepository likeRepository;
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository;

    /**
     * 사용자가 특정 커뮤니티 게시글에 대한 '좋아요' 상태를 토글합니다.
     * 이미 '좋아요' 상태이면 취소하고, 아니면 '좋아요'를 추가합니다.
     *
     * @param provider  토글 요청 사용자 Provider
     * @param providerId  토글 요청 사용자 Provider ID.
     * @param communityId 대상 게시글 ID.
     * @return 토글 후의 최종 '좋아요' 상태 (true: 좋아요, false: 좋아요 아님).
     * @throws EntityNotFoundException 사용자 또는 게시글을 찾을 수 없는 경우.
     */
    @Transactional //
    public boolean toggleLike(String provider, String providerId, String communityId) {
        // 1. 사용자 및 커뮤니티 엔티티 조회
        User user = userRepository.findByProviderAndProviderId(provider, providerId)
                .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId));
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("Community not found with CID: " + communityId));

        Optional<Like> existingLike = likeRepository.findByUserAndCommunity(user, community);

        if (existingLike.isPresent()) {
            // 좋아요가 있으면 -> 취소
            likeRepository.delete(existingLike.get());
            communityRepository.decrementLikeCount(communityId);
            log.debug("UserPID {} unliked community {}", providerId, communityId);
            return false; // 최종 상태: 좋아요 아님
        } else {
            // 좋아요가 없으면 -> 추가
            Like like = Like.builder()
                    .user(user)
                    .community(community)
                    .build();
            likeRepository.save(like);
            communityRepository.incrementLikeCount(communityId);
            log.debug("UserPID {} liked community {}", providerId, communityId);
            return true; // 최종 상태: 좋아요
        }
    }
}