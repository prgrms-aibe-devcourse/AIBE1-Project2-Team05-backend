package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.user.domain.User;
import com.team05.linkup.domain.baseEntity.BaseEntity;
import jakarta.persistence.*;
import lombok.*;

import java.util.*;

/**
 * 커뮤니티 게시글 엔티티
 * 사용자가 작성한 게시글을 나타냅니다.
 */
@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "community")
public class Community extends BaseEntity {

    /**
     * 게시글의 고유 식별자 (PK) - UUID 사용
     */
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(length = 36, updatable = false, nullable = false)
    private String id;

    /**
     * 게시글 작성자 (User 엔티티와 다대일 관계)
     */
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private User user;

    /**
     * 게시글 제목 (최대 100자)
     */
    @Column(length = 100, nullable = false)
    private String title;

    /**
     * 게시글 카테고리 (Enum 타입)
     */
    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private CommunityCategory category;

    /**
     * 게시글 내용 (긴 텍스트)
     */
    @Lob
    @Column(length = 65535, nullable = false)
    private String content;

    /**
     * 조회수 (기본값 0)
     */
    @Column(name = "view_count", nullable = false, columnDefinition = "BIGINT default 0")
    private Long viewCount = 0L;

    /**
     * 좋아요 수 (기본값 0)
     */
    @Column(name = "like_count", columnDefinition = "BIGINT default 0")
    private Long likeCount = 0L;

    /**
     * AI 자동 생성 댓글 (Community와 일대일 관계)
     * Community가 삭제될 때 연관된 AiComment도 함께 삭제되도록 CascadeType.ALL 설정.
     * Community와의 연결이 끊어지면 AiComment가 고아가 되어 삭제되도록 orphanRemoval=true 설정.
     */
    @OneToOne(mappedBy = "community",
            cascade = CascadeType.REMOVE,
            orphanRemoval = true,      // 관계가 끊어지면 AiComment 삭제
            fetch = FetchType.LAZY)
    private AiComment aiComment;


    /**
     * 게시글에 첨부된 이미지 목록 (Community와 일대다 관계)
     */
    @OneToMany(mappedBy = "community",
            cascade = CascadeType.ALL,
            orphanRemoval = true)
    private List<Image> images = new ArrayList<>();

    /**
     * 게시글에 연결된 태그 목록 (Community와 Tag는 다대다 관계)
     */
    @ManyToMany(fetch = FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinTable(
            name = "community_tag_join", // DB에 생성될 조인 테이블 이름
            joinColumns = @JoinColumn(name = "community_id"), // 현재 엔티티(Community)를 참조하는 FK
            inverseJoinColumns = @JoinColumn(name = "tag_id")  // 반대편 엔티티(Tag)를 참조하는 FK
    )
    private Set<Tag> tags = new HashSet<>();


    // 빌더 패턴을 위한 생성자 (필요한 모든 필드 포함)
    @Builder
    public Community(String id, User user, String title, CommunityCategory category,
                     String content, Long viewCount, Long likeCount, AiComment aiComment,
                     List<Image> images, Set<Tag> tags) {
        this.id = id;
        this.user = user;
        this.title = title;
        this.category = category;
        this.content = content;
        this.viewCount = (viewCount == null) ? 0L : viewCount;
        this.likeCount = (likeCount == null) ? 0L : likeCount;
        this.aiComment = aiComment;
        this.images = Objects.requireNonNullElseGet(images, ArrayList::new);
        this.tags = Objects.requireNonNullElseGet(tags, HashSet::new);
    }

    // 도메인 로직
    /**
     * 게시글 내용 업데이트
     *
     * @param title 게시글 제목
     * @param content 게시글 내용
     * @param category 게시글 카테고리
     * @param newTags 새로운 태그 Set (서비스 레이어에서 문자열 목록을 Tag 객체 Set으로 변환하여 전달)
     */
    public void update(String title, String content, CommunityCategory category, Set<Tag> newTags) {
        this.title = title;
        this.content = content;
        this.category = category;

        // 태그 업데이트: 기존 태그를 모두 지우고 새로운 태그로 교체하는 방식
        this.tags.clear();
        if (newTags != null) {
            this.tags.addAll(newTags);
        }
    }

    /**
     * 조회수 증가
     */
    public void incrementViewCount() {
        this.viewCount += 1;
    }

    /**
     * 좋아요 수 증가
     */
    public void incrementLikeCount() {
        this.likeCount += 1;
    }

    /**
     * 좋아요 수 감소
     */
    public void decrementLikeCount() {
        if (this.likeCount > 0) {
            this.likeCount -= 1;
        }
    }

    // AiComment를 설정하는 setter (양방향 관계 편의 메소드 - 필요시)
    // cascade 설정을 사용하면 이 setter가 직접적으로 삭제 로직에 관여하지 않을 수 있습니다.
    public void setAiComment(AiComment aiComment) {
        this.aiComment = aiComment;
        if (aiComment != null && aiComment.getCommunity() != this) {
            aiComment.setCommunityInternal(this); // AiComment 쪽에 Community를 설정하는 package-private 메소드 가정
        }
    }
}