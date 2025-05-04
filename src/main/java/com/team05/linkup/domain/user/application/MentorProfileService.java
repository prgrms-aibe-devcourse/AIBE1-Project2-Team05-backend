package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.dto.CommunityTalentSummaryDTO;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.mentoring.domain.MentorStatisticsView;
import com.team05.linkup.domain.mentoring.infrastructure.MentorStatisticsRepository;
import com.team05.linkup.domain.mentoring.infrastructure.MentoringRepository;
import com.team05.linkup.domain.user.dto.InterestCountDTO;
import com.team05.linkup.domain.user.dto.MentorStatsDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class MentorProfileService {
    private final CommunityRepository communityRepository;
    private final MentoringRepository mentoringRepository; // 🔧 추가
    private final MentorStatisticsRepository mentorStatisticsRepository;

    public List<CommunityTalentSummaryDTO> getCommunityTalents(String nickname, int limit) {
        // Object[]로 반환된 raw 데이터 받아오기 (native query 사용)
        List<Object[]> results = communityRepository.findByCategory(nickname, limit);

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

    /**
     * 마이페이지 - 내가 등록한 재능 전체 목록 조회 (페이징)
     *
     * @param nickname 닉네임
     * @param page 페이지 번호 (0부터 시작)
     * @param size 페이지 당 항목 수
     * @return 커뮤니티 재능 요약 DTO 목록
     */
    public Page<CommunityTalentSummaryDTO> getCommunityTalentsPaged(String nickname, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Object[]> resultPage = communityRepository.findTalentsByNicknameWithPaging(nickname, pageable);

        // Object[] → DTO 변환
        return resultPage.map(row -> {
            String title = (String) row[0];
            String tagId = (String) row[1];
            String content = (String) row[2];
            return new CommunityTalentSummaryDTO(title, tagId, content);
        });
    }


    // (리팩토링된) 멘토링 통계 조회 메서드 (DB View 기반)
    public MentorStatsDTO getMentoringStats(UUID mentorId) {
        String mentorUserId = mentorId.toString();

        // 1. 뷰에서 총 멘토링 수, 진행 중 수, 평균 별점 가져오기
        MentorStatisticsView statsView = mentorStatisticsRepository.findByMentorUserId(mentorUserId);
        if (statsView == null) {
            throw new IllegalArgumentException("멘토링 통계 정보를 찾을 수 없습니다.");
        }

        // 2. 관심 분야별 멘토링 횟수 (기존 쿼리 그대로 유지)
        List<Object[]> rawResults = mentoringRepository.countMentoringByInterest(mentorUserId);
        List<InterestCountDTO> interestStats = rawResults.stream()
                .map(row -> InterestCountDTO.builder()
                        .interest(((Interest) row[0]).name())
                        .count((Long) row[1])
                        .build())
                .collect(Collectors.toList());

        return MentorStatsDTO.builder()
                .totalMentoringCount(statsView.getTotalSessions())
                .ongoingMentoringCount(statsView.getOngoingSessions())
                .averageRating(statsView.getAverageRating())
                .mentoringCategories(interestStats)
                .build();
    }
}
