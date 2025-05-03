package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.application.CommunityService;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunityDto;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * community 관련 HTTP 요청을 처리하기 위한 Rest Controller.
 * community 게시물을 목록에 대한 엔드 포인트를 제공 (Paginated, 필터링, 정렬)
 * 그리고 인기있는 게시물을 검색
 */
@RestController
@RequestMapping("/v1/community")
@RequiredArgsConstructor
@Tag(name = "커뮤니티 API", description = "커뮤니티 관련 API")
public class CommunityController {
    private final CommunityService communityService;
    // private final CommentService commentService; // 댓글 관련 기능 필요 시 주입

    /**
     * 카테고리별로 필터링된(선택) 커뮤니티 게시물의 페이지별 목록을 검색합니다.
     * pagable 매개 변수를 통해 정렬 지원
     *
     * @param category 옵션 범주를 필터링 할 수 있습니다.
     * @param pageable 페이지 번호, 크기 및 정렬 순서를 포함하는 pagable 객체.
     * Defaults : size = 5, sort = createat, direction = desc.
     * @return ResponseEntity CommunitySummaryResponse DTO의 페이지가 포함된 ApiResponse를 포함합니다.
     * 예제 URL : GET /v1/community/list?category=INFO&sort=viewCount,desc
     */
    @GetMapping("/list")
    @Operation(summary = "게시글 목록 조회", description = "카테고리별로 필터링된 커뮤니티 게시물의 페이지별 목록을 검색합니다.")
    public ResponseEntity<ApiResponse<Page<CommunitySummaryResponse>>> getCommunityList(
            @RequestParam(required = false) CommunityCategory category, // Enum으로 직접 받기
            @PageableDefault(size = 5, sort = "createdAt", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<CommunitySummaryResponse> communityPage = communityService.findCommunities(category, pageable);
        return ResponseEntity.ok(ApiResponse.success(communityPage));
    }

    /**
     * 최근 활동을 기준으로 인기 커뮤니티 게시물 목록을 검색
     * 인기도는 일반적으로 특정 기간의 조회수, 좋아요 수, 작성일을 기준으로 결정
     *
     * @param limit 반환할 인기 게시물의 최대 개수(기본값: 3개).
     * @param day 인기도를 평가할 지난 일 수(기본값: 7개).
     * @return CommunitySummaryResponse DTO 목록을 포함하는 ApiResponse를 포함하는 ResponseEntity.
     * URL 예시: GET /v1/community/popular?limit=5&day=14
     */
    @GetMapping("/popular")
    @Operation(summary = "인기 게시글 조회", description = "최근 활동을 기준으로 인기 커뮤니티 게시물 목록을 검색합니다.")
    public ResponseEntity<ApiResponse<List<CommunitySummaryResponse>>> getPopularCommunities(
            @RequestParam(defaultValue = "3") int limit,
            @RequestParam(defaultValue = "7") int day) {
        List<CommunitySummaryResponse> popularCommunities = communityService.findPopularCommunities(limit, day);
        return ResponseEntity.ok(ApiResponse.success(popularCommunities));
    }

    /**
     * 키워드를 사용하여 커뮤니티 게시글을 검색합니다.
     * 제목, 내용, 태그에서 키워드가 포함된 게시글 목록을 페이징하여 반환합니다.
     *
     * @param keyword 검색할 키워드 (필수).
     * @param pageable 페이징 및 정렬 정보 (선택 사항, 기본값 적용됨).
     * @return ResponseEntity containing an ApiResponse with a Page of CommunitySummaryResponse DTOs.
     * Example URL: GET /v1/community/more-detail?keyword=spring
     */
    @GetMapping("/search")
    @Operation(summary = "게시글 검색", description = "키워드로 게시글을 검색합니다.")
    public ResponseEntity<ApiResponse<Page<CommunitySummaryResponse>>> searchCommunityList(
            @RequestParam String keyword, // 검색어는 필수로 받음
            // PageableDefault는 /list 와 동일하게 유지하거나 검색 결과에 맞게 조정
            @PageableDefault(size = 10, sort = "createdAt", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<CommunitySummaryResponse> searchResultPage = communityService.searchCommunities(keyword, pageable);
        return ResponseEntity.ok(ApiResponse.success(searchResultPage));
    }

    @PostMapping("/new")
    @Operation(summary = "게시글 작성", description = "새로운 게시글을 작성합니다.")
    public ApiResponse<CommunityDto.Response> createCommunity(
            @AuthenticationPrincipal UserPrincipal userPrincipal,
            @RequestBody CommunityDto.Request request) {
        return ApiResponse.created(communityService.createCommunity(userPrincipal, request));
    }

    @GetMapping("/detail/{postId}")
    @Operation(summary = "게시글 상세 조회", description = "ID로 게시글을 상세 조회합니다.")
    public ApiResponse<CommunityDto.DetailResponse> getCommunityDetail(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId) {
        return ApiResponse.success(communityService.getCommunityDetail(userId, communityId));
    }

    @PostMapping("/more-detail")
    @Operation(summary = "게시글 상세 조회(검색)", description = "검색 조건으로 게시글을 상세 조회합니다.")
    public ApiResponse<CommunityDto.DetailResponse> searchCommunityDetail(
            @RequestBody CommunityDto.SearchDetailRequest request) {
        return ApiResponse.success(communityService.searchCommunityDetail(request));
    }

    @PatchMapping("/detail/{postId}")
    @Operation(summary = "게시글 수정", description = "기존 게시글을 수정합니다.")
    public ApiResponse<CommunityDto.Response> updateCommunity(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId,
            @RequestBody CommunityDto.Request request) {
        return ApiResponse.success(communityService.updateCommunity(userId, communityId, request));
    }

    @DeleteMapping("/{postId}")
    @Operation(summary = "게시글 삭제", description = "게시글을 삭제합니다.")
    public ApiResponse<?> deleteCommunity(
            @AuthenticationPrincipal String userId,
            @PathVariable("postId") String communityId) {
        communityService.deleteCommunity(userId, communityId);
        return ApiResponse.success();
    }
}