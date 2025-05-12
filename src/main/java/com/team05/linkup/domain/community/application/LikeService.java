package com.team05.linkup.domain.community.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Like;
import com.team05.linkup.domain.community.dto.LikeResponseDTO;
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
     * 게시글의 총 '좋아요' 수도 함께 업데이트됩니다.
     *
     * @param principal   현재 인증된 사용자 정보 객체. {@code null}이 아니어야 합니다.
     * @param communityId 대상 게시글 ID.
     * @return {@link LikeResponseDTO} - 토글 후의 최종 '좋아요' 상태와 게시글의 총 '좋아요' 수를 포함하는 DTO.
     * @throws EntityNotFoundException 사용자 또는 게시글을 찾을 수 없는 경우.
     */
    @Transactional //
    public LikeResponseDTO toggleLike(UserPrincipal principal, String communityId) {
        String provider = principal.provider();
        String providerId = principal.providerId();

        // 1. 사용자 및 커뮤니티 엔티티 조회
        User user = userRepository.findByProviderAndProviderId(provider, providerId)
                .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId));
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("Community not found with CID: " + communityId));

        // 2. 기존 '좋아요' 상태 확인
        Optional<Like> existingLike = likeRepository.findByUserAndCommunity(user, community);

        boolean newLikedStatus;

        if (existingLike.isPresent()) {
            likeRepository.delete(existingLike.get());
            community.decrementLikeCount();
            newLikedStatus = false;
        } else {
            Like newLike = Like.builder()
                    .user(user)
                    .community(community)
                    .build();
            likeRepository.save(newLike);
            community.incrementLikeCount();
            newLikedStatus = true;
        }

        // 3. 최종 '좋아요' 상태와 업데이트된 게시글의 총 '좋아요' 수를 DTO에 담아 반환
        return new LikeResponseDTO(newLikedStatus, community.getLikeCount());
    }
}