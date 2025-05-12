package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.BookmarkService;
import com.team05.linkup.domain.community.dto.BookmarkStatusResponseDTO;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

/**
 * 커뮤니티 게시글의 '북마크' 관련 HTTP 요청을 처리하는 컨트롤러.
 */
@Tag(name = "커뮤니티 API", description = "커뮤니티 게시글 북마크 관련 API")
@RestController
@RequestMapping("/v1/community/details/")
@RequiredArgsConstructor
public class BookmarkController {

    private final BookmarkService bookmarkService;

    /**
     * 현재 인증된 사용자가 특정 커뮤니티 게시글의 '북마크' 상태를 토글.
     * (북마크 상태 -> 북마크 취소 / 북마크 아닌 상태 -> 북마크 추가)
     * 작업 후, 게시글의 최신 북마크 상태를 응답 본문에 담아 HTTP 200 (OK)으로 반환합니다.
     * 인증 실패 또는 관련 엔티티 조회 실패 시에도 HTTP 200 (OK)으로 응답하되, 응답 본문에 에러 정보를 포함합니다.
     *
     * @param communityId 토글할 게시글의 ID (경로 변수).
     * @param userPrincipal  현재 인증된 사용자 정보 (Spring Security가 주입).
     * @return 토글 후의 최종 북마크 상태(bookmarked: true/false) 또는 에러 정보를 담은 응답.
     */
    @Operation(summary = "게시글 북마크 토글", description = "특정 커뮤니티 게시글의 북마크 상태를 변경(토글).")
    @PostMapping("{communityId}/bookmark")
    public ResponseEntity<ApiResponse<?>> toggleBookmark( // 반환 타입 ApiResponse<?>로 변경
                                                          @PathVariable String communityId,
                                                          @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        if (userPrincipal == null) {
            return ResponseEntity
                    .ok(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        try {
            boolean isBookmarked = bookmarkService.toggleBookmark(userPrincipal, communityId);
            return ResponseEntity.ok(ApiResponse.success(new BookmarkStatusResponseDTO(isBookmarked)));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND, e.getMessage()));
        } catch (Exception e) {
            return ResponseEntity.ok(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "북마크 처리 중 오류가 발생했습니다."));
        }
    }

}