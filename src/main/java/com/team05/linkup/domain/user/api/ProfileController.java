package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.application.OngoingMatchingService;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.mentoring.dto.OngoingMatchingDTO;
import com.team05.linkup.domain.review.application.ReviewService;
import com.team05.linkup.domain.review.dto.ReceivedReviewDTO;
import com.team05.linkup.domain.user.application.*;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.*;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/users")
@RequiredArgsConstructor
public class ProfileController {

    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final ProfileService profileService;
    private final MentorProfileService mentorProfileService;
    private final MenteeProfileService menteeProfileService;
    private final OngoingMatchingService ongoingMatchingService;

    @GetMapping("/{nickname}")
    @Transactional(readOnly = true)
    public ResponseEntity<ApiResponse<ProfilePageDTO>> getProfile(@PathVariable String nickname, @AuthenticationPrincipal UserPrincipal userPrincipal) {

        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        ProfilePageDTO profilePageDTO = profileService.getProfile(userOpt.get(), userPrincipal);

        return ResponseEntity.ok(ApiResponse.success(profilePageDTO));
    }

    @GetMapping("/{nickname}/activity")
    public ResponseEntity<ApiResponse<ActivityResponseDTO>> getActivity(@PathVariable String nickname) {
        // 1. 사용자의 역할(멘토/멘티) 확인
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        User profile = userOpt.get();
        logger.debug(profile.getRole());

        // 공통 조회 항목 - Controller에서는 입출력과 역할 분기만 담당
        ActivityResponseDTO.ActivityResponseDTOBuilder builder =
                profileService.getCommonActivityDTO(nickname).toBuilder();

        if (profile.getRole().equals(Role.ROLE_MENTOR)) {
            // 멘토의 경우, 커뮤니티 재능나눔 게시글 작성 내역 조회하여 반환
            List<CommunityTalentSummaryDTO> talents = mentorProfileService.getCommunityTalents(nickname, 2);
            builder.talents(talents);

        } else if (profile.getRole().equals(Role.ROLE_MENTEE)) {
            // 멘티의 경우, 내가 신청한 매칭의 멘토 정보를 조회하여 반환
            List<MatchedMentorProfileDto> matches = menteeProfileService.getMyMentoringSessions(profile.getId(), 2);
            builder.matches(matches);
            logger.debug("멘티의 매칭 내역 조회 성공");
        }

        return ResponseEntity.ok(ApiResponse.success(builder.build()));
    }

