package com.team05.linkup.domain.community.api;

import com.team05.linkup.common.dto.ApiResponse;
import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.common.enums.ResponseCode;
import com.team05.linkup.domain.community.application.CommunityImageService;
import com.team05.linkup.domain.community.application.CommunityService;
import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.dto.CommunityDto;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponseDTO;
import com.team05.linkup.domain.community.dto.CommunityWeeklyPopularDTO;
import com.team05.linkup.domain.community.dto.ImageDto;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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
    private final CommunityImageService communityImageService;

    /* -------------------------------------------------- 게시글 목록 조회 -------------------------------------------------- */

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
    public ResponseEntity<ApiResponse<Page<CommunitySummaryResponseDTO>>> getCommunityList(
            @RequestParam(required = false) CommunityCategory category, // Enum으로 직접 받기
            @PageableDefault(size = 5, sort = "createdAt", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<CommunitySummaryResponseDTO> communityPage = communityService.findCommunities(category, pageable);
        return ResponseEntity.ok(ApiResponse.success(communityPage));
    }

    /**
     * 최근 활동을 기준으로 인기 커뮤니티 게시물 목록을 검색
     * 인기도는 일반적으로 특정 기간의 조회수, 좋아요 수, 작성일을 기준으로 결정
     *
     * @param limit 반환할 인기 게시물의 최대 개수(기본값: 2개).
     * @param day 인기도를 평가할 지난 일 수(기본값: 2일).
     * @return CommunitySummaryResponse DTO 목록을 포함하는 ApiResponse를 포함하는 ResponseEntity.
     * URL 예시: GET /v1/community/popular?limit=5&day=14
     */
    @GetMapping("/popular")
    @Operation(summary = "인기 게시글 조회", description = "최근 활동을 기준으로 인기 커뮤니티 게시물 목록을 검색합니다.")
    public ResponseEntity<ApiResponse<List<CommunitySummaryResponseDTO>>> getPopularCommunities(
            @RequestParam(defaultValue = "2") int limit,
            @RequestParam(defaultValue = "2") int day) {
        List<CommunitySummaryResponseDTO> popularCommunities = communityService.findPopularCommunities(limit, day);
        return ResponseEntity.ok(ApiResponse.success(popularCommunities));
    }

    /**
     * 최근 활동을 기준으로 인기 커뮤니티 게시물 목록을 검색
     * 인기도는 일반적으로 특정 기간의 조회수, 좋아요 수, 작성일을 기준으로 결정
     *
     * @param limit 반환할 인기 게시물의 최대 개수(기본값: 5개).
     * @param day 인기도를 평가할 지난 일 수(기본값: 7일).
     * @return CommunityWeeklyPopular DTO 목록을 포함하는 ApiResponse를 포함하는 ResponseEntity.
     * URL 예시: GET /v1/community/weekly-popular?limit=7&day=7
     */
    @GetMapping("/weekly-popular")
    @Operation(summary = "주간 인기 게시글 조회", description = "최근 활동을 기준으로 인기 커뮤니티 게시물(제목과 카테고리) 목록을 검색합니다.")
    public ResponseEntity<ApiResponse<List<CommunityWeeklyPopularDTO>>> getWeeklyPopularCommunities(
            @RequestParam(defaultValue = "5") int limit,
            @RequestParam(defaultValue = "7") int day) {
        List<CommunityWeeklyPopularDTO> popularCommunities = communityService.findWeeklyPopularCommunities(limit, day);
        return ResponseEntity.ok(ApiResponse.success(popularCommunities));
    }


    /**
     * 키워드를 사용하여 커뮤니티 게시글을 검색합니다.
     * 제목, 내용, 태그에서 키워드가 포함된 게시글 목록을 페이징하여 반환합니다.
     *
     * @param keyword 검색할 키워드 (필수).
     * @param pageable 페이징 및 정렬 정보 (선택 사항, 기본값 적용됨).
     * @return ResponseEntity containing an ApiResponse with a Page of CommunitySummaryResponse DTOs.
     * Example URL: GET /v1/community/search?keyword=spring
     */
    @GetMapping("/search")
    @Operation(summary = "게시글 검색", description = "키워드로 게시글을 검색합니다.")
    public ResponseEntity<ApiResponse<Page<CommunitySummaryResponseDTO>>> searchCommunityList(
            @RequestParam String keyword, // 검색어는 필수로 받음
            // PageableDefault는 /list 와 동일하게 유지하거나 검색 결과에 맞게 조정
            @PageableDefault(size = 10, sort = "createdAt", direction = Sort.Direction.DESC) Pageable pageable) {
        Page<CommunitySummaryResponseDTO> searchResultPage = communityService.searchCommunities(keyword, pageable);
        return ResponseEntity.ok(ApiResponse.success(searchResultPage));
    }

    /* -------------------------------------------------- 게시글 상세 조회 -------------------------------------------------- */

    /**
     * ID로 게시글을 상세 조회합니다.
     *
     * @param principal 인증된 사용자 정보
     * @param communityId 조회할 게시글 ID
     * @return 게시글 상세 정보가 포함된 ApiResponse
     */
    @GetMapping("/detail/{postId}")
    @Operation(summary = "게시글 상세 조회", description = "ID로 게시글을 상세 조회합니다.")
    public ResponseEntity<ApiResponse<CommunityDto.DetailResponse>> getCommunityDetail(
            @AuthenticationPrincipal UserPrincipal principal,
            @PathVariable("postId") String communityId) {

        // 인증되지 않은 사용자도 조회 가능하도록 처리 (있을 경우 회원 ID 사용, 없을 경우 null 전달)
        String userId = principal != null ? principal.providerId() : null;
        try {
            return ResponseEntity.ok(ApiResponse.success(communityService.getCommunityDetail(userId, communityId)));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        }
    }

    /* -------------------------------------------------- 게시글 CRUD -------------------------------------------------- */

    /**
     * 새로운 게시글을 작성합니다.
     *
     * @param principal 인증된 사용자 정보
     * @param request 게시글 작성 요청 데이터
     * @return 생성된 게시글 정보
     */
    @Operation(
            summary = "게시글 작성",
            requestBody = @io.swagger.v3.oas.annotations.parameters.RequestBody(
                    required = true,
                    content = @Content(
                            schema = @Schema(implementation = CommunityDto.Request.class),
                            examples = @ExampleObject(name = "요청 예시", value = """
                                  {
                                    "title": "스프링 질문 있습니다!",
                                    "category": "QUESTION",
                                    "communityTag": "SPRING",
                                    "content": "Bean과 Component 차이가 뭔가요?"
                                  }""")
                    )
            )
    )
    @PostMapping("/new")
    public ResponseEntity<ApiResponse<CommunityDto.Response>> createPost(
            @AuthenticationPrincipal UserPrincipal principal,
            @Valid @RequestBody CommunityDto.Request request) {

        // 인증 처리 표준화
        if (principal == null) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        return ResponseEntity
                .status(HttpStatus.CREATED)
                .body(ApiResponse.created(communityService.createCommunity(principal, request)));
    }

    /**
     * 기존 게시글을 수정합니다.
     *
     * @param principal 인증된 사용자 정보
     * @param postId 수정할 게시글 ID
     * @param request 게시글 수정 요청 데이터
     * @return 수정된 게시글 정보
     */
    @PatchMapping("/detail/{postId}")
    @Operation(summary = "게시글 수정", description = "기존 게시글을 수정합니다.")
    public ResponseEntity<ApiResponse<CommunityDto.Response>> updatePost(
            @AuthenticationPrincipal UserPrincipal principal,
            @PathVariable String postId,
            @Valid @RequestBody CommunityDto.Request request) {

        // 인증 처리 표준화
        if (principal == null) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        try {
            return ResponseEntity
                    .ok(ApiResponse.success(communityService.updateCommunity(principal, postId, request)));
        } catch (IllegalArgumentException e) {
            return ResponseEntity
                    .status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.NO_EDIT_PERMISSION));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        }
    }

    /**
     * 게시글을 삭제합니다.
     *
     * @param principal 인증된 사용자 정보
     * @param postId 삭제할 게시글 ID
     * @return 성공 응답
     */
    @DeleteMapping("/{postId}")
    @Operation(summary = "게시글 삭제", description = "게시글을 삭제합니다.")
    public ResponseEntity<ApiResponse<Void>> deletePost(
            @AuthenticationPrincipal UserPrincipal principal,
            @PathVariable String postId) {

        // 인증 처리 표준화
        if (principal == null) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        try {
            communityService.deleteCommunity(principal, postId);
            return ResponseEntity.ok(ApiResponse.success());
        } catch (IllegalArgumentException e) {
            return ResponseEntity
                    .status(HttpStatus.FORBIDDEN)
                    .body(ApiResponse.error(ResponseCode.NO_DELETE_PERMISSION));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        }
    }

    /* -------------------------------------------------- 이미지 업로드 -------------------------------------------------- */

    /**
     * 게시글 이미지를 업로드합니다.
     *
     * @param postId 이미지를 첨부할 게시글 ID
     * @param images 업로드할 이미지 파일 목록
     * @param principal 인증된 사용자 정보
     * @return 업로드된 이미지 경로 목록
     */
    @Operation(
            summary = "게시글 이미지 업로드",
            description = "Multipart 형식으로 이미지를 업로드하여 Supabase Storage 에 저장합니다.",
            requestBody = @io.swagger.v3.oas.annotations.parameters.RequestBody(
                    required = true,
                    content = @Content(mediaType = MediaType.MULTIPART_FORM_DATA_VALUE))
    )
    @PostMapping(
            value = "/{postId}/images",
            consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<ApiResponse<List<String>>> uploadImages(
            @PathVariable String postId,
            @Parameter(description = "업로드할 이미지 파일들", required = true)
            @RequestPart("images") List<MultipartFile> images,
            @AuthenticationPrincipal UserPrincipal principal) {

        // 인증 처리 표준화
        if (principal == null) {
            return ResponseEntity
                    .status(HttpStatus.UNAUTHORIZED)
                    .body(ApiResponse.error(ResponseCode.UNAUTHORIZED));
        }

        try {
            // 수정: id() → providerId() 로 변경
            List<String> objectPaths = communityImageService.uploadImages(principal.providerId(), images);
            // 수정: 매개변수 3개 → 2개로 변경
            communityService.attachImages(postId, objectPaths);

            return ResponseEntity
                    .status(HttpStatus.CREATED)
                    // 수정: ImageDto.Response.of() 메서드 제거하고 직접 리스트 반환
                    .body(ApiResponse.created(objectPaths));
        } catch (jakarta.persistence.EntityNotFoundException e) {
            return ResponseEntity
                    .status(HttpStatus.NOT_FOUND)
                    .body(ApiResponse.error(ResponseCode.ENTITY_NOT_FOUND));
        } catch (Exception e) {
            return ResponseEntity
                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "이미지 업로드 실패: " + e.getMessage()));
        }
    }

    /* -------------------------------------------------- 통합 검색(more - detail) -------------------------------------------- */

    /**
     * 게시글 상세 조회(검색) 엔드포인트.
     * ID가 제공된 경우 특정 게시글의 상세 정보를 조회하고,
     * 그 외의 경우 다양한 조건으로 게시글을 검색합니다.
     *
     * @param request 검색 조건 (ID 또는 다양한 검색 조건)
     * @param pageable 페이징 정보 (고급 검색 시에만 사용)
     * @return 검색 결과 (단일 게시글 또는 게시글 목록)
     */
    @PostMapping("/more-detail")
    @Operation(
            summary = "게시글 상세 조회 또는 고급 검색",
            description = "ID로 특정 게시글을 상세 조회하거나 다양한 조건(키워드, 닉네임, 카테고리, 역할, 태그)으로 게시글을 검색합니다.",
            requestBody = @io.swagger.v3.oas.annotations.parameters.RequestBody(
                    required = true,
                    content = @Content(
                            schema = @Schema(implementation = CommunityDto.SearchDetailRequest.class),
                            examples = {
                                    @ExampleObject(
                                            name = "ID로 조회",
                                            value = """
                        {
                          "id": "123e4567-e89b-12d3-a456-426614174000"
                        }
                        """
                                    ),
                                    @ExampleObject(
                                            name = "고급 검색",
                                            value = """
                        {
                          "keyword": "스프링",
                          "nickname": "멘토1",
                          "category": "QUESTION",
                          "userRole": "ROLE_MENTOR",
                          "tag": "SPRING"
                        }
                        """
                                    )
                            }
                    )
            )
    )
    public ResponseEntity<ApiResponse<?>> searchCommunityDetail(
            @Valid @RequestBody CommunityDto.SearchDetailRequest request,
            @PageableDefault(size = 10, sort = "createdAt", direction = Sort.Direction.DESC) Pageable pageable) {

        Object result = communityService.searchCommunityDetail(request, pageable);

        // 결과 타입에 따라 응답 생성
        if (result instanceof CommunityDto.DetailResponse) {
            return ResponseEntity.ok(ApiResponse.success(result));
        } else if (result instanceof Page) {
            return ResponseEntity.ok(ApiResponse.success(result));
        } else {
            return ResponseEntity
                    .status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(ApiResponse.error(ResponseCode.INTERNAL_SERVER_ERROR, "예상치 못한 응답 형식"));
        }
    }
}