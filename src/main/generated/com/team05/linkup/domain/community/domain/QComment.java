package com.team05.linkup.domain.community.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QComment is a Querydsl query type for Comment
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QComment extends EntityPathBase<Comment> {

    private static final long serialVersionUID = -1888406422L;

    public static final QComment comment = new QComment("comment");

    public final StringPath commentContent = createString("commentContent");

    public final StringPath communityId = createString("communityId");

    public final DateTimePath<java.time.ZonedDateTime> createdAt = createDateTime("createdAt", java.time.ZonedDateTime.class);

    public final StringPath id = createString("id");

    public final BooleanPath isParent = createBoolean("isParent");

    public final StringPath name = createString("name");

    public final NumberPath<Long> orderNumber = createNumber("orderNumber", Long.class);

    public final StringPath parentCommentId = createString("parentCommentId");

    public final NumberPath<Integer> totalLikeCount = createNumber("totalLikeCount", Integer.class);

    public final DateTimePath<java.time.ZonedDateTime> updatedAt = createDateTime("updatedAt", java.time.ZonedDateTime.class);

    public final StringPath userId = createString("userId");

    public QComment(String variable) {
        super(Comment.class, forVariable(variable));
    }

    public QComment(Path<? extends Comment> path) {
        super(path.getType(), path.getMetadata());
    }

    public QComment(PathMetadata metadata) {
        super(Comment.class, metadata);
    }

}

