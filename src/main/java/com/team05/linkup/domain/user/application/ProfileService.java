package com.team05.linkup.domain.user.application;

import com.team05.linkup.domain.community.infra.CommunityRepository;
import com.team05.linkup.domain.user.dto.MyBookmarkResponseDTO;
import com.team05.linkup.domain.user.dto.MyCommentResponseDTO;
import com.team05.linkup.domain.user.dto.MyLikeResponseDTO;
import com.team05.linkup.domain.user.dto.MyPostResponseDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ProfileService {
    private final CommunityRepository communityRepository;

    public List<MyPostResponseDTO> getMyPosts(String nickname, int limit) {
        List<Object[]> rawResults = communityRepository.findByCommunityPosts(nickname, limit);

        return rawResults.stream()
                .map(obj -> new MyPostResponseDTO(
                        (String) obj[0],                                      // id
                        ((Timestamp) obj[1]).toLocalDateTime(),              // updated_at
                        (String) obj[2],                                      // category
                        (String) obj[3],                                      // title
                        (String) obj[4],                                      // content
                        ((Number) obj[5]).intValue(),                         // view_count (Long → int)
                        ((Number) obj[6]).intValue(),                         // like_count (Long → int)
                        ((Number) obj[7]).intValue()                          // comment_count (Long → int)
                ))
                .collect(Collectors.toList());
    }

    public List<MyCommentResponseDTO> getMyComments(String nickname, int limit) {
        // ✅ userId 조회
        String userId = communityRepository.findUserIdByNickname(nickname); // ※ 아래에서 쿼리도 추가로 만들어줘야 함

        List<Object[]> rows = communityRepository.findByMyCommunityComments(userId, limit);

        return rows.stream()
                .map(row -> new MyCommentResponseDTO(
                        ((Timestamp) row[0]).toLocalDateTime(),  // updated_at
                        (String) row[1],                          // description
                        (String) row[2]                           // comment_content
                ))
                .collect(Collectors.toList());
    }

     public List<MyBookmarkResponseDTO> getMyBookmarks(String nickname, int limit) {
        String userId = communityRepository.findUserIdByNickname(nickname);
        List<Object[]> rawResults = communityRepository.findByMyBookmarks(userId, limit);
        return rawResults.stream()
                .map(obj -> new MyBookmarkResponseDTO(
                        ((Timestamp) obj[0]).toLocalDateTime(),
                        (String) obj[1],
                        (String) obj[2]
                ))
                .collect(Collectors.toList());
    }

    public List<MyLikeResponseDTO> getMyLikePosts(String nickname, int limit) {
        String userId = communityRepository.findUserIdByNickname(nickname);
        List<Object[]> rawResults = communityRepository.findByMyLikePosts(userId, limit);

        return rawResults.stream()
                .map(obj -> new MyLikeResponseDTO(
                        ((java.sql.Timestamp) obj[0]).toLocalDateTime(),
                        (String) obj[1],
                        (String) obj[2]
                ))
                .collect(Collectors.toList());
    }

}
