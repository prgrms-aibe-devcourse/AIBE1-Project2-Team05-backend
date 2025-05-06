package com.team05.linkup.domain.user.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class NicknameCheckResponseDTO {
    private boolean isDuplicated;
}
