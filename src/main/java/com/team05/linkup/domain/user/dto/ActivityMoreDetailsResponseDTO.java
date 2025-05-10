package com.team05.linkup.domain.user.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.util.List;

/**
 * [마이페이지] 더보기 API 응답용 공통 DTO
 * - me: 현재 로그인 사용자인지 여부
 * - type: 필터 종류 ("bookmarked", "liked", "all") → 관심 목록에서만 사용
 * - content: 실제 데이터 목록 (댓글, 게시글 등)
 */
@Getter
@Builder
@AllArgsConstructor
public class ActivityMoreDetailsResponseDTO<T> {

    @Schema(description = "본인 여부 (true: 내 활동, false: 타인 활동)")
    private boolean me;

    @Schema(description = "관심 목록 타입 (bookmarked | liked | all)")
    private String type;

    @Schema(description = "더보기 리스트 응답 데이터")
    private List<T> content;
}
