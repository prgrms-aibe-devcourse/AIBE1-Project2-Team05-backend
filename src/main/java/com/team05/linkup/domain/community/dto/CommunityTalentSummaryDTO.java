package com.team05.linkup.domain.community.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CommunityTalentSummaryDTO {
    private String title;
    private String communityTagId;
    private String content;
}
