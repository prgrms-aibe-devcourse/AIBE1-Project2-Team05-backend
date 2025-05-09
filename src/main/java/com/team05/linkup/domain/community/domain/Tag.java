package com.team05.linkup.domain.community.domain;

import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

/**
 * 태그 정보를 나타내는 엔티티 클래스입니다.
 * 각 태그는 고유한 이름을 가집니다.
 * Community 엔티티와 다대다 관계를 맺습니다.
 */
@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor(access = AccessLevel.PROTECTED)
@Builder
@Table(name = "tags", uniqueConstraints = {
        @UniqueConstraint(name = "uk_tag_name", columnNames = {"name"})
})
public class Tag {

    /**
     * 태그의 고유 식별자 (PK)
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /**
     * 태그의 이름
     * - null이거나 비어있을 수 없음
     * - 최대 15자 (조정 가능)
     */
    @Column(name = "name", length = 15, nullable = false)
    private String name;

    /**
     * 이 태그를 사용하는 커뮤니티 게시글 목록
     * - mappedBy: Community 엔티티의 'tags' 필드에 의해 관계가 관리됨을 명시
     * - 선택 사항: Tag 엔티티에서 Community 목록을 직접 조회할 필요가 없다면 생략 가능
     */
    @ManyToMany(mappedBy = "tags") // Community 엔티티의 tags 필드에 의해 매핑됨
    @Builder.Default
    private Set<Community> communities = new HashSet<>();

}