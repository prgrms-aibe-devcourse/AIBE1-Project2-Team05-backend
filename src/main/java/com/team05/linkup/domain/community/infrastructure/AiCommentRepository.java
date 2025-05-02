package com.team05.linkup.domain.community.infrastructure;

import com.team05.linkup.domain.community.domain.AiComment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AiCommentRepository extends JpaRepository<AiComment, String> {
}
