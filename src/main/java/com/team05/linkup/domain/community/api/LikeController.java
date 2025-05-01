package com.team05.linkup.domain.community.api;


import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.LikeService;
import com.team05.linkup.domain.community.dto.LikeStatusResponse;
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
     * 현재 인증된 사용자가 특정 커뮤니티 게시글의 '좋아요' 상태를 토글합니다.
     * (좋아요 상태 -> 좋아요 취소 / 좋아요 아닌 상태 -> 좋아요 추가)
     *
     * @param communityId 토글할 게시글의 ID (경로 변수).
     * @param providerId  현재 인증된 사용자 정보 (Spring Security가 주입).
     * @return 토글 후의 최종 '좋아요' 상태를 담은 응답 (liked: true/false).
     */
    @Operation(summary = "게시글 좋아요 토글", description = "특정 커뮤니티 게시글의 좋아요 상태를 변경(토글)합니다.")
    @PostMapping
    public ResponseEntity<ApiResponse<LikeStatusResponse>> toggleLike(
            @PathVariable String communityId,
            @AuthenticationPrincipal String providerId
    ) {
        if (providerId == null) {
            return ResponseEntity.status(401).body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        boolean liked = likeService.toggleLike(providerId, communityId);
        return ResponseEntity.ok(ApiResponse.success(new LikeStatusResponse(liked)));
    }
}