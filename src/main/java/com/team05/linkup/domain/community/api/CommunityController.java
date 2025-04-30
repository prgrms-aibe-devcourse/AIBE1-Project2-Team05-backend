package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.domain.community.dto.CommunityDto;
import com.team05.linkup.domain.community.application.CommunityService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/v1/community")
@RequiredArgsConstructor
@Tag(name = "커뮤니티 API", description = "커뮤니티 관련 API")
public class CommunityController {

    private final CommunityService communityService;

    @PostMapping("/new")
    @Operation(summary = "게시글 작성", description = "새로운 게시글을 작성합니다.")
    public ApiResponse<CommunityDto.Response> createCommunity(
            @AuthenticationPrincipal String userId,
            @RequestBody CommunityDto.Request request) {
        return ApiResponse.created(communityService.createCommunity(userId, request));
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