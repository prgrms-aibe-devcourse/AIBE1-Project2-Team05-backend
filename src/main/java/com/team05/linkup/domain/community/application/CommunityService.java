package com.team05.linkup.domain.community.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.domain.Image;
import com.team05.linkup.domain.community.dto.CommunityCreatedEventDTO;
import com.team05.linkup.domain.community.dto.CommunityDto;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import com.team05.linkup.domain.community.infrastructure.CommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.community.infrastructure.ImageRepository;
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
import java.util.List;
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

    private CommunityCategory parseCategory(String raw) {
        try {
            // ❶ 양쪽 공백 제거 → ❷ 대문자로 변환 → ❸ 열거형 상수 검색
            return CommunityCategory.valueOf(raw.trim().toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("지원하지 않는 카테고리입니다: " + raw);
        }
    }

    /**
     * 지정된 조건(카테고리 필터링, 페이징, 정렬)에 맞는 게시글 요약 목록을 조회합니다.
     * 이 메소드는 읽기 전용 트랜잭션으로 실행됩니다.
     *
     * @param category 조회할 게시글 카테고리 (선택 사항, null일 경우 전체 카테고리 조회).
     * @param pageable 페이징 및 정렬 정보 (페이지 번호, 페이지 크기, 정렬 기준). Spring Data Web Support에 의해 Controller에서 생성됩니다.
     * @return 조건에 맞는 게시글 요약 정보({@link CommunitySummaryResponse})를 담고 있는 {@link Page} 객체.
     * 결과가 없을 경우 빈 Page 객체가 반환됩니다.
     * @see CommunityRepository#findCommunitySummaries(CommunityCategory, Pageable)
     */
    public Page<CommunitySummaryResponse> findCommunities(CommunityCategory category, Pageable pageable) {
        return communityRepository.findCommunitySummaries(
                category,
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
     * @return 인기 게시글 요약 정보({@link CommunitySummaryResponse})의 {@link List}. 결과는 'limit' 수만큼 제한되며, 없을 경우 빈 리스트가 반환
     * @see CommunityRepository#findPopularSince(ZonedDateTime, Pageable)
     */
    public List<CommunitySummaryResponse> findPopularCommunities(int limit, int day) {
        // 1. 조회 시작 시점 계산
        ZonedDateTime daysAgo = ZonedDateTime.now().minusDays(day);
        // 2. 결과 개수 제한 설정
        Pageable topLimit = PageRequest.of(0, limit);
        // 3. Repository 메소드 호출
        return communityRepository.findPopularSince(daysAgo, topLimit);
    }

    /**
     * 키워드를 사용하여 커뮤니티 게시글을 검색
     * Repository 계층에 검색 로직을 위임
     *
     * @param keyword 검색 키워드.
     * @param pageable 페이징 및 정렬 정보.
     * @return 검색된 게시글 요약 정보 Page 객체.
     */
    public Page<CommunitySummaryResponse> searchCommunities(String keyword, Pageable pageable) {
        if (keyword == null || keyword.isBlank()) {
            return Page.empty(pageable);
        }
        return communityRepository.searchSummariesByKeyword(keyword, pageable);
    }

    // 게시글 상세 조회
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

        return CommunityDto.DetailResponse.builder()
                .id(community.getId())
                .userId(community.getUser().getId())
                .nickname(community.getUser().getNickname())
                .profileImageUrl(community.getUser().getProfileImageUrl())
                .title(community.getTitle())
                .category(community.getCategory().name())
                .communityTag(community.getCommunityTag())
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

    // 게시글 생성
    @Transactional
    public CommunityDto.Response createCommunity(UserPrincipal userPrincipal, CommunityDto.Request request) {
        User user = userRepository.findByProviderAndProviderId(userPrincipal.provider(), userPrincipal.providerId())
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        Community community = Community.builder()
                .user(user)
                .title(request.getTitle())
                .category(parseCategory(request.getCategory()))
                .communityTag(request.getCommunityTag())
                .content(request.getContent())
                .viewCount(0L)
                .build();

        Community savedCommunity = communityRepository.save(community);

        eventPublisher.publishEvent(new CommunityCreatedEventDTO(savedCommunity)); /* 이벤트 비동기 리스너 생성
                                                                                     질문 카테고리 ai 답변*/

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

    /**
     * 게시글 상세 검색 - ID로 특정 게시글을 조회하거나 다양한 조건으로 게시글을 검색합니다.
     * ID가 제공된 경우 해당 게시글을 조회하고, 그렇지 않은 경우 고급 검색을 수행합니다.
     *
     * @param request 검색 조건 (ID 또는 다양한 검색 조건)
     * @param pageable 페이징 정보 (고급 검색 시에만 사용)
     * @return ID 검색 시 특정 게시글 상세 정보, 고급 검색 시 게시글 목록
     */
    @Transactional(readOnly = true)
    public Object searchCommunityDetail(CommunityDto.SearchDetailRequest request, Pageable pageable) {
        // ID가 제공된 경우: 특정 게시글 상세 조회
        if (StringUtils.hasText(request.getId())) {
            Community community = communityRepository.findById(request.getId())
                    .orElseThrow(() -> new EntityNotFoundException("게시글을 찾을 수 없습니다."));

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

            // 고급 검색 실행
            Page<Community> communities = communityRepository.advancedSearch(
                    request.getKeyword(),
                    request.getNickname(),
                    category,
                    request.getUserRole(),
                    request.getTag(),
                    pageable
            );

            // 응답 DTO 변환
            List<CommunitySummaryResponse> responseList = communities.getContent().stream()
                    .map(community -> {
                        // 댓글 수 조회
                        int commentCount = commentRepository.countByCommunityId(community.getId());

                        return new CommunitySummaryResponse(
                                community.getId(),
                                community.getUser().getNickname(),
                                community.getTitle(),
                                community.getCategory(),
                                community.getCreatedAt(),
                                community.getViewCount(),
                                community.getLikeCount(),
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