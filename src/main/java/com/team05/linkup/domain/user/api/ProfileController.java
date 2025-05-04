package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.user.application.MenteeProfileService;
import com.team05.linkup.domain.user.application.MentorProfileService;
import com.team05.linkup.domain.user.application.ProfileService;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.dto.ActivityResponseDTO;
import com.team05.linkup.domain.user.dto.ProfilePageDTO;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
    public ResponseEntity<ApiResponse<ProfilePageDTO>> getProfile(@PathVariable String nickname) {

        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        ProfilePageDTO profilePageDTO = profileService.getProfile(userOpt.get());

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

        // 공통 조회 항목 - Controller에서는 입출력과 역할 분기만 담당 (리팩토링)
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

}