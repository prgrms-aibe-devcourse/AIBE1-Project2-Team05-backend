package com.team05.linkup.domain.community.api;


import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.LikeService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

/**
 * 커뮤니티 게시글의 '좋아요' 관련 HTTP 요청을 처리하는 컨트롤러.
 */
@Tag(name = "Like API", description = "커뮤니티 게시글 좋아요 관련 API")
@RestController
@RequestMapping("/v1/community/{communityId}/like")
@RequiredArgsConstructor
public class LikeController {

    private final LikeService likeService;

    /**
     * 현재 인증된 사용자가 특정 커뮤니티 게시글에 '좋아요'를 추가.
     *
     * @param communityId 좋아요를 추가할 게시글의 ID (경로 변수).
     * @param providerId 현재 인증된 사용자 정보 (Spring Security가 주입).
     * @return 성공 시 200 OK 응답. 사용자가 없으면 401 Unauthorized.
     */
    @Operation(summary = "게시글 좋아요 추가", description = "특정 커뮤니티 게시글에 좋아요를 추가합니다.")
    @PostMapping
    public ResponseEntity<ApiResponse<Void>> addLike(
            @PathVariable String communityId,
            @AuthenticationPrincipal String providerId
    ) {
        // 1. 사용자 정보 확인 (providerId가 null이면 인증되지 않은 사용자)
        if (providerId == null) {
            return ResponseEntity.status(401).body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }
        // 2. 서비스 호출하여 좋아요 추가 로직 수행
        likeService.addLike(providerId, communityId); // String 타입 ID 전달
        // 3. 성공 응답 반환
        return ResponseEntity.ok(ApiResponse.success());
    }

    /**
     * 현재 인증된 사용자가 특정 커뮤니티 게시글에 누른 '좋아요'를 취소.
     *
     * @param communityId 좋아요를 취소할 게시글의 ID (경로 변수).
     * @param providerId  현재 인증된 사용자 정보 (Spring Security가 주입).
     * @return 성공 시 200 OK 응답. 사용자가 없으면 401 Unauthorized.
     */
    @Operation(summary = "게시글 좋아요 취소", description = "특정 커뮤니티 게시글의 좋아요를 취소합니다.")
    @DeleteMapping
    public ResponseEntity<ApiResponse<Void>> removeLike(
            @PathVariable String communityId,
            @AuthenticationPrincipal String providerId
    ) {
        // 1. 사용자 정보 확인
        if (providerId == null) {
            return ResponseEntity.status(401).body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }
        // 2. 서비스 호출하여 좋아요 취소 로직 수행
        likeService.removeLike(providerId, communityId);
        // 3. 성공 응답 반환
        return ResponseEntity.ok(ApiResponse.success());
    }
}