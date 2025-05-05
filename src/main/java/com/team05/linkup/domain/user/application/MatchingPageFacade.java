package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.mentoring.application.OngoingMatchingService;
import com.team05.linkup.domain.review.application.ReviewService;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.CommunityQnAPostDTO;
import com.team05.linkup.domain.user.dto.CommunityQnAPostResponseDTO;
import com.team05.linkup.domain.user.dto.MyMatchingPageDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MatchingPageFacade {

    private final ReviewService reviewService;
    private final OngoingMatchingService ongoingMatchingService;
    private final MentorProfileService mentorProfileService;
    private final CommunityRepository communityRepository;

    /**
     * 마이페이지 - 매칭 현황 탭 데이터 조합
     */
    public MyMatchingPageDTO getMatchingPageData(User mentor) {
        return MyMatchingPageDTO.builder()
                .reviews(reviewService.getReviewsForMentor(mentor.getId(), 2))
                .communityQnAs(getRecentQnAByInterest(mentor.getInterest().name(), 2))
                .ongoingMatchings(ongoingMatchingService.getOngoingMatchingsForMentor(mentor.getId(), 2))
                .stats(mentorProfileService.getMentoringStats(UUID.fromString(mentor.getId())))
                .build();
    }

    /**
     * 관심 분야 기반 최근 QnA 게시글 조회
     */
    private List<CommunityQnAPostResponseDTO> getRecentQnAByInterest(String interest, int limit) {
        List<CommunityQnAPostDTO> rawResults = communityRepository.findRecentQnAPostsByInterest(interest, limit);

        return rawResults.stream()
                .map(dto -> CommunityQnAPostResponseDTO.builder()
                        .postId(dto.getPostId())
                        .nickname(dto.getNickname())
                        .profileImageUrl(dto.getProfileImageUrl())
                        .createdAt(dto.getCreatedAt())
                        .title(dto.getTitle())
                        .content(dto.getContent())
                        .tags(parseTags(dto.getTagName()))
                        .commentCount(dto.getCommentCount())
                        .build())
                .collect(Collectors.toList());
    }

    /**
     * 태그 문자열 → List<String> 변환
     */
    private List<String> parseTags(String tagString) {
        if (tagString == null || tagString.isBlank()) return List.of();
        return Arrays.stream(tagString.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
    }

    public Page<CommunityQnAPostResponseDTO> getRecentQnAPostsByInterestPaged(String interest, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<CommunityQnAPostDTO> rawResults = communityRepository.findRecentQnAPostsByInterestPaged(interest, pageable);

        return rawResults.map(dto -> CommunityQnAPostResponseDTO.builder()
                .postId(dto.getPostId())
                .nickname(dto.getNickname())
                .profileImageUrl(dto.getProfileImageUrl())
                .createdAt(dto.getCreatedAt())
                .title(dto.getTitle())
                .content(dto.getContent())
                .tags(parseTags(dto.getTagName()))
                .commentCount(dto.getCommentCount())
                .build());
    }
}
