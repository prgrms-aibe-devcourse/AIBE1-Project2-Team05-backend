package com.team05.linkup.domain.mentoring.dto;

import com.team05.linkup.domain.enums.MentoringStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class MentoringStatusUpdateDTO {
    private String mentoringId;
    private MentoringStatus mentoringStatus; // IN_PROGRESS, COMPLETED
}
