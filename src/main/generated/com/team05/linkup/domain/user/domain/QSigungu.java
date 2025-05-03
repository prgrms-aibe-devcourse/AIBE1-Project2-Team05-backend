package com.team05.linkup.domain.user.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QSigungu is a Querydsl query type for Sigungu
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QSigungu extends EntityPathBase<Sigungu> {

    private static final long serialVersionUID = 897972257L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QSigungu sigungu = new QSigungu("sigungu");

    public final QArea area;

    public final QSigunguId id;

    public final StringPath sigunguname = createString("sigunguname");

    public QSigungu(String variable) {
        this(Sigungu.class, forVariable(variable), INITS);
    }

    public QSigungu(Path<? extends Sigungu> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QSigungu(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QSigungu(PathMetadata metadata, PathInits inits) {
        this(Sigungu.class, metadata, inits);
    }

    public QSigungu(Class<? extends Sigungu> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.area = inits.isInitialized("area") ? new QArea(forProperty("area")) : null;
        this.id = inits.isInitialized("id") ? new QSigunguId(forProperty("id")) : null;
    }

}

