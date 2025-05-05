package com.team05.linkup.domain.mentoring.application;

import com.team05.linkup.domain.mentoring.dto.OngoingMatchingDTO;
import java.util.List;

public interface OngoingMatchingService {

    /**
     * 멘토가 진행 중인 매칭 세션들을 조회한다.
     *
     * @param mentorId 멘토의 사용자 ID (UUID)
     * @return OngoingMatchingDTO 리스트
     */
    List<OngoingMatchingDTO> getOngoingMatchingsForMentor(String mentorId, int limit);
}
