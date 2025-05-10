package com.team05.linkup.domain.community.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.domain.Image;
import com.team05.linkup.domain.community.domain.Tag;
import com.team05.linkup.domain.community.dto.*;
import com.team05.linkup.domain.community.infrastructure.CommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.community.infrastructure.ImageRepository;
import com.team05.linkup.domain.community.infrastructure.TagRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.time.ZonedDateTime;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * 커뮤니티 게시글 관련 비즈니스 로직을 처리하는 애플리케이션 서비스 클래스입니다.
 * 주로 조회(read) 작업을 수행하며, 클래스 레벨에 @Transactional(readOnly = true)이 적용되어 있습니다.
 * {@link CommunityRepository}를 사용하여 데이터베이스와 상호작용합니다.
 */
@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommunityService {

    private final CommunityRepository communityRepository;
    private final ImageRepository imageRepository;
    private final UserRepository userRepository;
    private final CommentRepository commentRepository;
    // private final LikeRepository likeRepository;
    // private final BookmarkRepository bookmarkRepository;
    private final ApplicationEventPublisher eventPublisher;
    private final CommunityImageService communityImageService;
    private final TagRepository tagRepository;

    private CommunityCategory parseCategory(String raw) {
        try {
            // ❶ 양쪽 공백 제거 → ❷ 대문자로 변환 → ❸ 열거형 상수 검색
            return CommunityCategory.valueOf(raw.trim().toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("지원하지 않는 카테고리입니다: " + raw);
        }
    }

    /**
     * 태그 이름 목록을 받아 기존 Tag 엔티티를 조회하거나 새로 생성하여 Set<Tag> 형태로 반환합니다.
     * 이 메서드는 쓰기 트랜잭션이 필요할 수 있으므로, 호출하는 메서드에 @Transactional을 명시해야 합니다.
     * (현재 클래스 레벨에 @Transactional(readOnly=true) 이므로, 쓰기 작업이 있는 메서드는 개별적으로 @Transactional 명시 필요)
     *
     * @param tagNames 태그 이름 목록 (String List).
     * @return 처리된 Tag 엔티티 Set.
     */
    @Transactional // Tag 생성/저장 로직이 포함될 수 있으므로 쓰기 트랜잭션 명시
    protected Set<Tag> processTags(List<String> tagNames) {
        if (tagNames == null || tagNames.isEmpty()) {
            return new HashSet<>();
        }
        Set<Tag> tags = new HashSet<>();
        for (String tagName : tagNames) {
            if (tagName == null || tagName.trim().isEmpty()) continue;
            String trimmedTagName = tagName.trim();
            // 기존 태그 조회 또는 새로 생성
            Tag tag = tagRepository.findByName(trimmedTagName)
                    .orElseGet(() -> {
                        log.info("새로운 태그 '{}'를 생성합니다.", trimmedTagName);
                        return tagRepository.save(Tag.builder().name(trimmedTagName).build());
                    });
            tags.add(tag);
        }
        return tags;
    }

    public List<TagDTO> findPopularTags(int limit, int days) {
        ZonedDateTime sinceDate = ZonedDateTime.now().minusDays(days);
        Pageable pageable = PageRequest.of(0, limit);
        return tagRepository.findPopularTagsSince(sinceDate, pageable);
    }

    /**
     * 활발한 커뮤니티 사용자 목록을 조회합니다.
     * 활동 점수 = (게시글 수 * 게시글 가중치) + (댓글 수 * 댓글 가중치)
     * 점수가 높은 순으로 정렬하며, 점수가 같을 경우 닉네임 오름차순으로 정렬합니다.
     *
     * @param limit 조회할 사용자 수
     * @param days  활동 집계 기간(일)
     * @return 활발한 사용자 정보 목록
     */
    public List<ActiveUsersResponseDTO> getActiveMembers(int limit, int days) {
        log.info("활발한 사용자 목록 조회 시작 - 기간: {}일, 최대 인원: {}", days, limit);
        ZonedDateTime startDate = ZonedDateTime.now().minusDays(days);
        List<ActiveUsersTempDTO> usersActivityData = userRepository.findUserActivities(startDate);
        log.debug("DB 조회 결과 사용자 수: {}", usersActivityData.size());

        return usersActivityData.stream()
                .map(data -> {
                    long activityScore = data.postCount() * 3 + data.commentCount();
                    return new RankedUser(data, activityScore);     // 정렬을 위해 RankedUser 객체 생성
                })
                .filter(rankedUser -> rankedUser.activityScore() > 0) // 활동 점수가 0보다 큰 사용자만 필터링
                .sorted(Comparator.comparingLong(RankedUser::activityScore).reversed() // 점수 높은 순
                        .thenComparing(u -> u.data().nickname())) // 점수 같으면 닉네임 오름차순
                .limit(limit)  // 요청된 수만큼 제한
                .map(rankedUser -> ActiveUsersResponseDTO.of( // 최종 응답 DTO로 변환
                        rankedUser.data().userId(),
                        rankedUser.data().nickname(),
                        rankedUser.data().profileImageUrl(),
                        rankedUser.data().postCount(),
                        rankedUser.data().commentCount()
                ))
                .collect(Collectors.toList());
    }

    /**
     * 활동 점수 및 원본 데이터를 함께 가지는 불변 데이터 홀더입니다.
     * Java 14+의 레코드를 사용하여 간결하게 정의합니다.
     * 이 레코드는 이 서비스 메소드 내부에서만 사용되므로 private으로 선언합니다.
     */
    private record RankedUser(ActiveUsersTempDTO data, long activityScore) {}


    /**
     * 지정된 조건(카테고리 필터링, 페이징, 정렬)에 맞는 게시글 요약 목록을 조회합니다.
     * 이 메소드는 읽기 전용 트랜잭션으로 실행됩니다.
     *
     * @param category 조회할 게시글 카테고리 (선택 사항, null일 경우 전체 카테고리 조회).
     * @param pageable 페이징 및 정렬 정보 (페이지 번호, 페이지 크기, 정렬 기준). Spring Data Web Support에 의해 Controller에서 생성됩니다.
     * @return 조건에 맞는 게시글 요약 정보({@link CommunitySummaryResponseDTO})를 담고 있는 {@link Page} 객체.
     * 결과가 없을 경우 빈 Page 객체가 반환됩니다.
     * @see CommunityRepository#findCommunitySummaries(CommunityCategory, String, Pageable)
     */
    public Page<CommunitySummaryResponseDTO> findCommunities(CommunityCategory category, String tagName, Pageable pageable) {
        String trimmedTagName = null;
        if (StringUtils.hasText(tagName)) {
            trimmedTagName = tagName.trim();
        }
        return communityRepository.findCommunitySummaries(
                category,
                trimmedTagName,
                pageable
        );
    }

    /**
     * 최근 일정 기간 동안 작성된 게시글 중 인기 게시글 목록을 조회
     * 인기도는 Repository 쿼리 내의 정렬 기준(조회수, 좋아요 수, 최신순)에 따라 결정
     * 이 메소드는 읽기 전용 트랜잭션으로 실행
     *
     * @param limit 조회할 최대 인기 게시글 수.
     * @param day   인기 게시글을 선정할 최근 기간(일 단위). 예를 들어 7이면 최근 7일간의 게시글을 대상으로 함
     * @return 인기 게시글 요약 정보({@link CommunitySummaryResponseDTO})의 {@link List}. 결과는 'limit' 수만큼 제한되며, 없을 경우 빈 리스트가 반환
     * @see CommunityRepository#findPopularSince(ZonedDateTime, Pageable)
     */
    public List<CommunitySummaryResponseDTO> findPopularCommunities(int limit, int day) {
        // 1. 조회 시작 시점 계산
        ZonedDateTime daysAgo = ZonedDateTime.now().minusDays(day);
        // 2. 결과 개수 제한 설정
        Pageable topLimit = PageRequest.of(0, limit);
        // 3. Repository 메소드 호출
        return communityRepository.findPopularSince(daysAgo, topLimit);
    }

    /**
     * 최근 일정 기간 동안 작성된 게시글 중 인기 게시글 목록을 조회
     * 인기도는 Repository 쿼리 내의 정렬 기준(조회수, 좋아요 수, 최신순)에 따라 결정
     * 이 메소드는 읽기 전용 트랜잭션으로 실행
     *
     * @param limit 조회할 최대 인기 게시글 수.
     * @param day   인기 게시글을 선정할 최근 기간(일 단위). 예를 들어 7이면 최근 7일간의 게시글을 대상으로 함
     * @return 인기 게시글 요약 정보({@link CommunitySummaryResponseDTO})의 {@link List}. 결과는 'limit' 수만큼 제한되며, 없을 경우 빈 리스트가 반환
     * @see CommunityRepository#findPopularSince(ZonedDateTime, Pageable)
     */
    public List<CommunityWeeklyPopularDTO> findWeeklyPopularCommunities(int limit, int day) {
        // 1. 조회 시작 시점 계산
        ZonedDateTime daysAgo = ZonedDateTime.now().minusDays(day);
        // 2. 결과 개수 제한 설정
        Pageable topLimit = PageRequest.of(0, limit);
        // 3. Repository 메소드 호출
        return communityRepository.findWeeklyPopular(daysAgo, topLimit);
    }

    /**
     * 키워드를 사용하여 커뮤니티 게시글을 검색
     * Repository 계층에 검색 로직을 위임
     *
     * @param keyword 검색 키워드.
     * @param pageable 페이징 및 정렬 정보.
     * @return 검색된 게시글 요약 정보 Page 객체.
     */
    public Page<CommunitySummaryResponseDTO> searchCommunities(String keyword, Pageable pageable) {
        if (keyword == null || keyword.isBlank()) {
            return Page.empty(pageable);
        }
        return communityRepository.searchSummariesByKeyword(keyword, pageable);
    }

    /**
     * 게시글 ID로 특정 게시글의 상세 정보를 조회합니다. 조회 시 조회수가 증가합니다.
     *
     * @param userId 현재 조회하는 사용자의 ID (좋아요, 북마크 상태 확인 등에 사용될 수 있음). 없을 경우 null.
     * @param communityId 조회할 게시글 ID.
     * @return 게시글 상세 정보 DTO ({@link CommunityDto.DetailResponse}).
     * @throws EntityNotFoundException 해당 ID의 게시글이 없을 경우 발생.
     */
    @Transactional
    public CommunityDto.DetailResponse getCommunityDetail(String userId, String communityId) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        // 조회수 증가
        community.incrementViewCount();

        // 좋아요 수와 댓글 수 조회
        // long likeCount = likeRepository.countByCommunityId(communityId);
        int commentCount = commentRepository.countByCommunityId(communityId);

        // 좋아요, 북마크 상태 확인
        // boolean isLiked = likeRepository.existsByUserIdAndCommunityId(userId, communityId);
        // boolean isBookmarked = bookmarkRepository.existsByUserIdAndCommunityId(userId, communityId);

        /* 이미지 objectPath 가져온 뒤 → 60초짜리 서명 URL 변환 */
        List<String> imageUrls = imageRepository.findByCommunityId(communityId).stream()
                .map(Image::getImageUrl)
                .map(p -> communityImageService.getSignedUrl(p, 60))
                .toList();

        // 태그 이름 목록 추출
        List<String> tagNames = community.getTags().stream()
                .map(Tag::getName)
                .toList();

        return CommunityDto.DetailResponse.builder()
                .id(community.getId())
                .userId(community.getUser().getId())
                .nickname(community.getUser().getNickname())
                .profileImageUrl(community.getUser().getProfileImageUrl())
                .title(community.getTitle())
                .category(community.getCategory().name())
                .tags(tagNames)
                .content(community.getContent())
                .viewCount(community.getViewCount().intValue())
                // .likeCount((int) likeCount)
                .commentCount(commentCount)
                // .isLiked(isLiked)
                // .isBookmarked(isBookmarked)
                .imageUrls(imageUrls)
                .createdAt(community.getCreatedAt())
                .updatedAt(community.getUpdatedAt())
                .build();
    }

    /**
     * 새로운 커뮤니티 게시글을 생성합니다.
     *
     * @param userPrincipal 현재 인증된 사용자의 정보.
     * @param request 게시글 생성 요청 데이터 DTO ({@link CommunityDto.Request}).
     * @return 생성된 게시글의 기본 정보 DTO ({@link CommunityDto.Response}).
     * @throws EntityNotFoundException 요청한 사용자를 찾을 수 없을 경우 발생.
     */
    @Transactional
    public CommunityDto.Response createCommunity(UserPrincipal userPrincipal, CommunityDto.Request request) {
        User user = userRepository.findByProviderAndProviderId(userPrincipal.provider(), userPrincipal.providerId())
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        Set<Tag> processedTags = processTags(request.getTags());


        Community community = Community.builder()
                .user(user)
                .title(request.getTitle())
                .category(parseCategory(request.getCategory()))
                .content(request.getContent())
                .tags(processedTags)
                .build();

        Community savedCommunity = communityRepository.save(community);

        // AI 답변 생성 등 추가 로직을 위한 이벤트 발행
        if (savedCommunity.getCategory() == CommunityCategory.QUESTION) {
            eventPublisher.publishEvent(new CommunityCreatedEventDTO(savedCommunity));
        }

        return CommunityDto.Response.from(savedCommunity);
    }

    /**
     * 기존 커뮤니티 게시글을 수정합니다.
     *
     * @param userPrincipal 수정 요청을 한 사용자의 인증 정보 (권한 확인용).
     * @param communityId 수정할 게시글의 ID.
     * @param request 게시글 수정 요청 데이터 DTO ({@link CommunityDto.Request}).
     * @return 수정된 게시글의 기본 정보 DTO ({@link CommunityDto.Response}).
     * @throws EntityNotFoundException 해당 ID의 게시글이 없거나, 사용자를 찾을 수 없을 경우.
     * @throws IllegalArgumentException 수정 권한이 없는 경우.
     */
    @Transactional
    public CommunityDto.Response updateCommunity(UserPrincipal userPrincipal, String communityId, CommunityDto.Request request) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        User user = community.getUser();

        // 게시글 작성자만 수정 가능
        if (!user.getProvider().equals(userPrincipal.provider()) || !user.getProviderId().equals(userPrincipal.providerId())) {
            throw new IllegalArgumentException("게시글 수정 권한이 없습니다.");
        }

        // DTO의 tagNames를 기반으로 Set<Tag>를 준비
        Set<Tag> processedTags = processTags(request.getTags()); // DTO 필드명이 tags로 변경되었다고 가정


        community.update(
                request.getTitle(),
                request.getContent(),
                parseCategory(request.getCategory()),
                processedTags
        );

        return CommunityDto.Response.from(community);
    }

    /**
     * 지정된 ID의 커뮤니티 게시글을 삭제합니다.
     *
     * @param userPrincipal 삭제 요청을 한 사용자의 인증 정보 (권한 확인용).
     * @param communityId 삭제할 게시글의 ID.
     * @throws EntityNotFoundException 해당 ID의 게시글이 없거나, 사용자를 찾을 수 없을 경우.
     * @throws IllegalArgumentException 삭제 권한이 없는 경우.
     */
    @Transactional
    public void deleteCommunity(UserPrincipal userPrincipal, String communityId) {
        Community community = communityRepository.findById(communityId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        User user = community.getUser();

        // 게시글 작성자만 삭제 가능
        if (!user.getProvider().equals(userPrincipal.provider()) || !user.getProviderId().equals(userPrincipal.providerId())) {
            throw new IllegalArgumentException("게시글 삭제 권한이 없습니다.");
        }

        communityRepository.delete(community);
    }

    /**
     * 게시글 상세 검색 - ID로 특정 게시글을 조회하거나 다양한 조건으로 게시글을 검색합니다.
     * ID가 제공된 경우 해당 게시글을 조회하고, 그렇지 않은 경우 고급 검색을 수행합니다.
     *
     * @param request 검색 조건 (ID 또는 다양한 검색 조건)
     * @param pageable 페이징 정보 (고급 검색 시에만 사용)
     * @return ID 검색 시 {@link CommunityDto.DetailResponse}, 고급 검색 시 {@link Page<CommunitySummaryResponseDTO>}.
     * @throws EntityNotFoundException ID로 검색 시 해당 게시글이 없을 경우.
     */
    @Transactional(readOnly = true)
    public Object searchCommunityDetail(CommunityDto.SearchDetailRequest request, Pageable pageable) {
        // ID가 제공된 경우: 특정 게시글 상세 조회
        if (StringUtils.hasText(request.getId())) {
            Community community = communityRepository.findById(request.getId())
                    .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

            int commentCount = commentRepository.countByCommunityId(request.getId());

            List<String> tagNames = community.getTags().stream().map(Tag::getName).toList();


            return CommunityDto.DetailResponse.builder()
                    .id(community.getId())
                    .userId(community.getUser().getId())
                    .nickname(community.getUser().getNickname())
                    .profileImageUrl(community.getUser().getProfileImageUrl())
                    .title(community.getTitle())
                    .category(community.getCategory().name())
                    .tags(tagNames)
                    .content(community.getContent())
                    .viewCount(community.getViewCount().intValue())
                    .likeCount(community.getLikeCount() != null ? community.getLikeCount().intValue() : 0)
                    .commentCount(commentCount)
                    .createdAt(community.getCreatedAt())
                    .updatedAt(community.getUpdatedAt())
                    .build();
        }
        // 그 외의 경우: 고급 검색 수행
        else {
            // 카테고리 변환 (문자열 -> Enum)
            CommunityCategory category = null;
            if (StringUtils.hasText(request.getCategory())) {
                try {
                    category = CommunityCategory.valueOf(request.getCategory().toUpperCase());
                } catch (IllegalArgumentException e) {
                    log.warn("Invalid category: {}", request.getCategory());
                    // 잘못된 카테고리인 경우 무시
                }
            }
            // Tag 엔티티 조회 (단일 태그 검색)
            Tag tagEntity = null;
            if (StringUtils.hasText(request.getTag())) {
                tagEntity = tagRepository.findByName(request.getTag().trim()).orElse(null);
                // 만약 존재하지 않는 태그로 검색 시 결과가 없도록 하려면,
                // tagEntity가 null일 때 빈 페이지를 반환하거나, 리포지토리 쿼리가 이를 처리하도록 해야 함.
                // 여기서는 tagEntity가 null이면 해당 조건은 무시되도록 리포지토리에서 처리한다고 가정.
            }

            // 고급 검색 실행
            Page<Community> communities = communityRepository.advancedSearch(
                    request.getKeyword(),
                    request.getNickname(),
                    category,
                    request.getUserRole(),
                    tagEntity,
                    pageable
            );

            // 응답 DTO 변환
            List<CommunitySummaryResponseDTO> responseList = communities.getContent().stream()
                    .map(community -> {
                        // 댓글 수 조회
                        int commentCount = commentRepository.countByCommunityId(community.getId());

                        return new CommunitySummaryResponseDTO(
                                community.getId(),
                                community.getUser().getNickname(),
                                community.getTitle(),
                                community.getCategory(),
                                community.getCreatedAt(),
                                community.getViewCount(),
                                community.getLikeCount(),
                                community.getContent(),
                                community.getUser().getProfileImageUrl(),
                                Long.valueOf(commentCount)
                        );
                    })
                    .collect(Collectors.toList());

            return new PageImpl<>(responseList, pageable, communities.getTotalElements());
        }
    }

    /* 이미지 첨부 – objectPath 리스트를 저장                            */
    @Transactional
    public void attachImages(String postId, List<String> objectPaths) {

        Community community = communityRepository.findById(postId)
                .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

        /* 🟢 Image 엔티티로 변환 → 일괄 저장 */
        List<Image> images = objectPaths.stream()
                .map(path -> Image.builder()
                        .community(community)
                        .imageUrl(path)      // Supabase object path 그대로
                        .build())
                .toList();

        imageRepository.saveAll(images);
    }
}