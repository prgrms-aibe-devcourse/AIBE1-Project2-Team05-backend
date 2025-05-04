package com.team05.linkup.domain.user.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QArea is a Querydsl query type for Area
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QArea extends EntityPathBase<Area> {

    private static final long serialVersionUID = 393663140L;

    public static final QArea area = new QArea("area");

    public final NumberPath<Integer> areacode = createNumber("areacode", Integer.class);

    public final StringPath areaName = createString("areaName");

    public final ListPath<Sigungu, QSigungu> sigungus = this.<Sigungu, QSigungu>createList("sigungus", Sigungu.class, QSigungu.class, PathInits.DIRECT2);

    public QArea(String variable) {
        super(Area.class, forVariable(variable));
    }

    public QArea(Path<? extends Area> path) {
        super(path.getType(), path.getMetadata());
    }

    public QArea(PathMetadata metadata) {
        super(Area.class, metadata);
    }

}

