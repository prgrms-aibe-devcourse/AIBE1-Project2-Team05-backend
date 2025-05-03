package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.community.infra.CommunityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MentorProfileService {
    private final CommunityRepository communityRepository;

    public List<CommunityTalentSummaryDTO> getCommunityTalents(String nickname, int limit) {
        // Object[]로 반환된 raw 데이터 받아오기 (native query 사용)
        List<Object[]> results = communityRepository.findByCategoty(nickname, limit);

        // 필요한 DTO로 변환 (null-safe)
        return results.stream()
                .map(row -> {

                    // 🛡️ null-safe 및 명시적 캐스팅 - 혹시 모를 null 상황 대비
                    String title = (String) row[0]; // 타입 캐스팅 - (String) 명시적으로 분리
                    String tagId = (String) row[1];
                    String content = (String) row[2];

                    return new CommunityTalentSummaryDTO(
                            title,
                            tagId,
                            content
                    );
                })
                .collect(Collectors.toList());
    }
}
