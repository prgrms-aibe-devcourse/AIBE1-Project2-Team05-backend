package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.user.dto.MyBookmarkResponseDTO;
import com.team05.linkup.domain.user.dto.MyLikeResponseDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.time.ZoneOffset;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class InterestMoreDetailsService {

    private final CommunityRepository communityRepository;

    /**
     * 관심 목록(북마크/좋아요) 게시글 페이징 조회
     *
     * @param nickname 닉네임
     * @param filter 필터 (bookmarked | liked | all)
     * @param page 페이지 번호 (0부터 시작)
     * @param size 페이지 크기
     * @return 필터 조건에 맞는 게시글 목록
     */
    public Page<?> getInterestPosts(String nickname, String filter, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        String userId = communityRepository.findUserIdByNickname(nickname);
//        System.out.println("🔍 닉네임으로 조회한 userId = " + userId);

        switch (filter) {
            case "bookmarked" -> {
                Page<Object[]> resultPage = communityRepository.findBookmarksByUserId(userId, pageable);
//                resultPage.forEach(row -> System.out.println("🎯 북마크 ROW: " + Arrays.toString(row)));
                return resultPage.map(row -> {
                    Timestamp updatedAt = (Timestamp) row[0];
                    String title = (String) row[1];
                    String content = (String) row[2];
                    return new MyBookmarkResponseDTO(
                            updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null,
                            title,
                            content
                    );
                });
            }
            case "liked" -> {
                Page<Object[]> resultPage = communityRepository.findLikesByUserId(userId, pageable);
//                resultPage.forEach(row -> System.out.println("🎯 좋아요 ROW: " + Arrays.toString(row)));
                return resultPage.map(row -> {
                    Timestamp updatedAt = (Timestamp) row[0];
                    String title = (String) row[1];
                    String content = (String) row[2];
                    return new MyLikeResponseDTO(
                            updatedAt != null ? updatedAt.toInstant().atZone(ZoneOffset.UTC) : null,
                            title,
                            content
                    );
                });
            }
            case "all" -> {
                // 북마크와 좋아요를 합쳐서 처리 (동일 구조로 묶음)
                Page<Object[]> bookmarkPage = communityRepository.findBookmarksByUserId(userId, pageable);
                Page<Object[]> likePage = communityRepository.findLikesByUserId(userId, pageable);

//                bookmarkPage.forEach(row -> System.out.println("북마크(all) ROW: " + Arrays.toString(row)));
//                likePage.forEach(row -> System.out.println("좋아요(all) ROW: " + Arrays.toString(row)));

                List<MyBookmarkResponseDTO> bookmarks = bookmarkPage.stream()
                        .map(row -> new MyBookmarkResponseDTO(
                                ((Timestamp) row[0]).toInstant().atZone(ZoneOffset.UTC),
                                (String) row[1],
                                (String) row[2]
                        )).collect(Collectors.toList());

                List<MyLikeResponseDTO> likes = likePage.stream()
                        .map(row -> new MyLikeResponseDTO(
                                ((Timestamp) row[0]).toInstant().atZone(ZoneOffset.UTC),
                                (String) row[1],
                                (String) row[2]
                        )).collect(Collectors.toList());

                List<Object> merged = bookmarks.stream().map(b -> (Object) b).collect(Collectors.toList());
                merged.addAll(likes);

                return new PageImpl<>(merged, pageable, bookmarks.size() + likes.size());
            }
            default -> throw new IllegalArgumentException("유효하지 않은 filter 값입니다: " + filter);
        }
    }
}
