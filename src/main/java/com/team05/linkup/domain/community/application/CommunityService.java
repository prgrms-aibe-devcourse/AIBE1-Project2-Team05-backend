
package com.team05.linkup.domain.community.application;

import com.team05.linkup.domain.community.domain.CommunityCategory;
import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.community.dto.CommunitySummaryResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional; // 중요: 읽기 전용이므로 readOnly=true

import java.time.ZonedDateTime;
import java.util.List;


/**
 * 커뮤니티 게시글 관련 비즈니스 로직을 처리하는 애플리케이션 서비스 클래스입니다.
 * 주로 조회(read) 작업을 수행하며, 클래스 레벨에 @Transactional(readOnly = true)이 적용되어 있습니다.
 * {@link CommunityRepository}를 사용하여 데이터베이스와 상호작용합니다.
 */
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommunityService {

    private final CommunityRepository communityRepository;

    /**
     * 지정된 조건(카테고리 필터링, 페이징, 정렬)에 맞는 게시글 요약 목록을 조회합니다.
     * 이 메소드는 읽기 전용 트랜잭션으로 실행됩니다.
     *
     * @param category 조회할 게시글 카테고리 (선택 사항, null일 경우 전체 카테고리 조회).
     * @param pageable 페이징 및 정렬 정보 (페이지 번호, 페이지 크기, 정렬 기준). Spring Data Web Support에 의해 Controller에서 생성됩니다.
     * @return 조건에 맞는 게시글 요약 정보({@link CommunitySummaryResponse})를 담고 있는 {@link Page} 객체.
     * 결과가 없을 경우 빈 Page 객체가 반환됩니다.
     * @see CommunityRepository#findCommunitySummaries(CommunityCategory, Pageable)
     */
    public Page<CommunitySummaryResponse> findCommunities(CommunityCategory category, Pageable pageable) {

        return communityRepository.findCommunitySummaries(
                category,
                pageable
        );
    }

    /**
     * 최근 일정 기간 동안 작성된 게시글 중 인기 게시글 목록을 조회
     * 인기도는 Repository 쿼리 내의 정렬 기준(조회수, 좋아요 수, 최신순)에 따라 결정
     * 이 메소드는 읽기 전용 트랜잭션으로 실행
     *
     * @param limit 조회할 최대 인기 게시글 수.
     * @param day   인기 게시글을 선정할 최근 기간(일 단위). 예를 들어 7이면 최근 7일간의 게시글을 대상으로 함
     * @return 인기 게시글 요약 정보({@link CommunitySummaryResponse})의 {@link List}. 결과는 'limit' 수만큼 제한되며, 없을 경우 빈 리스트가 반환
     * @see CommunityRepository#findPopularSince(ZonedDateTime, Pageable)
     */
    public List<CommunitySummaryResponse> findPopularCommunities(int limit, int day) {

        // 1. 조회 시작 시점 계산
        ZonedDateTime daysAgo = ZonedDateTime.now().minusDays(day);

        // 2. 결과 개수 제한 설정
        Pageable topLimit = PageRequest.of(0, limit);

        // 3. Repository 메소드 호출
        return communityRepository.findPopularSince(daysAgo, topLimit);
    }

    /**
     * 키워드를 사용하여 커뮤니티 게시글을 검색
     * Repository 계층에 검색 로직을 위임
     *
     * @param keyword 검색 키워드.
     * @param pageable 페이징 및 정렬 정보.
     * @return 검색된 게시글 요약 정보 Page 객체.
     */
    public Page<CommunitySummaryResponse> searchCommunities(String keyword, Pageable pageable) {
        if (keyword == null || keyword.isBlank()) {
            return Page.empty(pageable);
        }
        return communityRepository.searchSummariesByKeyword(keyword, pageable);
    }

}