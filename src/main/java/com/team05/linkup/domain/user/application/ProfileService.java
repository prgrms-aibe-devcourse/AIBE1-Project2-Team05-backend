package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.user.domain.Area;
import com.team05.linkup.domain.user.domain.Sigungu;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.*;
import com.team05.linkup.domain.user.infrastructure.SigunguRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProfileService {

    private static final Logger logger = LogManager.getLogger();
    private final SigunguRepository sigunguRepository;

    public ProfilePageDTO getProfile(User user) {
        // Area 객체에서 지역 이름을 가져옵니다
        String areaName = null;
        String sigungu = null;

        if (user.getArea() != null) {
            Area area = user.getArea();
            areaName = area.getAreaName();

            // 사용자의 sigunguCode가 있으면 해당 시군구 정보를 가져옵니다
            if (user.getSigunguCode() != null) {
                // 람다 표현식 없이 직접 처리
                Optional<Sigungu> sigunguOpt = sigunguRepository.findByIdAreacodeAndIdSigungucode(
                    area.getAreacode(), user.getSigunguCode());
                if (sigunguOpt.isPresent()) {
                    sigungu = sigunguOpt.get().getSigunguname();
                }
            }
        }

        boolean isCurrentUser = isCurrentUser(user);

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
    private static boolean isCurrentUser(User user) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        String currentProviderId = null;
        if (principal instanceof String) {
            currentProviderId = (String) principal;
        }
        logger.debug("사용자 provider Id: {}, 프로필 provider ID: {}", currentProviderId, user.getProviderId());
        return currentProviderId != null && currentProviderId.equals(user.getProviderId());
    }


    private final CommunityRepository communityRepository;

    public List<MyPostResponseDTO> getMyPosts(String nickname, int limit) {
        List<Object[]> rawResults = communityRepository.findByCommunityPosts(nickname, limit);

        return rawResults.stream()
                .map(obj -> new MyPostResponseDTO(
                        (String) obj[0],                                      // id
                        ((Timestamp) obj[1]).toLocalDateTime(),              // updated_at
                        (String) obj[2],                                      // category
                        (String) obj[3],                                      // title
                        (String) obj[4],                                      // content
                        ((Number) obj[5]).intValue(),                         // view_count (Long → int)
                        ((Number) obj[6]).intValue(),                         // like_count (Long → int)
                        ((Number) obj[7]).intValue()                          // comment_count (Long → int)
                ))
                .collect(Collectors.toList());
    }

    public List<MyCommentResponseDTO> getMyComments(String nickname, int limit) {
        // userId 조회
        String userId = communityRepository.findUserIdByNickname(nickname); // ※ 아래에서 쿼리도 추가로 만들어줘야 함

        List<Object[]> rows = communityRepository.findByMyCommunityComments(userId, limit);

        return rows.stream()
                .map(row -> new MyCommentResponseDTO(
                        ((Timestamp) row[0]).toLocalDateTime(),  // updated_at
                        (String) row[1],                          // description
                        (String) row[2]                           // comment_content
                ))
                .collect(Collectors.toList());
    }

     public List<MyBookmarkResponseDTO> getMyBookmarks(String nickname, int limit) {
        String userId = communityRepository.findUserIdByNickname(nickname);
        List<Object[]> rawResults = communityRepository.findByMyBookmarks(userId, limit);
        return rawResults.stream()
                .map(obj -> new MyBookmarkResponseDTO(
                        ((Timestamp) obj[0]).toLocalDateTime(),
                        (String) obj[1],
                        (String) obj[2]
                ))
                .collect(Collectors.toList());
    }

    public List<MyLikeResponseDTO> getMyLikePosts(String nickname, int limit) {
        String userId = communityRepository.findUserIdByNickname(nickname);
        List<Object[]> rawResults = communityRepository.findByMyLikePosts(userId, limit);

        return rawResults.stream()
                .map(obj -> new MyLikeResponseDTO(
                        ((java.sql.Timestamp) obj[0]).toLocalDateTime(),
                        (String) obj[1],
                        (String) obj[2]
                ))
                .collect(Collectors.toList());
    }

    /**
     *  활동 내역 중 공통 항목
     *  (서비스 단으로 리팩터링
     *      && Map<String, Object> -> DTO 형태로 변경)
     */
    public ActivityResponseDTO getCommonActivityDTO(String nickname) {
        return ActivityResponseDTO.builder()
                .posts(getMyPosts(nickname, 2))
                .comments(getMyComments(nickname, 2))
                .bookmarks(getMyBookmarks(nickname, 1))
                .likes(getMyLikePosts(nickname, 1))
                .build();
    }
}
