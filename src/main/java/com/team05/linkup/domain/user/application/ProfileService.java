package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.user.domain.Area;
import com.team05.linkup.domain.user.domain.Sigungu;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.*;
import com.team05.linkup.domain.user.infrastructure.AreaRepository;
import com.team05.linkup.domain.user.infrastructure.SigunguRepository;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Timestamp;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProfileService {

    private static final Logger logger = LogManager.getLogger();
    private final SigunguRepository sigunguRepository;

    @Transactional(readOnly = true)
    public ProfilePageDTO getProfile(User user, UserPrincipal userPrincipal) {
        // Area 객체에서 지역 이름을 가져옵니다
        String areaName = Optional.ofNullable(user.getArea())
                .map(Area::getAreaName)
                .orElse(null);

        // 사용자의 sigunguCode가 있으면 해당 시군구 정보를 가져옵니다
        String sigungu = Optional.ofNullable(user.getArea())
                .flatMap(area -> Optional.ofNullable(user.getSigunguCode())
                        .flatMap(code -> sigunguRepository.findByIdAreacodeAndIdSigungucode(area.getAreacode(), code))
                        .map(Sigungu::getSigunguname))
                .orElse(null);

        boolean isCurrentUser = isCurrentUser(user, userPrincipal);

        return ProfilePageDTO.builder()
                .id(user.getId())
                .nickname(user.getNickname())
                .profileImageUrl(user.getProfileImageUrl())
                .role(user.getRole().name())
                .tag(user.getProfileTag())
                .interest(user.getInterest() != null ? user.getInterest().getDisplayName() : null)
                .area(areaName)
                .sigungu(sigungu)
                .introduction(user.getIntroduction())
                .me(isCurrentUser) // 현재 사용자와 비교해 설정 (예: SecurityContext에서 가져오기)
                .build();
    }

    public static boolean isCurrentUser(User user, UserPrincipal userPrincipal) {
        if (userPrincipal == null) {
            return false;
        }

        String principalProvider = userPrincipal.provider();
        String principalProviderId = userPrincipal.providerId();
        String userProvider = user.getProvider();
        String userProviderId = user.getProviderId();

        logger.debug("Principal 사용자 provider: {}, Principal 사용자 provider Id: {}", principalProvider, principalProviderId);
        logger.debug("User 프로필 provider: {}, User 프로필 provider ID: {}", userProvider, userProviderId);

        return Objects.equals(principalProvider, userProvider) && Objects.equals(principalProviderId, userProviderId);
    }

    private final CommunityRepository communityRepository;

    private String getUserIdByNickname(String nickname) {
        return communityRepository.findUserIdByNickname(nickname);
    }

    /**
     * 마이페이지 - 내가 작성한 커뮤니티 게시글 목록 조회 (미리보기용, 상위 N개)
     *
     * @param nickname 닉네임 (user.nickname)
     * @param limit 가져올 게시글 개수 (최신순 제한)
     * @return 게시글 요약 정보 리스트
     */
    public List<MyPostResponseDTO> getMyPosts(String nickname, int limit) {
        List<Object[]> rawResults = communityRepository.findByCommunityPosts(nickname, limit);

        return rawResults.stream()
                .map(obj -> new MyPostResponseDTO(
                        (String) obj[0],                                      // id
                        ((Timestamp) obj[1]).toInstant().atZone(ZoneOffset.UTC),  // created_at
                        // ((Timestamp) obj[2]).toInstant().atZone(ZoneOffset.UTC),  // updated_at
                        (String) obj[2],                                      // category
                        (String) obj[3],                                      // title
                        (String) obj[4],                                      // content
                        ((Number) obj[5]).intValue(),                         // view_count
                        ((Number) obj[6]).intValue(),                         // like_count
                        ((Number) obj[7]).intValue()                          // comment_count
                ))
                .collect(Collectors.toList());
    }

    /**
     * 마이페이지 - 내가 작성한 커뮤니티 게시글 목록 조회 (페이징: 더보기 탭용)
     *
     * @param nickname 닉네임 (user.nickname)
     * @param page 페이지 번호 (0부터 시작)
     * @param size 페이지당 항목 수
     * @return 게시글 요약 정보 페이징 결과
     */
    public Page<MyPostResponseDTO> getMyPostsPaged(String nickname, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Object[]> resultPage = communityRepository.findCommunityPostsWithPaging(nickname, pageable);

        return resultPage.map(obj -> new MyPostResponseDTO(
                (String) obj[0],                                      // id
                ((Timestamp) obj[1]).toInstant().atZone(ZoneOffset.UTC),              // updated_at
                (String) obj[2],                                      // category
                (String) obj[3],                                      // title
                (String) obj[4],                                      // content
                ((Number) obj[5]).intValue(),                         // view_count
                ((Number) obj[6]).intValue(),                         // like_count
                ((Number) obj[7]).intValue()                          // comment_count
        ));
    }

    /**
     * [더보기] 내가 작성한 게시글 목록 응답 (me 여부 포함)
     *
     * @param nickname 조회 대상 사용자 닉네임
     * @param principal 로그인 사용자 정보
     * @param page 페이지 번호
     * @param size 페이지 크기
     * @return me + 게시글 리스트 래핑 DTO
     */
    public ActivityMoreDetailsResponseDTO<MyPostResponseDTO> getMyPostsMoreDetails(
            String nickname, UserPrincipal principal, int page, int size, String filter) {

        // 1. me 여부 판단
        boolean isMe = false;
        if (principal != null) {
            Optional<User> loginUserOpt = userRepository.findByProviderAndProviderId(
                    principal.provider(), principal.providerId()
            );
            isMe = loginUserOpt
                    .map(user -> user.getNickname().equals(nickname))
                    .orElse(false);
        }

        // ✅ 대문자로 통일
        List<String> validFilters = List.of("QUESTION", "INFO", "REVIEW", "FREE", "ALL");
        String normalized = filter.toUpperCase();
        if (!validFilters.contains(normalized)) {
            throw new IllegalArgumentException("유효하지 않은 게시글 카테고리 필터입니다.");
        }

        // 2. 게시글 목록 필터링 + 페이징 조회
        Page<MyPostResponseDTO> result;
        Pageable pageable = PageRequest.of(page, size);

        if (!normalized.equals("ALL")) {
            try {
                CommunityCategory category = CommunityCategory.valueOf(normalized);
                Page<Object[]> resultPage = communityRepository.findMyPostsByCategoryPaged(
                        nickname,
                        category.name(),
                        pageable
                );

                result = resultPage.map(obj -> new MyPostResponseDTO(
                        (String) obj[0],
                        ((Timestamp) obj[1]).toInstant().atZone(ZoneOffset.UTC),
                        (String) obj[2],
                        (String) obj[3],
                        (String) obj[4],
                        ((Number) obj[5]).intValue(),
                        ((Number) obj[6]).intValue(),
                        ((Number) obj[7]).intValue()
                ));
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("유효하지 않은 게시글 카테고리 필터입니다.");
            }
        } else {
            result = getMyPostsPaged(nickname, page, size);
        }

        return ActivityMoreDetailsResponseDTO.<MyPostResponseDTO>builder()
                .me(isMe)
                .type(normalized)
                .content(result.getContent())
                .build();
    }





    /**
     * 마이페이지 - 내가 작성한 댓글 목록 조회 (미리보기)
     *
     * @param nickname 사용자 닉네임
     * @param limit 조회할 개수 제한
     * @return 댓글 미리보기 DTO 목록 (최대 55자 댓글 + 게시글 제목/카테고리 등 포함)
     */
    public List<MyCommentResponseDTO> getMyComments(String nickname, int limit) {
        // userId 조회 (닉네임 기반 → ID 추출)
        String userId = getUserIdByNickname(nickname);
        // 댓글 데이터 조회
        List<Object[]> rows = communityRepository.findByMyCommunityComments(userId, limit);
        // DTO로 매핑
        return rows.stream()
                .map(row -> {
                    // 컬럼 순서: post_id, category, created_at, post_title, description, comment_content
                    // 🛡️ null-safe 및 타입 캐스팅
                    String postId = (String) row[0];
                    String category = (String) row[1];
                    Timestamp createdAt = (Timestamp) row[2];
                    ZonedDateTime createdDateTime = (createdAt != null)
                            ? createdAt.toInstant().atZone(ZoneOffset.UTC)
                            : null;
//                    String description = (String) row[3];
                    String postTitle = (String) row[3];
                    String commentContent = (String) row[4];

                    return new MyCommentResponseDTO(
                            postId,
                            category,
                            createdDateTime,
//                            description,
                            postTitle,
                            commentContent
                    );
                })
                .collect(Collectors.toList());
    }

    /**
     * 마이페이지 - 내가 작성한 댓글 목록 조회 (더보기용 페이징)
     *
     * @param nickname 사용자 닉네임
     * @param page 현재 페이지 번호
     * @param size 페이지 당 항목 수
     * @return 댓글 미리보기 DTO의 페이징 결과
     */
    public Page<MyCommentResponseDTO> getMyCommentsPaged(String nickname, int page, int size) {
        // 1. 닉네임으로 사용자 ID 조회
        String userId = getUserIdByNickname(nickname);
        // 2. 페이징 객체 생성
        Pageable pageable = PageRequest.of(page, size);
        // 3. native 쿼리 결과 받아오기
        Page<Object[]> resultPage = communityRepository.findMyCommentsPaged(userId, pageable);

        // 4. Object[] → DTO 매핑
        return resultPage.map(row -> {
            // 🛡️ null-safe 및 타입 캐스팅
            String postId = (String) row[0];
            String category = (String) row[1];
            Timestamp createdAt = (Timestamp) row[2];
            ZonedDateTime createdDateTime = (createdAt != null)
                    ? createdAt.toInstant().atZone(ZoneOffset.UTC)
                    : null;
//            String description = (String) row[3];
            String postTitle = (String) row[3];
            String commentContent = (String) row[4];

            return new MyCommentResponseDTO(
                    postId,
                    category,
                    createdDateTime,
//                    description,
                    postTitle,
                    commentContent
            );
        });
    }

    /**
     * [더보기] 내가 작성한 댓글 목록 응답 (me 여부 포함)
     *
     * @param nickname 조회 대상 사용자 닉네임
     * @param principal 로그인 사용자 정보
     * @param page 페이지 번호
     * @param size 페이지 크기
     * @return me + 댓글 리스트 래핑 DTO
     */
    public ActivityMoreDetailsResponseDTO<MyCommentResponseDTO> getMyCommentsMoreDetails(
            String nickname, UserPrincipal principal, int page, int size) {

        // 1. 댓글 목록 페이징 조회
        Page<MyCommentResponseDTO> result = getMyCommentsPaged(nickname, page, size);

        // 2. me 여부 판단
        boolean isMe = false;
        if (principal != null) {
            Optional<User> loginUserOpt = userRepository.findByProviderAndProviderId(
                    principal.provider(), principal.providerId()
            );
            isMe = loginUserOpt
                    .map(user -> user.getNickname().equals(nickname))
                    .orElse(false);
        }

        // 3. 응답 래핑
        return ActivityMoreDetailsResponseDTO.<MyCommentResponseDTO>builder()
                .me(isMe)
                .content(result.getContent()) // Page → List
                .build();
    }



    // 내가 북마크한 게시글 조회
     public List<MyBookmarkResponseDTO> getMyBookmarks(String nickname, int limit) {
        // 닉네임 기반으로 userId 조회
        String userId = getUserIdByNickname(nickname);
        // 북마크한 게시글 데이터 조회
        List<Object[]> rawResults = communityRepository.findByMyBookmarks(userId, limit);

        // DTO로 매핑
        return rawResults.stream()
                .map(obj -> {

                    // 🛡️ null-safe 캐스팅
                    Timestamp updatedAt = (Timestamp) obj[0];
                    String title = (String) obj[1];
                    String content = (String) obj[2];

                    return new MyBookmarkResponseDTO(
                            updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null, // Timestamp가 null일 경우 NPE 방지
                            title,
                            content
                    );
                })
                .collect(Collectors.toList());
    }

    // 내가 좋아요한 게시글 조회
    public List<MyLikeResponseDTO> getMyLikePosts(String nickname, int limit) {
        // 닉네임 기반으로 userId 조회
        String userId = getUserIdByNickname(nickname);
        // 좋아요한 게시글 데이터 조회
        List<Object[]> rawResults = communityRepository.findByMyLikePosts(userId, limit);

        // DTO로 매핑
        return rawResults.stream()
                .map(obj -> {

                    // 🛡️ null-safe 캐스팅
                    Timestamp updatedAt = (Timestamp) obj[0];
                    String title = (String) obj[1];
                    String content = (String) obj[2];

                    return new MyLikeResponseDTO(
                            updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null,
                            title,
                            content
                    );
                })
                .collect(Collectors.toList());
    }

    // 활동 내역 중 공통 항목
    public ActivityResponseDTO getCommonActivityDTO(String nickname) {
        return ActivityResponseDTO.builder()
                .nickname(nickname) //  "내 활동 내역" vs "OOO님의 활동 내역" 구분용 (프론트)
                .posts(getMyPosts(nickname, 2))
                .comments(getMyComments(nickname, 2))
                .bookmarks(getMyBookmarks(nickname, 1))
                .likes(getMyLikePosts(nickname, 1))
                .build();
    }

    // 매칭 현황 관련 로직 -> MatchingPageFacade로 이전

    private final UserRepository userRepository;

    public Page<CommunityQnAPostResponseDTO> getPopularQnAByInterest(String nickname, int page, int size) {
        // 1. 사용자 조회 + profile_tag 파싱
        User user = userRepository.findByNickname(nickname)
                .orElseThrow(() -> new EntityNotFoundException("해당 사용자를 찾을 수 없습니다."));

        String profileTag = user.getProfileTag(); // 예: "Spring, JPA, React"
        if (profileTag == null || profileTag.isBlank()) {
            throw new IllegalArgumentException("해당 사용자의 관심 태그가 없습니다.");
        }

        List<String> userTags = Arrays.stream(profileTag.split(","))
                .map(String::trim)
                .filter(s -> !s.isEmpty())
                .toList();

        // 2. QnA 조회 (페이징 + 관심 태그 기반)
        Pageable pageable = PageRequest.of(page, size);
        Page<CommunityQnAPostDTO> rawResults =
                communityRepository.findRecentQnAPostsByInterestPaged(userTags, pageable);

        // 3. DTO 매핑
        return rawResults.map(dto -> CommunityQnAPostResponseDTO.builder()
                .postId(dto.getPostId())
                .nickname(dto.getNickname())
                .profileImageUrl(dto.getProfileImageUrl())
                .createdAt(dto.getCreatedAt())
                .title(dto.getTitle())
                .content(dto.getContent())
                .tags(parseTags(dto.getTagName())) // comma-separated → List<String>
                .commentCount(dto.getCommentCount())
                .build());
//        // 1. 관심 태그 조회
//        String interest = String.valueOf(userRepository.findInterestByNickname(nickname));
//        if (interest == null) {
//            throw new IllegalArgumentException("해당 사용자의 관심 태그가 없습니다.");
//        }
//
//        // 2. QnA 조회 (페이징)
//        Pageable pageable = PageRequest.of(page, size);
//        Page<CommunityQnAPostDTO> rawResults = communityRepository.findRecentQnAPostsByInterestPaged(interest, pageable);
//
//        // 3. DTO 매핑
//        return rawResults.map(dto -> CommunityQnAPostResponseDTO.builder()
//                .postId(dto.getPostId())
//                .nickname(dto.getNickname())
//                .profileImageUrl(dto.getProfileImageUrl())
//                .createdAt(dto.getCreatedAt())
//                .title(dto.getTitle())
//                .content(dto.getContent())
//                .tags(parseTags(dto.getTagName())) // comma-separated → List<String>
//                .commentCount(dto.getCommentCount())
//                .build());
    }

    // 태그 문자열을 리스트로 변환하는 메서드 (기존 MatchingPageFacade 참고)
    private List<String> parseTags(String tagString) {
        if (tagString == null || tagString.isBlank()) return List.of();
        return Arrays.stream(tagString.split(","))
                .map(String::trim)
                .collect(Collectors.toList());
    }


    public void validateAccess(String nickname, UserPrincipal principal) {
        User user = userRepository.findByProviderAndProviderId(
                principal.provider(), principal.providerId()
        ).orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        if (!nickname.equals(user.getNickname())) {
            throw new AccessDeniedException("본인의 프로필만 조회할 수 있습니다.");
        }
    }


    @Transactional(readOnly = true)
    public ProfileSettingsResponseDTO getProfileSettings(String nickname, UserPrincipal principal) {
        // 본인만 조회 가능
        validateAccess(nickname, principal);

        // 사용자 조회
        User user = userRepository.findByNickname(nickname)
                .orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        // 시군구 이름 조회
        String sigunguName = Optional.ofNullable(user.getArea())
                .flatMap(area -> Optional.ofNullable(user.getSigunguCode())
                        .flatMap(code -> sigunguRepository.findByIdAreacodeAndIdSigungucode(area.getAreacode(), code))
                        .map(Sigungu::getSigunguname))
                .orElse(null);

        return ProfileSettingsResponseDTO.builder()
                .nickname(user.getNickname())
                .profileImageUrl(user.getProfileImageUrl())
                .introduction(user.getIntroduction())
                .interest(user.getInterest())
                .interestDisplayName(user.getInterest() != null ? user.getInterest().getDisplayName() : null)

                .activityTime(user.getActivityTime())
                .activityTimeDisplayName(user.getActivityTime() != null ? user.getActivityTime().getDisplayName() : null)

                .activityType(user.getActivityType())
                .activityTypeDisplayName(user.getActivityType() != null ? user.getActivityType().getDisplayName() : null)

                .areaCode(user.getArea() != null ? user.getArea().getAreacode() : null)
                .area(user.getArea() != null ? user.getArea().getAreaName() : null)
                .sigunguCode(user.getSigunguCode())
                .sigunguName(sigunguName)
                .tags(user.parseTags())

                // 🔹 멘토 전용 필드
                .contactLink(user.getContactLink())
                .isAcceptingRequests(user.isMatchStatus())
                .build();
    }


    private final AreaRepository areaRepository;

    @Transactional
    public void updateProfileFields(String nickname, ProfileUpdateRequestDTO dto, UserPrincipal userPrincipal) {
        // 1. 로그인한 사용자 정보로 User 조회
        User user = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId()
        ).orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

        // 2. nickname 일치 여부 최종 검증 (추가 안전장치)
        if (!user.getNickname().equals(nickname)) {
            throw new AccessDeniedException("프로필 수정 권한이 없습니다.");
        }

        // 3. Area 연관 엔티티 조회 (nullable 허용)
        Area area = null;
        if (dto.getAreaCode() != null) {
            area = areaRepository.findById(dto.getAreaCode())
                    .orElseThrow(() -> new EntityNotFoundException("해당 지역 정보를 찾을 수 없습니다."));
        }

        // 4. 닉네임 중복 검사 (본인의 닉네임이 아닐 경우에만 검사)
        if (!user.getNickname().equals(dto.getNickname()) &&
                userRepository.existsByNickname(dto.getNickname())) {
            throw new IllegalArgumentException("이미 사용 중인 닉네임입니다.");
        }

        // 5. User 객체 업데이트
        user.updateProfileFields(dto, area);

        // 6. 저장은 @Transactional로 처리 완료
    }


}
