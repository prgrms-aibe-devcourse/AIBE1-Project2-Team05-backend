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
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/users")
@RequiredArgsConstructor
@Tag(name = "프로필(마이페이지) API", description = "프로필 조회와 마이페이지 관련 API")
public class ProfileController {

    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final ProfileService profileService;
    private final MentorProfileService mentorProfileService;
    private final MenteeProfileService menteeProfileService;
    private final OngoingMatchingService ongoingMatchingService;

    @GetMapping("/{nickname}")
    @Operation(summary = "회원 페이지 조회", description = "멘토/멘티 프로필 페이지(마이페이지 조회) 관련 데이터를 조회합니다.")
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
    @Operation(summary = "나의 활동 내역 조회(멘토, 멘티 공통)", description = "멘토: 내가 등록한 재능 목록, 멘티: 내가 신청한 매칭, 내가 작성한 커뮤니티 게시글, 내가 작성한 댓글, 관심 목록 데이터를 조회합니다.")
    public ResponseEntity<ApiResponse<ActivityResponseDTO>> getActivity(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal userPrincipal     // 🟢 로그인한 사용자 주입
    ) {
        // 1. 사용자의 역할(멘토/멘티) 확인
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        User profile = userOpt.get();
        logger.debug("🔍 요청 대상 닉네임의 역할: {}", profile.getRole());

        // ✅ me 여부 판단: provider + providerId 기준으로 user 조회 → nickname 비교
        boolean isMe = false;

        if (userPrincipal != null) {
            Optional<User> loginUser = userRepository.findByProviderAndProviderId(
                    userPrincipal.provider(), userPrincipal.providerId()
            );

            isMe = loginUser
                    .map(user -> nickname.equals(user.getNickname()))
                    .orElse(false);
        }

        // 공통 조회 항목 - Controller에서는 입출력과 역할 분기만 담당
        // 공통 항목 DTO 생성 + me 설정
        ActivityResponseDTO.ActivityResponseDTOBuilder builder =
                profileService.getCommonActivityDTO(nickname).toBuilder()
                        .me(isMe); // ✅ 본인 여부 포함

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
    @Operation(summary = "나의 활동 내역 조회 more-details [매칭/재능/게시글/댓글]", description = "내가 신청한 매칭(my-matches), 내가 등록한 재능 목록(my-talents), 내가 작성한 게시글(my-posts), 내가 작성한 댓글(my-comments) 타입에 따라 관련 데이터를 자세히 조회합니다.")
    public ResponseEntity<ApiResponse<?>> getMoreDetails(
            @PathVariable String nickname,
            @RequestParam("type") String type,
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @AuthenticationPrincipal UserPrincipal userPrincipal // ✅ 여기서 닫기
    ) {
        return switch (type) {
            // 재능 목록 more-details
            case "my-talents" -> {
                ActivityMoreDetailsResponseDTO<CommunityTalentSummaryDTO> result =
                        mentorProfileService.getMyTalentsMoreDetails(nickname, userPrincipal, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            // 내가 쓴 게시글 more-details
            case "my-posts" -> {
                ActivityMoreDetailsResponseDTO<MyPostResponseDTO> dto =
                        profileService.getMyPostsMoreDetails(nickname, userPrincipal, page, size);
                yield ResponseEntity.ok(ApiResponse.success(dto));
            }

            // 내가 쓴 댓글 more-details
            case "my-comments" -> {
                ActivityMoreDetailsResponseDTO<MyCommentResponseDTO> dto =
                        profileService.getMyCommentsMoreDetails(nickname, userPrincipal, page, size);
                yield ResponseEntity.ok(ApiResponse.success(dto));
            }

            // 내가 신청한 매칭 more-details
            case "my-matches" -> {
                Page<MatchedMentorProfileDto> result =
                        menteeProfileService.getMyMatchesPaged(nickname, page, size);
                yield ResponseEntity.ok(ApiResponse.success(result));
            }

            default -> ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 type 파라미터입니다."));
        };
    }

    private final InterestMoreDetailsService interestMoreDetailsService;

//    // 관심 목록 더보기 API
//    @GetMapping("/{nickname}/activity/more-details/interests")
//    @Operation(summary = "나의 활동 내역 조회 more-details [관심 목록(북마크/좋아요)]", description = "북마크(bookmarked), 좋아요(liked), 전체(all) 옵션에 따라 관련 데이터를 자세히 조회합니다.")
//    public ResponseEntity<ApiResponse<?>> getInterestMoreDetails(
//            @PathVariable String nickname,
//            @RequestParam("filter") String filter, // bookmarked | liked | all
//            @RequestParam(value = "page", defaultValue = "0") int page,
//            @RequestParam(value = "size", defaultValue = "10") int size
//    ) {
//        // 유효하지 않은 filter 처리
//        if (!filter.equals("bookmarked") && !filter.equals("liked") && !filter.equals("all")) {
//            return ResponseEntity
//                    .status(HttpStatus.BAD_REQUEST)
//                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 filter 파라미터입니다."));
//        }
//
//        // 서비스 호출
//        Page<?> result = interestMoreDetailsService.getInterestPosts(nickname, filter, page, size);
//
//        // 성공 응답 반환
//        return ResponseEntity.ok(ApiResponse.success(result));
//    }
// 관심 목록 더보기 API
    @GetMapping("/{nickname}/activity/more-details/interests")
    @Operation(summary = "나의 활동 내역 조회 more-details [관심 목록(북마크/좋아요)]", description = "북마크(bookmarked), 좋아요(liked), 전체(all) 옵션에 따라 관련 데이터를 자세히 조회합니다.")
    public ResponseEntity<ApiResponse<ActivityMoreDetailsResponseDTO<InterestItemDTO>>> getInterestMoreDetails(
            @PathVariable String nickname,
            @RequestParam("filter") String filter, // bookmarked | liked | all
            @RequestParam(value = "page", defaultValue = "0") int page,
            @RequestParam(value = "size", defaultValue = "10") int size,
            @AuthenticationPrincipal UserPrincipal userPrincipal // 🔑 me 여부 계산용
    ) {
        // 1. filter 유효성 검사
        if (!List.of("bookmarked", "liked", "all").contains(filter)) {
            return ResponseEntity
                    .status(HttpStatus.BAD_REQUEST)
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "유효하지 않은 filter 파라미터입니다."));
        }

        // 2. 본인 여부 판단
        boolean isMe = false;
        if (userPrincipal != null) {
            Optional<User> loginUserOpt = userRepository.findByProviderAndProviderId(
                    userPrincipal.provider(), userPrincipal.providerId()
            );
            isMe = loginUserOpt.map(user -> user.getNickname().equals(nickname)).orElse(false);
        }

        // 3. 래핑된 DTO 응답 호출
        ActivityMoreDetailsResponseDTO<InterestItemDTO> result =
                interestMoreDetailsService.getInterestPostsWrapped(nickname, filter, page, size, isMe);

        // 4. 반환
        return ResponseEntity.ok(ApiResponse.success(result));
    }


    private final MatchingPageFacade matchingPageFacade;

    // ✅ 매칭 현황 API - Swagger 테스트용 (배포 시 주석 처리 필요)
    @GetMapping("/{nickname}/matching")
    @Operation(summary = "매칭 현황(멘토)", description = "받은 리뷰, 커뮤니티 질문 답변, 나의 멘토링 통계, 진행 중인 매칭 멘토의 매칭 관련 데이터를 조회합니다.")
    public ResponseEntity<ApiResponse<MyMatchingPageDTO>> getMatchingPage(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
//         여기부터 주석 또는 삭제
//        if (userPrincipal == null) {
//            logger.warn("⚠️ 인증 객체가 null입니다. Swagger 테스트 중일 수 있습니다.");
//            Optional<User> fallbackUserOpt = userRepository.findByNickname(nickname);
//            if (fallbackUserOpt.isEmpty()) {
//                return ResponseEntity.status(HttpStatus.NOT_FOUND)
//                        .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
//            }
//
//            User fallbackUser = fallbackUserOpt.get();
//            userPrincipal = new UserPrincipal(fallbackUser.getProviderId(), fallbackUser.getProvider());
//        }
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
    @Operation(summary = "매칭 현황 조회 more-details", description = "받은 리뷰(received-reviews), 커뮤니티 질문 답변(interest-qna), 진행 중인 매칭(ongoing) 타입에 따라 관련 데이터를 자세히 조회합니다.")
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
    @Operation(summary = "닉네임 중복 확인용", description = "프로필 설정에서 닉네임 변경 시 사용자가 중복 확인 가능하도록 구현(프로필 변경 시 닉네임 중복 검사 로직과 별도 기능입니다)")
    public ResponseEntity<ApiResponse<NicknameCheckResponseDTO>> checkNicknameDuplication(
            @RequestParam("nickname") String nickname) {

        boolean isDuplicated = userRepository.existsByNickname(nickname);
        NicknameCheckResponseDTO response = new NicknameCheckResponseDTO(isDuplicated);

        return ResponseEntity.ok(ApiResponse.success(response));
    }

    @GetMapping("/{nickname}/profile")
    @Operation(summary = "마이페이지 프로필 설정 - 현재 정보 불러오기", description = "프로필 설정 현재 사용자 정보 조회")
    public ResponseEntity<ApiResponse<ProfileSettingsResponseDTO>> getProfileSettings(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal principal
    ) {
        ProfileSettingsResponseDTO response = profileService.getProfileSettings(nickname, principal);
        return ResponseEntity.ok(ApiResponse.success(response));
    }

    @PatchMapping("/{nickname}/profile")
    @Operation(summary = "프로필 정보 수정", description = "자기 자신의 프로필 정보를 수정합니다.")
    public ResponseEntity<ApiResponse<String>> updateProfileFields(
            @PathVariable String nickname,
            @RequestBody ProfileUpdateRequestDTO dto,
            @AuthenticationPrincipal UserPrincipal principal
    ) {
        try {
            profileService.updateProfileFields(nickname, dto, principal);
            return ResponseEntity.ok(ApiResponse.success("프로필 정보가 수정되었습니다."));
        } catch (AccessDeniedException e) {
            logger.warn("🚫 접근 거부: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        } catch (Exception e) {
            logger.error("❌ 서버 오류 발생", e);
            return ResponseEntity.internalServerError()
                    .body(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }


    @Autowired
    private ProfileImageService profileImageService;

    @PostMapping(
            value = "/{nickname}/profile/image",
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE
    )
    @Operation(summary = "프로필 설정 - 프로필 이미지 변경", description = "프로필 설정에서 사용자 프로필 변경")
    public ResponseEntity<ApiResponse<?>> updateProfileImage(
            @PathVariable String nickname,
            @RequestParam("profileImage") MultipartFile profileImage,
//            @RequestPart("profileImage") MultipartFile profileImage,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        if (profileImage == null || profileImage.isEmpty()) {
            return ResponseEntity.badRequest()
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, "이미지 파일이 전달되지 않았습니다."));
        } else {
            logger.info("일단 이미지 파일은 보내진 듯??");
        }

        logger.info("📸 [Upload] 프로필 이미지 업로드 요청 nickname = {}, fileName = {}", nickname, profileImage.getOriginalFilename());

        try {
            profileService.validateAccess(nickname, userPrincipal);
            logger.info("🔐 접근 권한 검증 성공");

            User user = userRepository.findByProviderAndProviderId(
                    userPrincipal.provider(), userPrincipal.providerId()
            ).orElseThrow(() -> new EntityNotFoundException("사용자를 찾을 수 없습니다."));

            logger.info("👤 사용자 조회 성공: id = {}, nickname = {}", user.getId(), user.getNickname());

            // 업로드 및 URL 저장
            String imageUrl = profileImageService.uploadProfileImage(user.getId(), profileImage);
            logger.info("✅ Supabase 업로드 완료, imageUrl = {}", imageUrl);

            // 사용자 프로필 이미지 경로 업데이트 및 저장
            user.updateProfileImage(imageUrl);
            logger.info("imageUrl = " + imageUrl);
            userRepository.save(user); // 저장 - DB 반영

            return ResponseEntity.ok(ApiResponse.success("프로필 이미지가 변경되었습니다."));

        } catch (AccessDeniedException e) {
            logger.warn("🚫 접근 거부: {}", e.getMessage());
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED));
        } catch (IllegalArgumentException e) {
            logger.warn("⚠️ 유효하지 않은 입력값: {}", e.getMessage());
            return ResponseEntity.badRequest()
                    .body(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, e.getMessage()));
        } catch (Exception e) {
            logger.error("❌ 서버 오류 발생", e);
            return ResponseEntity.internalServerError()
                    .body(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR));
        }
    }


}