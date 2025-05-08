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
     *
     * @param communityId 토글할 게시글의 ID (경로 변수).
     * @param userPrincipal  현재 인증된 사용자 정보 (Spring Security가 주입).
     * @return 토글 후의 최종 북마크 상태(bookmarked: true/false)를 담은 응답.
     */
    @Operation(summary = "게시글 북마크 토글", description = "특정 커뮤니티 게시글의 북마크 상태를 변경(토글).")
    @PostMapping("{communityId}/bookmark")
    public ResponseEntity<ApiResponse<BookmarkStatusResponseDTO>> toggleBookmark(
            @PathVariable String communityId,
            @AuthenticationPrincipal UserPrincipal userPrincipal
    ) {
        if (userPrincipal == null) {
            return ResponseEntity
                    .status(ResponseCode.UNAUTHORIZED.getStatus())
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }
        String provider = userPrincipal.provider();
        String providerId = userPrincipal.providerId();

        // 서비스 호출하여 토글 실행 및 최종 상태 받기
        boolean isBookmarked = bookmarkService.toggleBookmark(provider, providerId, communityId);

        // 성공 응답 반환 (최종 상태 포함)
        return ResponseEntity.ok(ApiResponse.success(new BookmarkStatusResponseDTO(isBookmarked)));
    }

}