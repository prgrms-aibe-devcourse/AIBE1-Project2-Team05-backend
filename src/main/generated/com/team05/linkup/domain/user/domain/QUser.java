package com.team05.linkup.domain.user.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QUser is a Querydsl query type for User
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QUser extends EntityPathBase<User> {

    private static final long serialVersionUID = 394259938L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QUser user = new QUser("user");

    public final com.team05.linkup.domain.baseEntity.QBaseEntity _super = new com.team05.linkup.domain.baseEntity.QBaseEntity(this);

    public final BooleanPath accountDisable = createBoolean("accountDisable");

    public final EnumPath<com.team05.linkup.domain.enums.ActivityTime> activityTime = createEnum("activityTime", com.team05.linkup.domain.enums.ActivityTime.class);

    public final EnumPath<com.team05.linkup.domain.enums.ActivityType> activityType = createEnum("activityType", com.team05.linkup.domain.enums.ActivityType.class);

    public final QArea area;

    public final StringPath contactLink = createString("contactLink");

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> createdAt = _super.createdAt;

    public final StringPath id = createString("id");

    public final EnumPath<com.team05.linkup.domain.enums.Interest> interest = createEnum("interest", com.team05.linkup.domain.enums.Interest.class);

    public final StringPath introduction = createString("introduction");

    public final BooleanPath matchStatus = createBoolean("matchStatus");

    public final StringPath name = createString("name");

    public final StringPath nickname = createString("nickname");

    public final StringPath profileImageUrl = createString("profileImageUrl");

    public final StringPath profileTag = createString("profileTag");

    public final StringPath provider = createString("provider");

    public final StringPath providerId = createString("providerId");

    public final ListPath<RefreshToken, QRefreshToken> refreshToken = this.<RefreshToken, QRefreshToken>createList("refreshToken", RefreshToken.class, QRefreshToken.class, PathInits.DIRECT2);

    public final EnumPath<com.team05.linkup.domain.enums.Role> role = createEnum("role", com.team05.linkup.domain.enums.Role.class);

    public final NumberPath<Integer> sigunguCode = createNumber("sigunguCode", Integer.class);

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> updatedAt = _super.updatedAt;

    public final StringPath userNameAttribute = createString("userNameAttribute");

    public QUser(String variable) {
        this(User.class, forVariable(variable), INITS);
    }

    public QUser(Path<? extends User> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QUser(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QUser(PathMetadata metadata, PathInits inits) {
        this(User.class, metadata, inits);
    }

    public QUser(Class<? extends User> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.area = inits.isInitialized("area") ? new QArea(forProperty("area")) : null;
    }

}

