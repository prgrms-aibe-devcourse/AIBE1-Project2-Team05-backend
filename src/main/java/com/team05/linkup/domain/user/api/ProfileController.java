package com.team05.linkup.domain.user.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.mentoring.dto.MatchedMentorProfileDto;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.user.application.MenteeProfileService;
import com.team05.linkup.domain.user.application.MentorProfileService;
import com.team05.linkup.domain.user.application.ProfileService;
import com.team05.linkup.domain.user.dto.ProfilePageDTO;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
    public ResponseEntity<ApiResponse<ProfilePageDTO>> getProfile(@PathVariable String nickname) {

        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));


        ProfilePageDTO profilePageDTO = profileService.getProfile(userOpt.get());

        return ResponseEntity.ok(ApiResponse.success(profilePageDTO));
    }


    @GetMapping("/{nickname}/activity")
    public ResponseEntity<ApiResponse> getActivity(@PathVariable String nickname) {
        // 1. 사용자의 역할(멘토/멘티) 확인
        Optional<User> userOpt = userRepository.findByNickname(nickname);
        if (userOpt.isEmpty())
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, "프로필을 찾을 수 없습니다."));

        Map<String, Object> data = new HashMap<>();

        User profile = userOpt.get();
        logger.debug(profile.getRole());

        if (profile.getRole().equals(Role.ROLE_MENTOR)) {
            // 멘토의 경우, 커뮤니티 재능나눔 게시글 작성 내역 조회하여 반환
//          List<Community> talents = mentorProfileService.getCommunityTalents(profile.getId(), 2);
//          data.put("talent", talents);

        } else if (profile.getRole().equals(Role.ROLE_MENTEE)) {
            // 멘티의 경우, 내가 신청한 매칭의 멘토 정보를 조회하여 반환
          List<MatchedMentorProfileDto> matches = menteeProfileService.getMyMentoringSessions(profile.getId(), 2);
          data.put("matches", matches);
            logger.debug("멘티의 매칭 내역 조회 성공");
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
}
