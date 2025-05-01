package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.domain.MentoringSessions;
import com.team05.linkup.domain.user.application.MenteeProfileService;
import com.team05.linkup.domain.user.application.MentorProfileService;
import com.team05.linkup.domain.user.application.ProfileService;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Slf4j
@RestController
@RequestMapping("/v1/users")
@RequiredArgsConstructor
public class ProfileController {

    private final UserRepository userRepository;
    private final ProfileService profileService;
    private final MentorProfileService mentorProfileService;
    private final MenteeProfileService menteeProfileService;

    @GetMapping("/{nickname}/profile")
    public ResponseEntity<ApiResponse> getProfile(@PathVariable String nickname) {
        // 1. 사용자의 역할(멘토/멘티) 확인
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        Map<String, Object> data = new HashMap<>();
        User profile = userOpt.get();
        if (profile.getRole().equals(Role.ROLE_MENTOR)) {
            // 멘토의 경우, 커뮤니티 재능나눔 게시글 작성 내역 조회하여 반환
//          List<Community> talents = mentorProfileService.getCommunityTalents(nickname, 2);
//          data.put("talent", talents);

        } else if (profile.getRole().equals(Role.ROLE_MENTEE)) {
            // 멘티의 경우, 내가 신청한 매칭 내역을 조회하여 반환
            List<MentoringSessions> matches = menteeProfileService.getMyMentoringSessions(nickname, 2);
            data.put("matches", matches);
        }

        // 3. 추가 정보 조회
        // 커뮤니티 재능나눔 게시글 작성 내역 조회하여 반환
//        List<Community> posts = profileService.getMyPosts(nickname, 2);
//        data.put("posts", posts);

        // 사용자가 작성한 댓글을 조회하여 반환
//        List<Comments> comments = profileService.getMyComments(nickname, 2);
//        data.put("comments", comments);

        // 사용자의 북마크를 조회하여 반환
//        List<Bookmark> bookmarks = profileService.getMyBookmarks(nickname, 2);
//        data.put("bookmarks", bookmarks);


        return ResponseEntity.ok(ApiResponse.success(data));
    }

    @GetMapping("/{nickname}/profile/activity")
    public ResponseEntity<ApiResponse> getProfileActivity(@PathVariable String nickname) {
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "활동 내역을 찾을 수 없습니다."));
        }

        User user = userOpt.get();
        log.info("✅ 현재 사용자 닉네임 = {}", nickname);
        log.info("✅ 역할 = {}", user.getRole());
        Map<String, Object> data = getCommonActivity(nickname); // 공통 조회 항목들 불러오기

        if (user.getRole().equals(Role.ROLE_MENTOR)) {
            log.info("✅ 멘토 맞음, 재능 데이터 조회 시작!");
            List<CommunityTalentSummaryDTO> talents = mentorProfileService.getCommunityTalents(nickname, 2);
            log.info("✅ 재능 개수: {}", talents.size());
            data.put("talents", talents);
        } else if (user.getRole().equals(Role.ROLE_MENTEE)) {
            log.info("✅ 멘티 맞음, 매칭 내역 조회 시작!");
            List<MentoringSessions> matches = menteeProfileService.getMyMentoringSessions(nickname, 2);
            data.put("matches", matches);
        }

        return ResponseEntity.ok(ApiResponse.success(data));
    }

    /**
     * 📦 활동 내역 중 공통 항목을 한 번에 불러오는 private 메서드
     */
    private Map<String, Object> getCommonActivity(String nickname) {
        Map<String, Object> data = new HashMap<>();
        data.put("posts", profileService.getMyPosts(nickname, 2));
        data.put("comments", profileService.getMyComments(nickname, 2));
        data.put("bookmarks", profileService.getMyBookmarks(nickname, 1));
        data.put("likes", profileService.getMyLikePosts(nickname, 1));
        return data;
    }
}