package com.team05.linkup.domain.community.domain;

import com.team05.linkup.domain.baseEntity.BaseEntity;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "bookmark")
public class Bookmark extends BaseEntity {

    @Id
    @Column(length = 36)
    private String id;

    @Column(name = "user_id", nullable = false)
    private String userId;

    @Column(name = "community_id", nullable = false)
    private String communityId;

}
