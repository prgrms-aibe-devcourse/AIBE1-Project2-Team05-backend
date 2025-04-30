package com.team05.linkup.domain.community.application;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.dto.CommunityDto;
//import com.team05.linkup.domain.community.infrastructure.BookmarkRepository;
import com.team05.linkup.domain.community.infrastructure.CommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
//import com.team05.linkup.domain.community.infrastructure.LikeRepository;
import com.team05.linkup.domain.enums.CommunityCategory;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommunityService {

    private CommunityCategory parseCategory(String raw) {
        try {
            // ❶ 양쪽 공백 제거 → ❷ 대문자로 변환 → ❸ 열거형 상수 검색
            return CommunityCategory.valueOf(raw.trim().toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("지원하지 않는 카테고리입니다: " + raw);
        }
    }
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository;
//    private final LikeRepository likeRepository;
//    private final BookmarkRepository bookmarkRepository;
    private final CommentRepository commentRepository;

    // 게시글 상세 조회
    @Transactional
    public CommunityDto.DetailResponse getCommunityDetail(String userId, String communityId) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        // 조회수 증가
        community.incrementViewCount();

        // 좋아요 수와 댓글 수 조회
//        long likeCount = likeRepository.countByCommunityId(communityId);
        int commentCount = commentRepository.countByCommunityId(communityId);

        // 좋아요, 북마크 상태 확인
//        boolean isLiked = likeRepository.existsByUserIdAndCommunityId(userId, communityId);
//        boolean isBookmarked = bookmarkRepository.existsByUserIdAndCommunityId(userId, communityId);

        return CommunityDto.DetailResponse.builder()
                .id(community.getId())
                .userId(community.getUser().getId())
                .nickname(community.getUser().getNickname())
                .profileImageUrl(community.getUser().getProfileImageUrl())
                .title(community.getTitle())
                .category(community.getCategory().name())
                .communityTag(community.getCommunityTag())
                .content(community.getContent())
                .viewCount(community.getViewCount())
//                .likeCount((int) likeCount)
                .commentCount(commentCount)
//                .isLiked(isLiked)
//                .isBookmarked(isBookmarked)
                .createdAt(community.getCreatedAt())
                .updatedAt(community.getUpdatedAt())
                .build();
    }

    // 게시글 생성
    @Transactional
    public CommunityDto.Response createCommunity(String userId, CommunityDto.Request request) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        Community community = Community.builder()
                .user(user)
                .title(request.getTitle())
                .category(parseCategory(request.getCategory()))
                .communityTag(request.getCommunityTag())
                .content(request.getContent())
                .viewCount(0)
                .build();

        Community savedCommunity = communityRepository.save(community);
        return CommunityDto.Response.from(savedCommunity);
    }

    // 게시글 수정
    @Transactional
    public CommunityDto.Response updateCommunity(String userId, String communityId, CommunityDto.Request request) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        // 게시글 작성자만 수정 가능
        if (!community.getUser().getId().equals(userId)) {
            throw new IllegalArgumentException("게시글 수정 권한이 없습니다.");
        }

        community.update(
                request.getTitle(),
                request.getContent(),
                parseCategory(request.getCategory()),
                request.getCommunityTag()
        );

        return CommunityDto.Response.from(community);
    }

    // 게시글 삭제
    @Transactional
    public void deleteCommunity(String userId, String communityId) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        // 게시글 작성자만 삭제 가능
        if (!community.getUser().getId().equals(userId)) {
            throw new IllegalArgumentException("게시글 삭제 권한이 없습니다.");
        }

        communityRepository.delete(community);
    }

    // 게시글 검색 상세
    public CommunityDto.DetailResponse searchCommunityDetail(CommunityDto.SearchDetailRequest request) {
        Community community = communityRepository.findById(request.getId())
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

//        long likeCount = likeRepository.countByCommunityId(request.getId());
        int commentCount = commentRepository.countByCommunityId(request.getId());

        return CommunityDto.DetailResponse.builder()
                .id(community.getId())
                .userId(community.getUser().getId())
                .nickname(community.getUser().getNickname())
                .profileImageUrl(community.getUser().getProfileImageUrl())
                .title(community.getTitle())
                .category(community.getCategory().name())
                .communityTag(community.getCommunityTag())
                .content(community.getContent())
                .viewCount(community.getViewCount())
//                .likeCount((int) likeCount)
                .commentCount(commentCount)
                .createdAt(community.getCreatedAt())
                .updatedAt(community.getUpdatedAt())
                .build();
    }
}
