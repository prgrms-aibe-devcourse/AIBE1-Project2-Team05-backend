package com.team05.linkup.domain.user.dto;

import com.team05.linkup.domain.enums.Role;
import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "사용자 권한을 담는 DTO")
public record RoleRequestDTO(
        @Schema(description = "권한", example = "ROLE_MENTOR")
        Role role) {
}
