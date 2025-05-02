package com.team05.linkup.domain.mentoring.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;
import com.querydsl.core.types.dsl.PathInits;


/**
 * QMentoringSessions is a Querydsl query type for MentoringSessions
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QMentoringSessions extends EntityPathBase<MentoringSessions> {

    private static final long serialVersionUID = 1798578929L;

    private static final PathInits INITS = PathInits.DIRECT2;

    public static final QMentoringSessions mentoringSessions = new QMentoringSessions("mentoringSessions");

    public final com.team05.linkup.domain.baseEntity.QBaseEntity _super = new com.team05.linkup.domain.baseEntity.QBaseEntity(this);

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> createdAt = _super.createdAt;

    public final StringPath id = createString("id");

    public final EnumPath<com.team05.linkup.domain.enums.Interest> interest = createEnum("interest", com.team05.linkup.domain.enums.Interest.class);

    public final com.team05.linkup.domain.user.domain.QUser mentee;

    public final com.team05.linkup.domain.user.domain.QUser mentor;

    public final EnumPath<com.team05.linkup.domain.enums.MentoringStatus> status = createEnum("status", com.team05.linkup.domain.enums.MentoringStatus.class);

    //inherited
    public final DateTimePath<java.time.ZonedDateTime> updatedAt = _super.updatedAt;

    public QMentoringSessions(String variable) {
        this(MentoringSessions.class, forVariable(variable), INITS);
    }

    public QMentoringSessions(Path<? extends MentoringSessions> path) {
        this(path.getType(), path.getMetadata(), PathInits.getFor(path.getMetadata(), INITS));
    }

    public QMentoringSessions(PathMetadata metadata) {
        this(metadata, PathInits.getFor(metadata, INITS));
    }

    public QMentoringSessions(PathMetadata metadata, PathInits inits) {
        this(MentoringSessions.class, metadata, inits);
    }

    public QMentoringSessions(Class<? extends MentoringSessions> type, PathMetadata metadata, PathInits inits) {
        super(type, metadata, inits);
        this.mentee = inits.isInitialized("mentee") ? new com.team05.linkup.domain.user.domain.QUser(forProperty("mentee"), inits.get("mentee")) : null;
        this.mentor = inits.isInitialized("mentor") ? new com.team05.linkup.domain.user.domain.QUser(forProperty("mentor"), inits.get("mentor")) : null;
    }

}

