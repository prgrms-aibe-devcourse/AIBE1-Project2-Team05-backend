package com.team05.linkup.domain.community.domain;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Table(name = "ai_comment")
public class AiComment {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private String id;

    @Column(columnDefinition = "LONGTEXT", nullable = false)
    private String content;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "community_id", unique = true) // 1:1 제약
    private Community community;


    // Community 엔티티에서 양방향 관계를 설정하기 위한 package-private 또는 public 메소드
    // Community의 setAiComment에서 호출될 수 있음
    void setCommunityInternal(Community community) {
        this.community = community;
    }

}
