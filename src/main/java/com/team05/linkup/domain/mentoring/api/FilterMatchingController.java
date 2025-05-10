package com.team05.linkup.domain.mentoring.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.mentoring.application.FilterMatchingService;
import com.team05.linkup.domain.mentoring.dto.MentorCardDTO;
import com.team05.linkup.domain.mentoring.dto.MentorFilterDTO;
import com.team05.linkup.domain.mentoring.dto.MentorProfileDTO;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1/matching")
@RequiredArgsConstructor
@Tag(name = "매칭(수동 필터) API", description = "수동 매칭 관련 API")
public class FilterMatchingController {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final FilterMatchingService filterMatchingService;

    @PostMapping("/{nickname}")
    @Operation(summary = "수동 매칭 멘토링 확정", description = "해당 닉네임의 멘토와 멘토링을 진행하도록 설정하고, 멘토링_세션 DB에 '진행 중' 상태로 저장합니다.")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse> createMatching(@AuthenticationPrincipal UserPrincipal userPrincipal, @PathVariable String nickname) {
        Optional<User> userOpt = userRepository.findByProviderAndProviderId(
                userPrincipal.provider(), userPrincipal.providerId());
        if (userOpt.isEmpty())
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        try {
            String contactLink = filterMatchingService.createMatching(nickname, userPrincipal);
            return ResponseEntity.ok(ApiResponse.created(contactLink));
        } catch (IllegalArgumentException ex) {
            // 잘못된 요청 처리
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, ex.getMessage()));
        } catch (Exception ex) {
            logger.error("매칭 생성 중 알 수 없는 오류 발생: {}", ex.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "서버 내부 오류가 발생했습니다."));
        }
    }

    @GetMapping("/{nickname}")
    @Operation(summary = "수동 매칭 상세 조회", description = "해당하는 nickname의 프로필 정보를 상세하게 조회합니다.")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse<MentorProfileDTO>> getMentorProfile(@PathVariable String nickname) {
        Optional<User> userOpt = userRepository.findUserWithAreaByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "멘토 프로필을 찾을 수 없습니다."));

        try {
            MentorProfileDTO mentorProfile = filterMatchingService.getMentor(userOpt.get());
            return ResponseEntity.ok(ApiResponse.success(mentorProfile));
        } catch (IllegalArgumentException ex) {
            // 잘못된 요청 처리
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INVALID_INPUT_VALUE, ex.getMessage()));
        } catch (Exception ex) {
            logger.error("멘토 프로필 조회 중 알 수 없는 오류 발생: {}", ex.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "서버 내부 오류가 발생했습니다."));
        }
    }

    @PostMapping("/list")
    @Operation(summary = "수동 매칭 리스트 조회", description = "interest, areaCode, sigunguCode, activityTime, activityType 필터에 따라 해당하는 멘토의 카드 프로필을 조회합니다.")
    @PreAuthorize("hasAuthority('ROLE_MENTEE')")
    public ResponseEntity<ApiResponse<List<MentorCardDTO>>> filterMentors(@RequestBody MentorFilterDTO mentorFilterDTO) {
        try {
            List<MentorCardDTO> mentors = filterMatchingService.filterMentors(mentorFilterDTO);
            return ResponseEntity.ok(ApiResponse.success(mentors));
        } catch (Exception ex) {
            logger.error("멘토 필터링 중 오류 발생: {}", ex.getMessage());
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR,
                    "멘토 목록을 가져오는 중 오류가 발생했습니다."));
        }
    }
}
