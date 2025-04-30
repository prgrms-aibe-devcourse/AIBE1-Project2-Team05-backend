

CREATE TABLE user(
         id VARCHAR(36) PRIMARY KEY ,
         provider VARCHAR(10) NOT NULL ,
         provider_id VARCHAR(100) NOT NULL,
         user_name_attribute VARCHAR(50) NOT NULL ,
         nickname VARCHAR(100) NOT NULL ,
         name VARCHAR(100) NOT NULL ,
         role ENUM('ROLE_TEMP', 'ROLE_MENTO', 'ROLE_MENTEE') DEFAULT 'ROLE_TEMP',
         profile_image_url VARCHAR(255) NOT NULL ,
         account_disable BOOLEAN DEFAULT FALSE,
         area_id tinyint,
         introduction VARCHAR(255),
         interest ENUM('프로그래밍/웹개발', '프로그래밍/앱개발', '디자인/UX/UI', '디자인/그래픽',
    '교육/수학', '교육/영어', '음악/피아노', '운동/요가'),
         activity_time ENUM('평일오전', '평일오후', '평일저녁', '주말오전', '주말오후',
            '주말저녁', '모두') DEFAULT '모두',
         activity_type ENUM('온라인', '오프라인', '모두') DEFAULT '모두',
         contact_link varchar(255),
         match_status BOOLEAN DEFAULT FALSE,
         profile_tag varchar(255) ,
         created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
         updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
         UNIQUE KEY uk_provider_provider_id (provider, provider_id),
         UNIQUE KEY uk_nickname(nickname)
);

CREATE TABLE area (
    id tinyint PRIMARY KEY ,
    area_name VARCHAR(30) NOT NULL
);

CREATE TABLE refresh_token (
       id VARCHAR(36) PRIMARY KEY ,
       user_id VARCHAR(36) NOT NULL ,
       created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
       expired_at DATETIME  NOT NULL,
       used BOOLEAN NOT NULL DEFAULT FALSE,

       INDEX idx_user_id (user_id),
       INDEX idx_expired_at (expired_at),
       CONSTRAINT fk_token_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);


CREATE TABLE community (
       id VARCHAR(36) PRIMARY KEY,
       user_id VARCHAR(36) NOT NULL,
       title VARCHAR(100) NOT NULL,
       category ENUM('전제', '질문/답변', '정보공유', '후기', '자유게시판', '재능나눔') NOT NULL,
       community_tag_id VARCHAR(36),
       content LONGTEXT NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
       updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

       INDEX idx_user_id (user_id),
       CONSTRAINT fk_community_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE RESTRICT
);

CREATE TABLE community_tag (
    id VARCHAR(36) PRIMARY KEY ,
    community_id VARCHAR(36),
    tag_name VARCHAR(10) NOT NULL ,
    CONSTRAINT fk_community_id FOREIGN KEY (community_id) REFERENCES community(id) ON DELETE CASCADE
);

CREATE TABLE images (
    id VARCHAR(36) PRIMARY KEY,
    user_id VARCHAR(36),
    community_id VARCHAR(36),
    image_url VARCHAR(255) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX idx_user_id (user_id),
    CONSTRAINT fk_community_images_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
    CONSTRAINT fk_community_images_community_id FOREIGN KEY (community_id) REFERENCES community(id) ON DELETE RESTRICT
);

CREATE TABLE likes (
    id VARCHAR(36) PRIMARY KEY ,
    user_id VARCHAR(36) NOT NULL ,
    community_id VARCHAR(36) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    INDEX idx_comment_community_id (community_id),
    INDEX idx_comment_user_id (user_id),

    CONSTRAINT fk_like_community_id FOREIGN KEY (community_id) REFERENCES community(id) ON DELETE CASCADE,
    CONSTRAINT fk_like_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
) ;

CREATE TABLE bookmark (
    id VARCHAR(36) PRIMARY KEY ,
    user_id VARCHAR(36) NOT NULL ,
    community_id VARCHAR(36) NOT NULL ,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_bookmark_community_id FOREIGN KEY (community_id) REFERENCES community(id) ON DELETE CASCADE,
    CONSTRAINT fk_bookmark_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);


CREATE TABLE comments (
      id VARCHAR(36) PRIMARY KEY ,
      user_id VARCHAR(36) NOT NULL ,
      community_id VARCHAR(36) NOT NULL ,
      comment_content VARCHAR(300) NOT NULL,
      order_number BIGINT,
      is_parent BOOLEAN NOT NULL DEFAULT FALSE,
      total_like_count INT DEFAULT 0,
      name VARCHAR(100),
      parent_comment_id VARCHAR(36),
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

      INDEX idx_comment_community_id (community_id),
      INDEX idx_comment_user_id (user_id),
      INDEX idx_comment_parent_comment_id (parent_comment_id),

      CONSTRAINT fk_comment_community_id FOREIGN KEY (community_id) REFERENCES community(id) ON DELETE CASCADE,
      CONSTRAINT fk_comment_user_id FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE,
      CONSTRAINT fk_comment_parent_comment_id FOREIGN KEY (parent_comment_id) REFERENCES comments(id) ON DELETE CASCADE
);


CREATE TABLE mentoring_sessions (
    id varchar(36) PRIMARY KEY ,
    mentor_user_id varchar(36) NOT NULL ,
    mentee_user_id varchar(36) NOT NULL ,
    interest ENUM('프로그래밍/웹개발', '프로그래밍/앱개발', '디자인/UX/UI', '디자인/그래픽',
'교육/수학', '교육/영어', '음악/피아노', '운동/요가'),
    status ENUM('완료', '진행중') NOT NULL DEFAULT '진행중',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_mentoring_session_mento_user_id FOREIGN KEY (mento_user_id) REFERENCES user(id) ON DELETE CASCADE ,
    CONSTRAINT fk_mentoring_session_mentee_user_id FOREIGN KEY (mentee_user_id) REFERENCES user(id) ON DELETE CASCADE
);

CREATE TABLE review(
   id varchar(36) PRIMARY KEY ,
   mentoring_session_id VARCHAR(36) NOT NULL,
   star DECIMAL(3,2) NOT NULL ,
   title varchar(100) NOT NULL ,
   content LONGTEXT NOT NULL ,
   interest ENUM('프로그래밍/웹개발', '프로그래밍/앱개발', '디자인/UX/UI', '디자인/그래픽',
'교육/수학', '교육/영어', '음악/피아노', '운동/요가'),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

   CONSTRAINT fk_review_mentoring_session_id FOREIGN KEY (mentoring_session_id) REFERENCES mentoring_sessions(id) ON DELETE CASCADE
);

CREATE VIEW mento_statistics AS
SELECT
    m.mento_user_id,
    COUNT(*) AS total_sessions,  -- 총 멘토링 횟수
    SUM(CASE WHEN m.status = '진행중' THEN 1 ELSE 0 END) AS ongoing_sessions,  -- 진행 중인 멘토링 횟수
    AVG(r.star) AS average_rating  -- 평균 만족도
FROM mentoring_sessions m
         LEFT JOIN review r ON m.id = r.mentoring_session_id
GROUP BY m.mento_user_id;