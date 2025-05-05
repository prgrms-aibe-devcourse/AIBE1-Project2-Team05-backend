package com.team05.linkup.domain.review.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QReview is a Querydsl query type for Review
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QReview extends EntityPathBase<Review> {

    private static final long serialVersionUID = 1153348732L;

    public static final QReview review = new QReview("review");

    public final com.team05.linkup.domain.baseEntity.QBaseEntity _super = new com.team05.linkup.domain.baseEntity.QBaseEntity(this);

    public final StringPath content = createString("content");

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> createdAt = _super.createdAt;

    public final StringPath id = createString("id");

    public final EnumPath<com.team05.linkup.domain.enums.Interest> interest = createEnum("interest", com.team05.linkup.domain.enums.Interest.class);

    public final StringPath mentoringSessionId = createString("mentoringSessionId");

    public final NumberPath<java.math.BigDecimal> star = createNumber("star", java.math.BigDecimal.class);

    public final StringPath title = createString("title");

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> updatedAt = _super.updatedAt;

    public QReview(String variable) {
        super(Review.class, forVariable(variable));
    }

    public QReview(Path<? extends Review> path) {
        super(path.getType(), path.getMetadata());
    }

    public QReview(PathMetadata metadata) {
        super(Review.class, metadata);
    }

}

