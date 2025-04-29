package com.team05.linkup.domain.baseEntity;

import jakarta.persistence.Column;
import jakarta.persistence.EntityListeners;
import jakarta.persistence.MappedSuperclass;
import lombok.Getter;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.ZonedDateTime;

@Getter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public abstract class BaseEntity {

    @CreatedDate // Entity가 생성되어 저장될 때 시간이 자동 저장됩니다.
    @Column(updatable = false, nullable = false) // 생성 시간은 업데이트되면 안 됨
    private ZonedDateTime createdAt;

    @LastModifiedDate // 조회한 Entity의 값을 변경할 때 시간이 자동 저장됩니다.
    @Column(nullable = false)
    private ZonedDateTime updatedAt;

}