package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Like;
import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.community.infra.LikeRepository;
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

    private final LikeRepository communityLikeRepository;
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository; // Inject UserRepository

    /**
     * 사용자가 특정 커뮤니티 게시글에 '좋아요'를 추가.
     * 트랜잭션 내에서 실행되며, 다음 작업들을 포함.
     * 성공 시 Community의 likeCount를 1 증가시킵니다.
     * 1. 사용자(User)와 커뮤니티 게시글(Community) 엔티티를 조회. (없으면 EntityNotFoundException 발생)
     * 2. 이미 해당 사용자가 해당 게시글에 '좋아요'를 눌렀는지 확인.
     * 3. 좋아요를 누르지 않았다면, 새로운 'Like' 엔티티를 생성하고 저장.
     * 4. 해당 커뮤니티 게시글의 'likeCount'를 1 증가.
     *
     * @param providerId                좋아요를 누르는 사용자의 Provider ID.
     * @param communityId               좋아요 대상 게시글의 ID.
     * @throws EntityNotFoundException  사용자 또는 게시글을 찾을 수 없는 경우 발생.
     */
    @Transactional //
    public void addLike(String providerId, String communityId) {
        // 1. 사용자 및 커뮤니티 엔티티 조회
        User user = userRepository.findByProviderId(providerId)
                .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + providerId));
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("Community not found with CID: " + communityId));

        // 2. 이미 좋아요를 눌렀는지 확인
        if (communityLikeRepository.findByUserAndCommunity(user, community).isEmpty()) {
            // 3. 좋아요 정보 생성 및 저장
            Like like = Like.builder()
                    .user(user)
                    .community(community)
                    .build();
            communityLikeRepository.save(like);

            // 4. Community 게시글의 좋아요 카운트 증가
            int updatedRows = communityRepository.incrementLikeCount(communityId);
            if (updatedRows == 0) {
                // 일반적으로 발생하지 않지만, 동시성 문제 등으로 업데이트가 실패할 경우 로깅
                log.warn("Failed to increment like count for community {} (maybe deleted concurrently?)", communityId);
                // 필요 시, 비즈니스 로직에 따라 예외 발생 또는 보상 트랜잭션 고려
            }
            log.info("UserPID {} liked community {}", providerId, communityId);
        } else {
            // 이미 좋아요를 누른 경우, 추가 작업 없이 로깅만 수행
            log.info("UserPID {} already liked community {}", providerId, communityId);
            // 필요 시, 클라이언트에게 이미 처리되었음을 알리는 응답 또는 예외 반환 고려
        }
    }

    /**
     * 사용자가 특정 커뮤니티 게시글에 누른 '좋아요'를 취소.
     * 트랜잭션 내에서 실행되며, 다음 작업들을 포함:
     * 1. 사용자(User)와 커뮤니티 게시글(Community) 엔티티를 조회. (없으면 EntityNotFoundException 발생)
     * 2. 취소할 '좋아요' 레코드를 조회.
     * 3. '좋아요' 레코드가 존재하면 삭제.
     * 4. 해당 커뮤니티 게시글의 'likeCount'를 1 감소.
     *
     * @param providerId      좋아요를 취소하는 사용자의 Provider ID.
     * @param communityId 좋아요를 취소할 대상 게시글의 ID.
     * @throws EntityNotFoundException 사용자 또는 게시글을 찾을 수 없는 경우.
     */
    @Transactional
    public void removeLike(String providerId, String communityId) {
        // 1. 사용자 및 커뮤니티 엔티티 조회
        User user = userRepository.findByProviderId(providerId)
                .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + providerId));
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("Community not found with CID: " + communityId));

        // 2. 취소할 좋아요 정보 조회
        Optional<Like> existingLike = communityLikeRepository.findByUserAndCommunity(user, community);

        if (existingLike.isPresent()) {
            // 3. 좋아요 정보 삭제
            communityLikeRepository.delete(existingLike.get());

            // 4. Community 게시글의 좋아요 카운트 감소
            int updatedRows = communityRepository.decrementLikeCount(communityId);
            if (updatedRows == 0) {
                // 카운트가 이미 0이었거나, 동시성 문제 등으로 업데이트가 실패할 경우 로깅
                log.warn("Failed to decrement like count for community {} (maybe deleted concurrently or count was 0?)", communityId);
            }
            log.info("UserPID {} unliked community {}", providerId, communityId);
        } else {
            // 좋아요를 누르지 않았거나 이미 취소된 경우, 추가 작업 없이 로깅만 수행
            log.info("UserPID {} had not liked community {} or like already removed", providerId, communityId);
        }
    }
}