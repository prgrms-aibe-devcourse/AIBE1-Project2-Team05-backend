package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MentorProfileService {
    private final CommunityRepository communityRepository;

    public List<CommunityTalentSummaryDTO> getCommunityTalents(String nickname, int limit) {
        // 💡 Object[]로 반환된 raw 데이터 받아오기
        List<Object[]> results = communityRepository.findByCategoty(nickname, limit);

        // 💡 필요한 DTO로 변환
        return results.stream()
                .map(row -> new CommunityTalentSummaryDTO(
                        (String) row[0],                   // title
                        (String) row[1],     // community_tag_id
                        (String) row[2]                    // content (요약된)
                ))
                .collect(Collectors.toList());
    }
}
