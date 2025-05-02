package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.Bookmark;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.infra.BookmarkRepository;
import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

/**
 * 커뮤니티 게시글의 '북마크' 기능과 관련된 비즈니스 로직을 처리하는 서비스 클래스.
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;
    private final UserRepository userRepository;
    private final CommunityRepository communityRepository;

    /**
     * 사용자가 특정 커뮤니티 게시글에 대한 '북마크' 상태를 토글.
     * 이미 북마크 상태이면 취소하고, 아니면 북마크를 추가.
     *
     * @param provider  토글 요청 사용자 Provider.
     * @param providerId  토글 요청 사용자 Provider ID.
     * @param communityId 대상 게시글 ID.
     * @return 토글 후의 최종 북마크 상태 (true: 북마크됨, false: 북마크 안됨).
     * @throws EntityNotFoundException 사용자 또는 게시글을 찾을 수 없는 경우.
     */
    @Transactional
    public boolean toggleBookmark(String provider, String providerId, String communityId) {
        // 1. 사용자 및 커뮤니티 엔티티 조회
        User user = userRepository.findByProviderAndProviderId(provider, providerId)
                .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId));
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("Community not found with CID: " + communityId));

        // 2. 기존 북마크 조회
        Optional<Bookmark> existingBookmark = bookmarkRepository.findByUserAndCommunityId(user, communityId);


        if (existingBookmark.isPresent()) {
            // 북마크가 있으면 -> 삭제
            bookmarkRepository.delete(existingBookmark.get());
            log.debug("UserPID {} removed bookmark for community {}", providerId, communityId);
            return false; // 최종 상태: 북마크 안됨
        } else {
            // 북마크가 없으면 -> 추가
            Bookmark bookmark = Bookmark.builder()
                    .user(user)
                    .community(community)
                    .build();
            bookmarkRepository.save(bookmark);
            log.debug("UserPID {} added bookmark for community {}", providerId, communityId);
            return true; // 최종 상태: 북마크됨
        }
    }

}