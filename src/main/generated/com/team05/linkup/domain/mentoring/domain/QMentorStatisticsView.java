package com.team05.linkup.domain.mentoring.domain;

import static com.querydsl.core.types.PathMetadataFactory.*;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.PathMetadata;
import javax.annotation.processing.Generated;
import com.querydsl.core.types.Path;


/**
 * QMentorStatisticsView is a Querydsl query type for MentorStatisticsView
 */
@Generated("com.querydsl.codegen.DefaultEntitySerializer")
public class QMentorStatisticsView extends EntityPathBase<MentorStatisticsView> {

    private static final long serialVersionUID = -1102458634L;

    public static final QMentorStatisticsView mentorStatisticsView = new QMentorStatisticsView("mentorStatisticsView");

    public final NumberPath<Double> averageRating = createNumber("averageRating", Double.class);

    public final StringPath mentorUserId = createString("mentorUserId");

    public final NumberPath<Long> ongoingSessions = createNumber("ongoingSessions", Long.class);

    public final NumberPath<Long> totalSessions = createNumber("totalSessions", Long.class);

    public QMentorStatisticsView(String variable) {
        super(MentorStatisticsView.class, forVariable(variable));
    }

    public QMentorStatisticsView(Path<? extends MentorStatisticsView> path) {
        super(path.getType(), path.getMetadata());
    }

    public QMentorStatisticsView(PathMetadata metadata) {
        super(MentorStatisticsView.class, metadata);
    }

}

