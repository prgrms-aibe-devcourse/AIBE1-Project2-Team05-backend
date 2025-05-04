package com.team05.linkup.domain.community.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QImage is a Querydsl query type for Image
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QImage extends EntityPathBase<Image> {

    private static final long serialVersionUID = -899287514L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QImage image = new QImage("image");

    public final com.team05.linkup.domain.baseEntity.QBaseEntity _super = new com.team05.linkup.domain.baseEntity.QBaseEntity(this);

    public final QCommunity community;

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> createdAt = _super.createdAt;

    public final StringPath id = createString("id");

    public final StringPath imageUrl = createString("imageUrl");

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> updatedAt = _super.updatedAt;

    public final com.team05.linkup.domain.user.domain.QUser user;

    public QImage(String variable) {
        this(Image.class, forVariable(variable), INITS);
    }

    public QImage(Path<? extends Image> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QImage(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QImage(PathMetadata metadata, PathInits inits) {
        this(Image.class, metadata, inits);
    }

    public QImage(Class<? extends Image> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.community = inits.isInitialized("community") ? new QCommunity(forProperty("community"), inits.get("community")) : null;
        this.user = inits.isInitialized("user") ? new com.team05.linkup.domain.user.domain.QUser(forProperty("user"), inits.get("user")) : null;
    }

}

