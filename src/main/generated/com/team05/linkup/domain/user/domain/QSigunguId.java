package com.team05.linkup.domain.user.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QSigunguId is a Querydsl query type for SigunguId
 */
@Generated("com.querydsl.codegen.DefaultEmbeddableSerializer")
public class QSigunguId extends BeanPath<SigunguId> {

    private static final long serialVersionUID = -337085156L;

    public static final QSigunguId sigunguId = new QSigunguId("sigunguId");

    public final NumberPath<Integer> areacode = createNumber("areacode", Integer.class);

    public final NumberPath<Integer> sigungucode = createNumber("sigungucode", Integer.class);

    public QSigunguId(String variable) {
        super(SigunguId.class, forVariable(variable));
    }

    public QSigunguId(Path<? extends SigunguId> path) {
        super(path.getType(), path.getMetadata());
    }

    public QSigunguId(PathMetadata metadata) {
        super(SigunguId.class, metadata);
    }

}

