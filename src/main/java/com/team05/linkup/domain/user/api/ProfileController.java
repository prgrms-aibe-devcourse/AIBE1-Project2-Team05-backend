package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.user.application.MenteeProfileService;
import com.team05.linkup.domain.user.application.MentorProfileService;
import com.team05.linkup.domain.user.application.ProfileService;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.ActivityResponseDTO;
import com.team05.linkup.domain.user.dto.MyMatchingPageDTO;
import com.team05.linkup.domain.user.dto.ProfilePageDTO;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

//    // 멘토 매칭 현황
//    @GetMapping("/{nickname}/matching")
//    public ResponseEntity<ApiResponse<MyMatchingPageDTO>> getMatchingPage(
//            @PathVariable String nickname,
//            @AuthenticationPrincipal UserPrincipal userPrincipal    // 기본 인증 방식
//    ) {
//        logger.debug("✅ 현재 로그인한 사용자 provider = {}, providerId = {}", userPrincipal.provider(), userPrincipal.providerId());
//
//        // provider + providerId로 현재 로그인한 사용자 조회
//        Optional<User> userOpt = userRepository.findByProviderAndProviderId(userPrincipal.provider(), userPrincipal.providerId());
//        if (userOpt.isEmpty()) {
//            return ResponseEntity.status(HttpStatus.NOT_FOUND)
//                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
//        }
//
//        User user = userOpt.get();
//
//        // nickname 비교로 본인 확인
//        if (!user.getNickname().equals(nickname)) {
//            return ResponseEntity.status(HttpStatus.FORBIDDEN)
//                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "본인의 매칭 정보만 조회할 수 있습니다."));
//        }
//
//        // 멘토 권한 확인
//        if (!user.getRole().equals(Role.ROLE_MENTOR)) {
//            return ResponseEntity.status(HttpStatus.FORBIDDEN)
//                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "멘토만 매칭 정보를 조회할 수 있습니다."));
//        }
//
//        // 매칭 데이터 조회
//        MyMatchingPageDTO result = profileService.getMatchingPageData(user);
//        return ResponseEntity.ok(ApiResponse.success(result));
//    }

    // 멘토 매칭 현황 -> swagger 테스트용 코드(배포 시 위에 주석으로 되어있는 코드 활성화 후 지금 코드 삭제 예정)
    @GetMapping("/{nickname}/matching")
    public ResponseEntity<ApiResponse<MyMatchingPageDTO>> getMatchingPage(
            @PathVariable String nickname,
            @AuthenticationPrincipal UserPrincipal userPrincipal // ✅ 기본 인증 방식
    ) {
        // ✅ Swagger 등에서 인증 객체가 null일 때 테스트용 fallback
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

        // provider + providerId로 현재 로그인한 사용자 조회
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId()
        );

        if (userOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "사용자를 찾을 수 없습니다."));
        }

        User user = userOpt.get();

        // nickname 비교로 본인 확인
        if (!user.getNickname().equals(nickname)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "본인의 매칭 정보만 조회할 수 있습니다."));
        }

        // 멘토 권한 확인
        if (!user.getRole().equals(Role.ROLE_MENTOR)) {
            return ResponseEntity.status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.ACCESS_DENIED, "멘토만 매칭 정보를 조회할 수 있습니다."));
        }

        // 매칭 데이터 조회
        MyMatchingPageDTO result = profileService.getMatchingPageData(user);
        return ResponseEntity.ok(ApiResponse.success(result));
    }


}
