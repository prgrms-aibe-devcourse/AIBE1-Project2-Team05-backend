package com.team05.linkup.domain.user.dto;

import com.querydsl.core.types.dsl.*;

import com.querydsl.core.types.ConstructorExpression;
import javax.annotation.processing.Generated;

/**
 * com.team05.linkup.domain.user.dto.QCommunityQnAPostDTO is a Querydsl Projection type for CommunityQnAPostDTO
 */
@Generated("com.querydsl.codegen.DefaultProjectionSerializer")
public class QCommunityQnAPostDTO extends ConstructorExpression<CommunityQnAPostDTO> {

    private static final long serialVersionUID = 1245288546L;

    public QCommunityQnAPostDTO(com.querydsl.core.types.Expression<String> postId, com.querydsl.core.types.Expression<String> nickname, com.querydsl.core.types.Expression<String> profileImageUrl, com.querydsl.core.types.Expression<String> createdAt, com.querydsl.core.types.Expression<String> title, com.querydsl.core.types.Expression<String> content, com.querydsl.core.types.Expression<String> tagName, com.querydsl.core.types.Expression<Integer> commentCount) {
        super(CommunityQnAPostDTO.class, new Class<?>[]{String.class, String.class, String.class, String.class, String.class, String.class, String.class, int.class}, postId, nickname, profileImageUrl, createdAt, title, content, tagName, commentCount);
    }

}

