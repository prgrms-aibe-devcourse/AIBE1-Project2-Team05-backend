package com.team05.linkup.domain.user.infrastructure;

import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import com.team05.linkup.domain.enums.Interest;
import com.team05.linkup.domain.enums.Role;
import com.team05.linkup.domain.mentoring.dto.AiMatchingRequestDTO;
import com.team05.linkup.domain.user.domain.QArea;
import com.team05.linkup.domain.user.domain.QSigungu;
import com.team05.linkup.domain.user.domain.QUser;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CustomerUserRepositoryImpl implements CustomerUserRepository {
    private final JPAQueryFactory queryFactory;

    QUser user = QUser.user;
    QArea area = QArea.area;
    QSigungu sigungu = QSigungu.sigungu;

    @Override
    public List<AiMatchingRequestDTO.OtherProfile> findOtherProfileTagsByProviderId(String provider, String providerId, Interest interest) {
        return queryFactory.select(Projections.constructor(AiMatchingRequestDTO.OtherProfile.class,
                        user.area.areacode,
                        user.area.areaName,
                        user.sigunguCode,
                        sigungu.sigunguname,
                        user.nickname,
                        user.profileTag,
                        user.profileImageUrl,
                        user.providerId,
                        user.contactLink
                ))
                .from(user)
                .leftJoin(user.area, area)
                .leftJoin(sigungu).on(sigungu.id.sigungucode.eq(user.sigunguCode)
                        .and(sigungu.id.areacode.eq(user.area.areacode)))
                .where(
                        user.providerId.ne(providerId),
                        user.interest.eq(interest),
                        user.role.eq(Role.ROLE_MENTOR)
                )
                .fetch();

    }
}
