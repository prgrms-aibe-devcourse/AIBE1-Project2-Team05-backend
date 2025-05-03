package com.team05.linkup.domain.community.infrastructure;

public interface CustomAiCommentRepository {
    String findCommentByText(String text);
}
