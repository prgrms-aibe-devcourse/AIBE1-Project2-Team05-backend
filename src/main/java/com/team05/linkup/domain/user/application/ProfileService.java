package com.team05.linkup.domain.user.application;

import com.team05.linkup.common.dto.UserPrincipal;
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
                .interest(user.getInterest().getDisplayName())
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

    public List<MyPostResponseDTO> getMyPosts(String nickname, int limit) {
        List<Object[]> rawResults = communityRepository.findByCommunityPosts(nickname, limit);

        return rawResults.stream()
                .map(obj -> new MyPostResponseDTO(
                        (String) obj[0],                                      // id
                        ((Timestamp) obj[1]).toInstant().atZone(ZoneOffset.UTC),              // updated_at
                        (String) obj[2],                                      // category
                        (String) obj[3],                                      // title
                        (String) obj[4],                                      // content
                        ((Number) obj[5]).intValue(),                         // view_count (Long → int)
                        ((Number) obj[6]).intValue(),                         // like_count (Long → int)
                        ((Number) obj[7]).intValue()                          // comment_count (Long → int)
                ))
                .collect(Collectors.toList());
    }

    // 내가 작성한 커뮤니티 게시글 - 페이징
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


    // 내가 작성한 댓글 조회
    public List<MyCommentResponseDTO> getMyComments(String nickname, int limit) {
        // userId 조회 (닉네임 기반 → ID 추출)
        String userId = getUserIdByNickname(nickname);
        // 댓글 데이터 조회
        List<Object[]> rows = communityRepository.findByMyCommunityComments(userId, limit);
        // DTO로 매핑
        return rows.stream()
                .map(row -> {
                        // 🛡️ null-safe 및 타입 캐스팅
                        Timestamp updatedAt = (Timestamp) row[0];
                        String description = (String) row[1];
                        String commentContent = (String) row[2];

                        return new MyCommentResponseDTO(
                                updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null, // Timestamp가 null일 경우 NPE 방지
                                description,
                                commentContent
                        );
                })
                .collect(Collectors.toList());
    }

    public Page<MyCommentResponseDTO> getMyCommentsPaged(String nickname, int page, int size) {
        // 1. 닉네임으로 사용자 ID 조회
        String userId = getUserIdByNickname(nickname);
        // 2. 페이징 객체 생성
        Pageable pageable = PageRequest.of(page, size);
        // 3. native 쿼리 결과 받아오기
        Page<Object[]> resultPage = communityRepository.findMyCommentsPaged(userId, pageable);

        // 4. Object[] → DTO 매핑
        return resultPage.map(row -> {
            Timestamp updatedAt = (Timestamp) row[0];
            String description = (String) row[1];
            String commentContent = (String) row[2];

            return new MyCommentResponseDTO(
                    updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null,
                    description,
                    commentContent
            );
        });
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
        // 1. 관심 태그 조회
        String interest = String.valueOf(userRepository.findInterestByNickname(nickname));
        if (interest == null) {
            throw new IllegalArgumentException("해당 사용자의 관심 태그가 없습니다.");
        }

        // 2. QnA 조회 (페이징)
        Pageable pageable = PageRequest.of(page, size);
        Page<CommunityQnAPostDTO> rawResults = communityRepository.findRecentQnAPostsByInterestPaged(interest, pageable);

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

        return ProfileSettingsResponseDTO.builder()
                .nickname(user.getNickname())
                .profileImageUrl(user.getProfileImageUrl())
                .introduction(user.getIntroduction())
                .interest(user.getInterest())
                .activityTime(user.getActivityTime())
                .activityType(user.getActivityType())
                .area(user.getArea() != null ? user.getArea().getAreaName() : null)
                .sigungu(user.getSigunguCode())
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
