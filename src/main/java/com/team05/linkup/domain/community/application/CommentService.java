package com.team05.linkup.domain.community.application;

import com.team05.linkup.common.dto.UserPrincipal;
import com.team05.linkup.domain.community.domain.Comment;
import com.team05.linkup.domain.community.domain.Community;
import com.team05.linkup.domain.community.dto.CommentDto;
import com.team05.linkup.domain.community.infrastructure.CommentRepository;
import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.domain.SliceImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class CommentService {

    private final CommentRepository commentRepository;
    private final CommunityRepository communityRepository;
    private final UserRepository userRepository;

    /**
     * 게시글의 댓글 목록을 페이징하여 조회합니다.
     * 부모 댓글과 그 자식 댓글(답글)을 함께 조회합니다.
     *
     * @param communityId 게시글 ID
     * @param pageable 페이징 정보
     * @return 댓글 및 답글 목록
     */
    public Slice<CommentDto.Response> getCommentsSlice(String communityId, Pageable pageable) {
        // 부모 댓글만 페이징하여 조회
        Slice<Comment> parentComments = commentRepository.findParentCommentsByCommunityIdWithPaging(communityId, pageable);

        // 각 부모 댓글에 대한 자식 댓글(답글) 조회 및 DTO 변환
        List<CommentDto.Response> commentDtos = parentComments.getContent().stream()
                .map(parent -> {
                    List<Comment> children = commentRepository.findChildCommentsByParentId(parent.getId());

                    // 사용자 정보 가져오기 (프로필 이미지 URL)
                    User user = userRepository.findById(parent.getUserId())
                            .orElse(null);

                    CommentDto.Response dto = CommentDto.Response.from(parent, children);

                    // 프로필 이미지 URL 설정
                    if (user != null) {
                        dto = CommentDto.Response.builder()
                                .id(dto.getId())
                                .userId(dto.getUserId())
                                .nickname(dto.getNickname())
                                .profileImageUrl(user.getProfileImageUrl())
                                .commentContent(dto.getCommentContent())
                                .isParent(dto.isParent())
                                .totalLikeCount(dto.getTotalLikeCount())
                                .createdAt(dto.getCreatedAt())
                                .updatedAt(dto.getUpdatedAt())
                                .childComments(dto.getChildComments())
                                .build();
                    }

                    return dto;
                })
                .collect(Collectors.toList());

        return new SliceImpl<>(commentDtos, pageable, parentComments.hasNext());
    }

    /**
     * 특정 부모 댓글의 자식 댓글(답글) 목록을 페이징하여 조회합니다.
     *
     * @param parentId 부모 댓글 ID
     * @param pageable 페이징 정보
     * @return 자식 댓글(답글) 목록
     */
    public Slice<CommentDto.Response> getChildCommentsSlice(String parentId, Pageable pageable) {
        Slice<Comment> childComments = commentRepository.findChildCommentsByParentIdWithPaging(parentId, pageable);

        List<CommentDto.Response> childDtos = childComments.getContent().stream()
                .map(child -> {
                    // 사용자 정보 가져오기 (프로필 이미지 URL)
                    User user = userRepository.findById(child.getUserId())
                            .orElse(null);

                    CommentDto.Response dto = CommentDto.Response.from(child, List.of());

                    // 프로필 이미지 URL 설정
                    if (user != null) {
                        dto = CommentDto.Response.builder()
                                .id(dto.getId())
                                .userId(dto.getUserId())
                                .nickname(dto.getNickname())
                                .profileImageUrl(user.getProfileImageUrl())
                                .commentContent(dto.getCommentContent())
                                .isParent(dto.isParent())
                                .totalLikeCount(dto.getTotalLikeCount())
                                .createdAt(dto.getCreatedAt())
                                .updatedAt(dto.getUpdatedAt())
                                .childComments(dto.getChildComments())
                                .build();
                    }

                    return dto;
                })
                .collect(Collectors.toList());

        return new SliceImpl<>(childDtos, pageable, childComments.hasNext());
    }

    @Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
    public CommentDto.Response createComment(UserPrincipal principal, String communityId, CommentDto.Request request) {
        log.debug("댓글 생성 시작: communityId={}, parentCommentId={}, commentContent={}",
                communityId, request.getParentCommentId(), request.getCommentContent());

        try {
            String provider = principal.provider();
            String providerId = principal.providerId();

            // 사용자 조회
            User user = userRepository.findByProviderAndProviderId(provider, providerId)
                    .orElseThrow(() -> {
                        log.warn("사용자를 찾을 수 없음: provider={}, providerId={}", provider, providerId);
                        return new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId);
                    });

            log.info("사용자 정보 조회 성공: userId={}, nickname={}", user.getId(), user.getNickname());

            // 게시글 존재 여부 확인
            Community community = communityRepository.findById(communityId)
                    .orElseThrow(() -> {
                        log.warn("게시글을 찾을 수 없음: communityId={}", communityId);
                        return new EntityNotFoundException("게시글을 찾을 수 없습니다: " + communityId);
                    });

            log.info("게시글 정보 조회 성공: communityId={}", community.getId());

            // 부모 댓글 여부 및 존재 확인
            Comment parentComment = null;
            boolean isParent = (request.getParentCommentId() == null);

            if (!isParent) {
                parentComment = commentRepository.findById(request.getParentCommentId())
                        .orElseThrow(() -> {
                            log.warn("부모 댓글을 찾을 수 없음: parentCommentId={}", request.getParentCommentId());
                            return new EntityNotFoundException("부모 댓글을 찾을 수 없습니다: " + request.getParentCommentId());
                        });

                log.info("부모 댓글 정보 조회 성공: parentCommentId={}", parentComment.getId());
            }

            String commentId = UUID.randomUUID().toString();

            // DB 스키마에 맞게 Comment 객체 생성
            Comment comment = Comment.builder()
                    .id(commentId)
                    .userId(user.getId())
                    .communityId(communityId)
                    .commentContent(request.getCommentContent())
                    .name(user.getNickname())
                    .totalLikeCount(0)
                    .isParent(isParent)
                    .parentCommentId(request.getParentCommentId())
                    .orderNumber(isParent ? getNextOrderNumber(communityId) : null)
                    .build();

            Comment savedComment = commentRepository.save(comment);
            log.info("댓글 저장 성공: commentId={}, isParent={}", savedComment.getId(), isParent);

            // 자식 댓글 목록 (부모 댓글인 경우에만)
            List<Comment> childComments = isParent ?
                    commentRepository.findChildCommentsByParentId(commentId) : List.of();

            // 응답 생성
            CommentDto.Response response = CommentDto.Response.from(savedComment, childComments);

            // 프로필 이미지 URL 설정
            response = CommentDto.Response.builder()
                    .id(response.getId())
                    .userId(response.getUserId())
                    .nickname(response.getNickname())
                    .profileImageUrl(user.getProfileImageUrl())
                    .commentContent(response.getCommentContent())
                    .isParent(response.isParent())
                    .totalLikeCount(response.getTotalLikeCount())
                    .createdAt(response.getCreatedAt())
                    .updatedAt(response.getUpdatedAt())
                    .childComments(response.getChildComments())
                    .build();

            return response;
        } catch (Exception e) {
            log.error("댓글 생성 중 예외 발생", e);
            throw e;
        }
    }

    // 다음 순서 번호 계산
    private Long getNextOrderNumber(String communityId) {
        List<Comment> existingComments = commentRepository.findByCommunityIdAndParentCommentIdIsNullOrderByOrderNumber(communityId);
        if (existingComments.isEmpty()) {
            return 1L;
        } else {
            Comment lastComment = existingComments.get(existingComments.size() - 1);
            return lastComment.getOrderNumber() != null ? lastComment.getOrderNumber() + 1 : 1L;
        }
    }

    /**
     * 댓글을 수정합니다.
     *
     * @param principal 인증 정보
     * @param communityId 게시글 ID
     * @param commentId 댓글 ID
     * @param request 수정 요청 데이터
     * @return 수정된 댓글 정보
     */
    @Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
    public CommentDto.Response updateComment(UserPrincipal principal, String communityId, String commentId, CommentDto.Request request) {
        log.debug("댓글 수정 시작: communityId={}, commentId={}", communityId, commentId);

        try {
            String provider = principal.provider();
            String providerId = principal.providerId();

            // 사용자 조회
            User user = userRepository.findByProviderAndProviderId(provider, providerId)
                    .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId));

            // 댓글 조회
            Comment comment = commentRepository.findById(commentId)
                    .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다: " + commentId));

            // 권한 확인
            if (!comment.getUserId().equals(user.getId())) {
                throw new IllegalArgumentException("댓글 수정 권한이 없습니다.");
            }

            // 댓글 내용 업데이트
            comment.updateContent(request.getCommentContent());
            Comment updatedComment = commentRepository.save(comment);

            // 자식 댓글 목록 (부모 댓글인 경우에만)
            List<Comment> childComments = comment.isParent() ?
                    commentRepository.findChildCommentsByParentId(commentId) : List.of();

            // 응답 생성
            CommentDto.Response response = CommentDto.Response.from(updatedComment, childComments);

            // 프로필 이미지 URL 설정
            response = CommentDto.Response.builder()
                    .id(response.getId())
                    .userId(response.getUserId())
                    .nickname(response.getNickname())
                    .profileImageUrl(user.getProfileImageUrl())
                    .commentContent(response.getCommentContent())
                    .isParent(response.isParent())
                    .totalLikeCount(response.getTotalLikeCount())
                    .createdAt(response.getCreatedAt())
                    .updatedAt(response.getUpdatedAt())
                    .childComments(response.getChildComments())
                    .build();

            return response;
        } catch (Exception e) {
            log.error("댓글 수정 중 예외 발생", e);
            throw e;
        }
    }

    /**
     * 댓글을 삭제합니다.
     *
     * @param principal 인증 정보
     * @param communityId 게시글 ID
     * @param commentId 댓글 ID
     */
    @Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
    public void deleteComment(UserPrincipal principal, String communityId, String commentId) {
        log.debug("댓글 삭제 시작: communityId={}, commentId={}", communityId, commentId);

        try {
            String provider = principal.provider();
            String providerId = principal.providerId();

            // 사용자 조회
            User user = userRepository.findByProviderAndProviderId(provider, providerId)
                    .orElseThrow(() -> new EntityNotFoundException("User not found with PID: " + provider + "-" + providerId));

            // 댓글 조회
            Comment comment = commentRepository.findById(commentId)
                    .orElseThrow(() -> new EntityNotFoundException("댓글을 찾을 수 없습니다: " + commentId));

            // 권한 확인
            if (!comment.getUserId().equals(user.getId())) {
                throw new IllegalArgumentException("댓글 삭제 권한이 없습니다.");
            }

            // 자식 댓글이 있는 경우 (부모 댓글 삭제 시) 모두 함께 삭제
            if (comment.isParent()) {
                List<Comment> childComments = commentRepository.findChildCommentsByParentId(commentId);
                if (!childComments.isEmpty()) {
                    commentRepository.deleteAll(childComments);
                    log.info("자식 댓글 삭제 완료: 부모 댓글={}, 자식 댓글 수={}", commentId, childComments.size());
                }
            }

            // 댓글 삭제
            commentRepository.delete(comment);
            log.info("댓글 삭제 완료: commentId={}", commentId);
        } catch (Exception e) {
            log.error("댓글 삭제 중 예외 발생", e);
            throw e;
        }
    }
}