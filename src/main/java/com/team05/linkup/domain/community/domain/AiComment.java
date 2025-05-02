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

    @Column(length = 300)
    private String content;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "community_id")
    private Community community;

}
