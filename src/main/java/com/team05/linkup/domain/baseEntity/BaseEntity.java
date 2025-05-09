package com.team05.linkup.domain.baseEntity;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.Getter;

import java.time.ZonedDateTime;

/**
 * 모든 엔티티가 공통으로 상속받는 기본 엔티티 클래스입니다.
 * 생성일시(createdAt)와 수정일시(updatedAt) 필드를 포함하며,
 * JPA 생명주기 이벤트를 통해 자동으로 관리됩니다.
 */
@Getter
@MappedSuperclass
public abstract class BaseEntity {

    /**
     * 엔티티 생성 일시
     * - 한 번 생성되면 변경되지 않도록 updatable = false 설정
     * - null 값을 허용하지 않음
     */
    @Column(updatable = false, nullable = false) // 생성 시간은 업데이트되면 안 됨
    private ZonedDateTime createdAt;

    /**
     * 엔티티 최종 수정 일시
     * - null 값을 허용하지 않음
     */
    @Column(nullable = false)
    private ZonedDateTime updatedAt;

    /**
     * 엔티티가 영속화되기 직전에 호출됩니다.
     * createdAt과 updatedAt 필드를 현재 시간으로 초기화합니다.
     */
    @PrePersist
    public void prePersist() {
        this.createdAt = ZonedDateTime.now();
        this.updatedAt = ZonedDateTime.now();
    }

    /**
     * 엔티티가 데이터베이스에 업데이트되기 직전에 호출됩니다.
     * updatedAt 필드를 현재 시간으로 갱신합니다.
     */
    @PreUpdate
    public void preUpdate() {
        this.updatedAt = ZonedDateTime.now();
    }

}