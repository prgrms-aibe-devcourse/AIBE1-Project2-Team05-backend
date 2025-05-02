package com.team05.linkup.domain.community.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QAiComment is a Querydsl query type for AiComment
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QAiComment extends EntityPathBase<AiComment> {

    private static final long serialVersionUID = 909765730L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QAiComment aiComment = new QAiComment("aiComment");

    public final QCommunity community;

    public final StringPath content = createString("content");

    public final StringPath id = createString("id");

    public QAiComment(String variable) {
        this(AiComment.class, forVariable(variable), INITS);
    }

    public QAiComment(Path<? extends AiComment> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QAiComment(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QAiComment(PathMetadata metadata, PathInits inits) {
        this(AiComment.class, metadata, inits);
    }

    public QAiComment(Class<? extends AiComment> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.community = inits.isInitialized("community") ? new QCommunity(forProperty("community"), inits.get("community")) : null;
    }

}

