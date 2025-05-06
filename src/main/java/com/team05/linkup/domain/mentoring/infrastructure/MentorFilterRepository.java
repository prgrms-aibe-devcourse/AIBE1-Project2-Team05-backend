package com.team05.linkup.domain.mentoring.infrastructure;

import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.enums.ActivityType;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.dto.MentorFilterDTO;
import com.team05.linkup.domain.user.domain.QUser;
import com.team05.linkup.domain.user.domain.User;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class MentorFilterRepository {

    private final JPAQueryFactory queryFactory;

    public List<User> findMentorsWithFilters(MentorFilterDTO filterDTO) {
        QUser user = QUser.user;

        // 동적 쿼리를 위한 BooleanBuilder 생성
        BooleanBuilder builder = new BooleanBuilder();

        // 멘토 역할만 필터링 (필수 조건)
        builder.and(user.role.eq(Role.ROLE_MENTOR));

        // 옵션 필터: 관심 분야
        if (filterDTO.getInterest() != null) {
            builder.and(user.interest.eq(filterDTO.getInterest()));
        }

        // 옵션 필터: 지역
        if (filterDTO.getAreaCode() != null) {
            builder.and(user.area.areacode.eq(filterDTO.getAreaCode()));

            // 시군구 코드도 함께 있는 경우
            if (filterDTO.getSigunguCode() != null) {
                builder.and(user.sigunguCode.eq(filterDTO.getSigunguCode()));
            }
        }

        // 옵션 필터: 활동 시간대
        if (filterDTO.getActivityTime() != null) {
            builder.and(user.activityTime.eq(filterDTO.getActivityTime()));
        }

        // 옵션 필터: 활동 유형
        if (filterDTO.getActivityType() != null) {
            // 활동 유형이 'ALL'인 경우 어떤 활동 유형도 매칭됨
            if (filterDTO.getActivityType() != ActivityType.ALL) {
                builder.and(user.activityType.eq(filterDTO.getActivityType())
                        .or(user.activityType.eq(ActivityType.ALL)));
            }
        }

        // 매칭 가능한 멘토만 필터링 (필수 조건)
        builder.and(user.matchStatus.eq(true));

        return queryFactory
                .selectFrom(user)
                .where(builder)
                .fetch();
    }
}