    @GetMapping("/{nickname}/activity/more-details")
    public ResponseEntity<ApiResponse<?>> getMoreDetails(
            @PathVariable String nickname,
            @RequestParam("type") String type,
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size   // size 파라미터 추가
    ) {
        return switch (type) {
            // 재능 목록 more-details
            case "my-talents" -> {
                Page<CommunityTalentSummaryDTO> result =
                        mentorProfileService.getCommunityTalentsPaged(nickname, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            // 내가 쓴 게시글 more-details
            case "my-posts" -> {
                Page<MyPostResponseDTO> result =
                        profileService.getMyPostsPaged(nickname, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            // 내가 쓴 댓글 more-details
            case "my-comments" -> {
                Page<MyCommentResponseDTO> result =
                        profileService.getMyCommentsPaged(nickname, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            default -> ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 type 파라미터입니다."));
        };
    }

    private final InterestMoreDetailsService interestMoreDetailsService;

    // 관심 목록 더보기 API
    @GetMapping("/{nickname}/activity/more-details/interests")
    public ResponseEntity<ApiResponse<?>> getInterestMoreDetails(
            @PathVariable String nickname,
            @RequestParam("filter") String filter, // bookmarked | liked | all
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size
    ) {
        // 유효하지 않은 filter 처리
        if (!filter.equals("bookmarked") && !filter.equals("liked") && !filter.equals("all")) {
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 filter 파라미터입니다."));
        }

        // 서비스 호출
        Page<?> result = interestMoreDetailsService.getInterestPosts(nickname, filter, page, size);

        // 성공 응답 반환
        return ResponseEntity.ok(ApiResponse.success(result));
    }

    private final MatchingPageFacade matchingPageFacade;

    // ✅ 매칭 현황 API - Swagger 테스트용 (배포 시 주석 처리 필요)
    @GetMapping("/{nickname}/matching")
    public ResponseEntity<ApiResponse<MyMatchingPageDTO>> getMatchingPage(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
//         여기부터 주석 또는 삭제
        if (userPrincipal == null) {
            logger.warn("⚠️ 인증 객체가 null입니다. Swagger 테스트 중일 수 있습니다.");
            Optional<User> fallbackUserOpt = userRepository.findByNickname(nickname);
            if (fallbackUserOpt.isEmpty()) {
                return ResponseEntity.status(HttpStatus.NOT_FOUND)
                        .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
            }

            User fallbackUser = fallbackUserOpt.get();
            userPrincipal = new UserPrincipal(fallbackUser.getProviderId(), fallbackUser.getProvider());
        }
        // 여기까지

        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId()
        );
        if (userOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
        }

        User user = userOpt.get();

        if (!user.getNickname().equals(nickname)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "본인의 매칭 정보만 조회할 수 있습니다."));
        }

        if (!user.getRole().equals(Role.ROLE_MENTOR)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "멘토만 매칭 정보를 조회할 수 있습니다."));
        }

        // ✨ 기존: profileService → 변경: matchingPageFacade
        MyMatchingPageDTO result = matchingPageFacade.getMatchingPageData(user);
        return ResponseEntity.ok(ApiResponse.success(result));
    }

    // 리뷰 서비스 주입
    private final ReviewService reviewService;

    // 매칭 현황 - 더보기 API
    @GetMapping("/{nickname}/matching/more-details")
    public ResponseEntity<ApiResponse<?>> getMatchingMoreDetails(
            @PathVariable String nickname,
            @RequestParam("type") String type,
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size
    ) {
        // ✅ 유효한 타입인지 확인
        if (!List.of("interest-qna", "received-reviews", "ongoing").contains(type)) {
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 type 파라미터입니다."));
        }

        // ✅ 사용자 조회
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
        }

        User user = userOpt.get();
        Pageable pageable = PageRequest.of(page, size);

        return switch (type) {
            case "interest-qna" -> {
                String interest = String.valueOf(userRepository.findInterestByNickname(nickname));
                if (interest == null) {
                    yield ResponseEntity.status(HttpStatus.NOT_FOUND)
                            .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "관심 태그 정보를 찾을 수 없습니다."));
                }

                Page<CommunityQnAPostResponseDTO> result =
                        matchingPageFacade.getRecentQnAPostsByInterestPaged(interest, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            case "received-reviews" -> {
                Page<ReceivedReviewDTO> result =
                        reviewService.getReceivedReviewsPaged(user.getId(), page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            case "ongoing" -> {
                Page<OngoingMatchingDTO> result =
                        matchingPageFacade.getOngoingMatchingsPaged(user.getId(), pageable);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            default -> ResponseEntity.status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "지원하지 않는 type입니다."));
        };
    }

    @GetMapping("/check-nickname")
    public ResponseEntity<ApiResponse<NicknameCheckResponseDTO>> checkNicknameDuplication(
            @RequestParam("nickname") String nickname) {

        boolean isDuplicated = userRepository.existsByNickname(nickname);
        NicknameCheckResponseDTO response = new NicknameCheckResponseDTO(isDuplicated);

        return ResponseEntity.ok(ApiResponse.success(response));
    }

    @GetMapping("/{nickname}/profile")
    public ResponseEntity<ApiResponse<ProfileSettingsResponseDTO>> getProfileSettings(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal principal
    ) {
        ProfileSettingsResponseDTO response = profileService.getProfileSettings(nickname, principal);
        return ResponseEntity.ok(ApiResponse.success(response));
    }

    @PatchMapping("/{nickname}/profile")
    public ResponseEntity<ApiResponse<?>> updateProfileSettings(
            @PathVariable String nickname,
            @RequestBody ProfileUpdateRequestDTO requestDTO,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        try {
            // 🔐 사용자 권한 검증
            profileService.validateAccess(nickname, userPrincipal);

            // 🧾 프로필 수정 처리
            profileService.updateProfileFields(nickname, requestDTO, userPrincipal);

            return ResponseEntity.ok(ApiResponse.success("프로필이 성공적으로 수정되었습니다."));
        } catch (AccessDeniedException e) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        } catch (EntityNotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        }
    }


}