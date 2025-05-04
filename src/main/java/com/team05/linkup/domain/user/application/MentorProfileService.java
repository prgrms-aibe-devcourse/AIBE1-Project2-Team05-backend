package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.enums.MentoringStatus;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.dto.InterestCountDTO;
import com.team05.linkup.domain.user.dto.MentorStatsDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MentorProfileService {
    private final CommunityRepository communityRepository;
    private final MentoringRepository mentoringRepository; // 🔧 추가

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

    // 🔧 추가: 멘토링 통계 DTO 반환 메서드
    public MentorStatsDTO getMentoringStats(UUID mentorId) {
        Long totalCount = mentoringRepository.countByMentor_Id(mentorId.toString());
        Long ongoingCount = mentoringRepository.countByMentor_IdAndStatusIn(
                mentorId.toString(),
                List.of(MentoringStatus.IN_PROGRESS)
        );

        // ⬇️ interest별 통계 (interest + count)
        List<Object[]> rawResults = mentoringRepository.countMentoringByInterest(mentorId.toString());
        List<InterestCountDTO> interestStats = rawResults.stream()
                .map(row -> InterestCountDTO.builder()
                        .interest(((Interest) row[0]).name())
                        .count((Long) row[1])
                        .build())
                .collect(Collectors.toList());

        return MentorStatsDTO.builder()
                .totalMentoringCount(totalCount)
                .ongoingMentoringCount(ongoingCount)
                .averageRating(0.0) // 리뷰 도입 전까지는 0으로 유지
                .mentoringCategories(interestStats)
                .build();
    }


}
