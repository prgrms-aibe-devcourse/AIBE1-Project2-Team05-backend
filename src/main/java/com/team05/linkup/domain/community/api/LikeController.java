package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.LikeService;
import com.team05.linkup.domain.community.dto.LikeResponseDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

/**
 * 커뮤니티 게시글의 '좋아요' 관련 HTTP 요청을 처리하는 컨트롤러.
 */
@Tag(name = "커뮤니티 API", description = "커뮤니티 게시글 좋아요 관련 API")
@RestController
@RequestMapping("/v1/community/details/{communityId}/like")
@RequiredArgsConstructor
public class LikeController {

    private final LikeService likeService;

    /**
     * 현재 인증된 사용자가 특정 커뮤니티 게시글의 '좋아요' 상태를 토글합니다.
     * 작업 후, 게시글의 최신 '좋아요' 상태와 총 '좋아요' 수를 응답 본문에 담아 HTTP 200 (OK)으로 반환합니다.
     * 인증 실패 시에도 HTTP 200 (OK)으로 응답하되, 응답 본문에 에러 정보를 포함합니다.
     *
     * @param communityId 대상 게시글의 ID (URL 경로 변수).
     * @param userPrincipal 현재 인증된 사용자 정보 (Spring Security에 의해 자동으로 주입됨).
     * @return {@link ResponseEntity} - {@link LikeResponseDTO} 또는 에러 정보를 포함하는 {@link ApiResponse}.
     * 응답 본문 내 {@code LikeResponseDTO}는 토글 후의 최종 '좋아요' 상태(liked: true/false)와
     * 게시글의 총 '좋아요' 수(likeCount)를 담고 있습니다.
     */
    @Operation(summary = "게시글 좋아요 토글", description = "특정 커뮤니티 게시글의 좋아요 상태를 변경(토글)합니다.")
    @PostMapping
    public ResponseEntity<ApiResponse<LikeResponseDTO>> toggleLike(
            @PathVariable String communityId,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        if (userPrincipal == null) {
            return ResponseEntity
                    .ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        try {
            LikeResponseDTO likeResponse = likeService.toggleLike(userPrincipal, communityId);

            return ResponseEntity.ok(ApiResponse.success(likeResponse));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "좋아요 처리 중 오류가 발생했습니다."));
        }
    }
}