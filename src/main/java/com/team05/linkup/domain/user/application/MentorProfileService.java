package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.domain.Tag;
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

/**
 * 멘토 마이페이지 관련 서비스
 *
 * <p>재능 게시글 조회, 멘토링 통계 조회 등의 기능 제공</p>
 */
@Service
@RequiredArgsConstructor
public class MentorProfileService {
    private final CommunityRepository communityRepository;
    private final MentoringRepository mentoringRepository; // 🔧 추가
    private final MentorStatisticsRepository mentorStatisticsRepository;

    /**
     * 멘토 마이페이지 - 내가 등록한 재능 목록 (미리보기 2개)
     *
     * <p>특정 멘토 닉네임 기준으로 최신 등록된 TALENT 카테고리 게시글을 2개 조회한다.</p>
     * <p>각 게시글은 태그, 작성일, 제목, 내용(최대 55자 요약) 정보를 포함한다.</p>
     *
     * @param nickname 멘토의 닉네임
     * @param limit 조회할 게시글 수 (일반적으로 2개)
     * @return 재능 게시글 요약 정보 리스트
     */
    public List<CommunityTalentSummaryDTO> getCommunityTalents(String nickname, int limit) {
        // Pageable 생성
        Pageable pageable = PageRequest.of(0, limit);

        List<Community> communities = communityRepository.findLatestTalentsByNickname(nickname, pageable);

        // 결과 DTO로 변환
        return communities.stream()
                .map(community -> {
                    String fullContent = community.getContent();
                    String preview = (fullContent.length() > 55)
                            ? fullContent.substring(0, 55) + "..."
                            : fullContent;

                    return new CommunityTalentSummaryDTO(
                            community.getId(), // postId 추가
                            community.getCreatedAt(),
                            community.getTitle(),
                            community.getTags().stream().map(Tag::getName).toList(),
                            preview // 자른 내용 적용
                    );
                })
                .collect(Collectors.toList());
    }

    /**
     * 멘토 마이페이지 - 내가 등록한 재능 목록 (더보기 페이지용)
     *
     * <p>특정 멘토 닉네임 기준으로 TALENT 카테고리 게시글을 page, size 기반으로 페이징 조회한다.</p>
     * <p>각 게시글은 태그, 작성일, 제목, 내용(최대 55자 요약) 정보를 포함한다.</p>
     *
     * @param nickname 멘토의 닉네임
     * @param page 페이지 번호 (0부터 시작)
     * @param size 페이지당 항목 수
     * @return 페이징된 재능 게시글 요약 정보
     */
    public Page<CommunityTalentSummaryDTO> getCommunityTalentsPaged(String nickname, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Community> communityPage = communityRepository.findTalentsByNicknameWithPaging(nickname, pageable);

        return communityPage.map(community -> {
            String fullContent = community.getContent();
            String preview = (fullContent.length() > 55)
                    ? fullContent.substring(0, 55) + "..."
                    : fullContent;

            return new CommunityTalentSummaryDTO(
                    community.getId(), // postId 추가
                    community.getCreatedAt(),
                    community.getTitle(),
                    community.getTags().stream().map(Tag::getName).toList(),
                    preview
            );
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
