
SELECT count(*) FROM user;

-- 더미 User 데이터 생성 SQL




INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0a8c3c9b-8eac-493a-8d17-be064d798351', 'kakao', '3042489408', 'user_3042489408', '이름2',
    '닉네임2', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_712.jpg', False, 36,
    2, '2번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/2', False, '체중 감량, 운동 루틴 계획, 근육 증대',
    '2025-03-13 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7e852eee-6cbe-4b26-ac03-93175272c1a8', 'google', '7722506141', 'sub', '이름3',
    '닉네임3', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_941.jpg', True, 39,
    1, '3번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/3', True, '영작 연습, 어휘 학습, 기초 회화',
    '2025-01-09 02:27:21', '2025-01-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '97c176ac-c8a4-45fb-b791-9c90260391ff', 'google', '1927674940', 'sub', '이름4',
    '닉네임4', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_685.jpg', True, 6,
    2, '4번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/4', True, 'UI 디자인, iOS 앱 개발, Android Studio',
    '2024-07-23 02:27:21', '2025-02-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5ee052b0-8171-417e-830e-09348cff9bd0', 'kakao', '8150361909', 'user_8150361909', '이름5',
    '닉네임5', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/86.jpg', False, 5,
    1, '5번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/5', False, 'React Native, Firebase, Swift, Kotlin',
    '2024-07-18 02:27:21', '2024-10-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '50db4be1-1fc7-4c8a-bca6-6705d4be7ede', 'kakao', '4609590607', 'user_4609590607', '이름6',
    '닉네임6', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_477.jpg', True, 34,
    4, '6번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/6', True, '트레이닝 피드백, 근육 증대, 운동 루틴 계획, 체중 감량',
    '2024-11-07 02:27:21', '2025-03-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fd030d38-97e4-43fe-a760-230955429a60', 'google', '2265118877', 'sub', '이름7',
    '닉네임7', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/6.jpg', True, 37,
    10, '7번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/7', True, '수학적 모델링, 확률, 미적분, 선형대수학',
    '2024-06-06 02:27:21', '2024-06-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a3e12efa-2dee-4856-9c7e-3031af014bc4', 'google', '6346795539', 'sub', '이름8',
    '닉네임8', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/86.jpg', False, 37,
    8, '8번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/8', False, 'UX 리서치, Figma, 와이어프레임, UI 설계',
    '2024-08-30 02:27:21', '2024-09-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '807546ce-cbb9-4312-ae14-08899509ea01', 'naver', '7139097531', 'user_7139097531', '이름9',
    '닉네임9', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/92.jpg', False, 35,
    22, '9번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/9', True, 'Kotlin, Firebase, React Native, Swift',
    '2024-08-12 02:27:21', '2025-02-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '75ba6b34-1f0f-4561-983d-5c461a3961e9', 'google', '8979369867', 'sub', '이름10',
    '닉네임10', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/74.jpg', False, 36,
    19, '10번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/10', True, 'JPA, Spring Boot, Spring Security, Spring',
    '2024-08-08 02:27:21', '2024-12-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '49df456c-ac8a-42c4-8b36-cdbfdf1ab966', 'naver', '9142397017', 'user_9142397017', '이름11',
    '닉네임11', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_421.jpg', False, 38,
    11, '11번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/11', True, '체중 감량, 운동 루틴 계획, 트레이닝 피드백',
    '2025-02-20 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '112c5489-f919-4d6f-9ea0-cb5a12ca8f17', 'naver', '1744902373', 'user_1744902373', '이름12',
    '닉네임12', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/18.jpg', False, 38,
    21, '12번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/12', False, '기타, 리듬 연습, 악보 읽기, 작곡 기초',
    '2024-12-13 02:27:21', '2024-12-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fd4794e7-5fb3-4c7f-aa5b-dc835bc78843', 'google', '5740580823', 'sub', '이름13',
    '닉네임13', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/28.jpg', False, 3,
    2, '13번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/13', False, '악보 읽기, 작곡 기초, 리듬 연습',
    '2024-07-08 02:27:21', '2025-03-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e96239c8-386a-409e-bcf6-e33300421e6d', 'kakao', '7844139628', 'user_7844139628', '이름14',
    '닉네임14', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/77.jpg', False, 4,
    5, '14번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/14', False, 'Firebase, Swift, Kotlin',
    '2024-09-30 02:27:21', '2024-11-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'acb1d0b0-9f1c-4297-9053-13ba1d67722c', 'kakao', '8826619384', 'user_8826619384', '이름15',
    '닉네임15', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/69.jpg', True, 32,
    15, '15번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/15', True, 'UI 디자인, Flutter, Android Studio, iOS 앱 개발',
    '2024-09-26 02:27:21', '2024-11-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f86efa29-9b58-44e0-a442-d629de517a38', 'naver', '6912806689', 'user_6912806689', '이름16',
    '닉네임16', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/57.jpg', True, 33,
    7, '16번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/16', False, '기타 기초, 피아노 기초, 리듬 맞추기',
    '2024-10-23 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a2890173-b816-42b4-8877-e12257f52fb6', 'kakao', '6393083461', 'user_6393083461', '이름17',
    '닉네임17', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_871.jpg', True, 1,
    21, '17번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/17', False, '영어 문법, 영작 연습, 기초 회화, 어휘 학습',
    '2025-03-19 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a56d0d1e-12f5-4e45-ab95-2045a5873c85', 'naver', '6547381039', 'user_6547381039', '이름18',
    '닉네임18', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/54.jpg', False, 33,
    7, '18번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/18', False, '포스터 디자인, 아이콘 디자인, 디지털 일러스트, 타이포그래피',
    '2024-05-17 02:27:21', '2024-12-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0ab7c8b3-c9c1-4272-87ba-93186f85e900', 'google', '8190499369', 'sub', '이름19',
    '닉네임19', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_319.jpg', False, 38,
    7, '19번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/19', False, 'CSS, React, JavaScript',
    '2024-08-02 02:27:21', '2025-03-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c19027e9-ac66-4a11-9b9d-745b002f901b', 'google', '4037484084', 'sub', '이름20',
    '닉네임20', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_803.jpg', True, 1,
    24, '20번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/20', True, 'Firebase, Kotlin, Swift',
    '2024-07-27 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '737d8265-591e-4321-a4e1-a5f14f650fb3', 'naver', '6630130234', 'user_6630130234', '이름21',
    '닉네임21', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_810.jpg', False, 4,
    7, '21번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/21', True, '미적분, 수학적 모델링, 선형대수학, 확률',
    '2024-11-03 02:27:21', '2024-12-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b0625c39-e1fe-4d23-ab18-bb1a90f3b1e1', 'google', '5320359644', 'sub', '이름22',
    '닉네임22', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/92.jpg', True, 3,
    3, '22번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/22', True, '수학적 모델링, 선형대수학, 확률',
    '2024-09-12 02:27:21', '2024-10-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3508c436-0aaa-4405-b1f9-3648a8a26066', 'google', '1515240781', 'sub', '이름23',
    '닉네임23', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/8.jpg', False, 2,
    3, '23번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/23', False, '체중 감량, 트레이닝 피드백, 근육 증대',
    '2024-08-16 02:27:21', '2024-08-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b53cfca3-d4cd-4d40-a5cf-3b28d69a5d52', 'kakao', '1328728356', 'user_1328728356', '이름24',
    '닉네임24', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/97.jpg', False, 8,
    1, '24번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/24', False, 'UI 디자인, Android Studio, iOS 앱 개발, Flutter',
    '2024-07-08 02:27:21', '2024-12-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '618df30c-b407-4873-89dc-fac35b957127', 'google', '2605398776', 'sub', '이름25',
    '닉네임25', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_974.jpg', True, 6,
    11, '25번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/25', True, '체중 감량 운동, 근육 만들기, 기초 운동법, 운동 기록',
    '2024-12-25 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6dba8239-200b-406f-93bf-452574b97e37', 'google', '5028015922', 'sub', '이름26',
    '닉네임26', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_331.jpg', False, 4,
    4, '26번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/26', False, '운동 기록, 체중 감량 운동, 기초 운동법',
    '2025-01-22 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c5ffdc81-4297-4771-ac98-7b142d696c94', 'kakao', '3798113517', 'user_3798113517', '이름27',
    '닉네임27', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/1.jpg', True, 8,
    1, '27번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/27', False, '기타, 작곡 기초, 악보 읽기',
    '2024-06-30 02:27:21', '2024-09-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed5a475a-269f-4327-a231-ad89fbf76d66', 'google', '7100531220', 'sub', '이름28',
    '닉네임28', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/56.jpg', False, 8,
    1, '28번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/28', False, 'iOS 앱 개발, Android Studio, UI 디자인',
    '2024-07-29 02:27:21', '2024-09-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7b7b323c-2240-4a81-a949-b5b98ec44790', 'google', '8992811074', 'sub', '이름29',
    '닉네임29', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_306.jpg', True, 39,
    4, '29번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/29', True, '영작 연습, 어휘 학습, 기초 회화, 영어 문법',
    '2025-02-23 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a39cf19d-c94e-4502-9f53-f79e575a3bb2', 'naver', '6577557679', 'user_6577557679', '이름30',
    '닉네임30', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/75.jpg', True, 4,
    3, '30번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/30', True, '포스터 디자인, 타이포그래피, 아이콘 디자인',
    '2025-04-07 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '64daf65b-b30b-49d1-bb98-313d0f0e8375', 'naver', '8609956383', 'user_8609956383', '이름31',
    '닉네임31', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_686.jpg', False, 34,
    16, '31번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/31', True, 'React, CSS, JavaScript, HTML',
    '2024-07-16 02:27:21', '2024-08-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '72ea3ed7-1e34-4a1b-95e9-1d7a75b44072', 'google', '7746600897', 'sub', '이름32',
    '닉네임32', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/52.jpg', False, 7,
    2, '32번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/32', False, 'UI 디자인, iOS 앱 개발, Flutter, Android Studio',
    '2025-04-20 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '270840e6-636d-453d-b850-e8fdcaf7da51', 'kakao', '7316752056', 'user_7316752056', '이름33',
    '닉네임33', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_468.jpg', False, 1,
    1, '33번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/33', False, 'JavaScript, HTML, React',
    '2024-05-23 02:27:21', '2024-10-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4544e76c-ba0a-4c02-b24d-075f31fcc078', 'naver', '6341263211', 'user_6341263211', '이름34',
    '닉네임34', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_940.jpg', True, 7,
    2, '34번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/34', True, '기타 기초, 피아노 기초, 리듬 맞추기',
    '2024-07-01 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5fc45226-c94e-4925-8d3d-9d3576a10635', 'naver', '2115648088', 'user_2115648088', '이름35',
    '닉네임35', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/83.jpg', False, 34,
    5, '35번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/35', True, '기초 회화, 어휘 학습, 영작 연습, 영어 문법',
    '2024-05-23 02:27:21', '2024-07-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0240a46e-2b93-4244-80ec-06092bf36812', 'google', '7682149626', 'sub', '이름36',
    '닉네임36', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/24.jpg', True, 1,
    14, '36번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/36', False, '악보 읽기, 리듬 연습, 작곡 기초, 기타',
    '2024-06-15 02:27:21', '2025-02-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '098b6ec6-3b7c-4490-9651-76e874535cdf', 'kakao', '9225183899', 'user_9225183899', '이름37',
    '닉네임37', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/70.jpg', False, 7,
    4, '37번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/37', False, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-12-08 02:27:21', '2025-02-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7b81762e-d14a-4c0d-a7ea-83ad7e0e93c6', 'kakao', '8874490651', 'user_8874490651', '이름38',
    '닉네임38', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/50.jpg', True, 36,
    14, '38번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/38', False, '프로토타입, 디자인 시스템, 버튼 디자인',
    '2025-01-15 02:27:21', '2025-02-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c760f8d3-bf82-49c8-a7e3-6761e524572a', 'kakao', '1971083809', 'user_1971083809', '이름39',
    '닉네임39', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_675.jpg', True, 36,
    19, '39번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/39', False, 'Figma, 와이어프레임, UX 리서치, UI 설계',
    '2024-09-30 02:27:21', '2024-10-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5391e576-bd89-4fb2-b677-e6316c7632ef', 'naver', '6719420468', 'user_6719420468', '이름40',
    '닉네임40', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/86.jpg', False, 34,
    13, '40번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/40', False, 'Kotlin, Firebase, Swift',
    '2024-08-29 02:27:21', '2024-10-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e5daed67-7999-4301-adbc-af204d770712', 'google', '9626217434', 'sub', '이름41',
    '닉네임41', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/63.jpg', True, 34,
    5, '41번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/41', False, 'UI 설계, 와이어프레임, Figma',
    '2025-04-21 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e15ed25c-b7d1-47b6-9a82-42eb1b89b7aa', 'kakao', '3282951237', 'user_3282951237', '이름42',
    '닉네임42', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/5.jpg', True, 35,
    13, '42번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/42', True, '기본 공식, 수학문제 풀이, 수학기초',
    '2024-12-04 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b4128275-5903-4d2f-aec3-b1601a78254e', 'google', '2404020522', 'sub', '이름43',
    '닉네임43', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/2.jpg', True, 7,
    2, '43번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/43', False, 'JPA, Spring, Spring Security, Spring Boot',
    '2025-01-16 02:27:21', '2025-01-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1873677b-d2b0-4990-b326-bcedfa35332e', 'kakao', '7422081285', 'user_7422081285', '이름44',
    '닉네임44', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_925.jpg', True, 3,
    1, '44번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/44', False, '사용자 흐름, 디자인 시스템, 프로토타입, 버튼 디자인',
    '2025-01-14 02:27:21', '2025-03-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9578fece-c577-4703-8756-c5bf966ed884', 'kakao', '1475990242', 'user_1475990242', '이름45',
    '닉네임45', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/63.jpg', True, 2,
    10, '45번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/45', False, '어휘 학습, 기초 회화, 영어 문법',
    '2025-03-27 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '780758af-99f0-4f04-bfb1-bb7811a55228', 'kakao', '1116858638', 'user_1116858638', '이름46',
    '닉네임46', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_158.jpg', True, 37,
    6, '46번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/46', True, '와이어프레임, UI 설계, UX 리서치, Figma',
    '2025-01-01 02:27:21', '2025-01-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '57c3c326-ceaf-4b4b-9184-d19a2810839a', 'kakao', '3730834476', 'user_3730834476', '이름47',
    '닉네임47', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', True, 31,
    4, '47번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/47', False, 'JavaScript, CSS, HTML, React',
    '2025-02-02 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ce19dbc0-2ba4-4e02-b8bd-60ebc7bce1fb', 'google', '2481208796', 'sub', '이름48',
    '닉네임48', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_423.jpg', True, 32,
    7, '48번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/48', True, '기초 회화, 영어 문법, 어휘 학습, 영작 연습',
    '2025-03-30 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd4ac6145-9502-4dc0-8920-e34dcc64c42f', 'kakao', '9423332682', 'user_9423332682', '이름49',
    '닉네임49', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/66.jpg', True, 3,
    3, '49번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/49', True, 'Spring Boot, Spring, JPA, Spring Security',
    '2025-02-19 02:27:21', '2025-03-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '525830d9-380b-4c4b-ad77-16c69aa4c12c', 'google', '1301436013', 'sub', '이름50',
    '닉네임50', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/7.jpg', True, 31,
    18, '50번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/50', True, '어휘 학습, 영작 연습, 영어 문법',
    '2024-06-11 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e564f662-74bc-4ab1-8dd7-61db726b09d8', 'naver', '5613333142', 'user_5613333142', '이름51',
    '닉네임51', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_937.jpg', False, 3,
    3, '51번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/51', True, 'JavaScript, HTML, CSS, React',
    '2025-01-11 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '24d30466-ea0e-4556-a47a-bb7205fd4f57', 'google', '1730358547', 'sub', '이름52',
    '닉네임52', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/24.jpg', True, 5,
    5, '52번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/52', True, 'CSS, JavaScript, React',
    '2025-02-05 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'eff110a1-2149-4d39-9bc8-c7cd3a3122a9', 'naver', '4100512773', 'user_4100512773', '이름53',
    '닉네임53', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_623.jpg', True, 36,
    7, '53번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/53', True, '근육 만들기, 체중 감량 운동, 기초 운동법',
    '2024-10-12 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6ec3f107-4e53-415b-8054-c5176aa36824', 'kakao', '5417564807', 'user_5417564807', '이름54',
    '닉네임54', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/23.jpg', False, 35,
    1, '54번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/54', False, 'Spring, Spring Security, JPA, Spring Boot',
    '2025-01-25 02:27:21', '2025-03-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '721eab4f-f10d-4aaf-8aec-e6a886ec3db9', 'kakao', '6452146326', 'user_6452146326', '이름55',
    '닉네임55', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/79.jpg', True, 33,
    10, '55번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/55', False, '운동 기록, 체중 감량 운동, 근육 만들기, 기초 운동법',
    '2024-06-12 02:27:21', '2024-12-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f454d5b2-4ca5-4aad-8881-cedfce4f2962', 'kakao', '3884148163', 'user_3884148163', '이름56',
    '닉네임56', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/26.jpg', False, 6,
    15, '56번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/56', False, 'Spring Boot, Spring, Spring Security',
    '2025-03-23 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fe00fa54-3eca-47a4-9427-72514d91d650', 'google', '6517272455', 'sub', '이름57',
    '닉네임57', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_489.jpg', True, 32,
    5, '57번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/57', True, '수학기초, 중등수학, 수학문제 풀이, 기본 공식',
    '2024-09-07 02:27:21', '2025-02-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fd056dd9-0636-44b3-a9b9-40e1a0cbb6e4', 'naver', '6374391013', 'user_6374391013', '이름58',
    '닉네임58', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/99.jpg', False, 31,
    25, '58번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/58', False, '근육 증대, 트레이닝 피드백, 체중 감량, 운동 루틴 계획',
    '2024-06-24 02:27:21', '2024-07-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7d891844-5703-4a9a-82d5-e98bc1004205', 'google', '4981153800', 'sub', '이름59',
    '닉네임59', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/60.jpg', False, 36,
    12, '59번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/59', False, '기초 회화, 영작 연습, 영어 문법, 어휘 학습',
    '2024-08-18 02:27:21', '2025-02-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0356479c-6f3c-4348-afe8-5f67fd023002', 'kakao', '1710619529', 'user_1710619529', '이름60',
    '닉네임60', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/86.jpg', False, 8,
    1, '60번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/60', False, '기본 공식, 수학문제 풀이, 중등수학, 수학기초',
    '2024-11-16 02:27:21', '2025-01-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0ed49c2c-8166-441c-9448-58b972d46f45', 'google', '6803391564', 'sub', '이름61',
    '닉네임61', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/93.jpg', False, 39,
    1, '61번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/61', True, '기타, 악보 읽기, 작곡 기초, 리듬 연습',
    '2024-08-11 02:27:21', '2024-11-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7f08b68a-0a78-413f-b553-3266d991a2f5', 'kakao', '8174647223', 'user_8174647223', '이름62',
    '닉네임62', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_650.jpg', True, 5,
    1, '62번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/62', True, 'React, JavaScript, HTML, CSS',
    '2025-03-19 02:27:21', '2025-03-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f055362c-95cf-48c9-bc38-cb85aac29a08', 'naver', '4486680735', 'user_4486680735', '이름63',
    '닉네임63', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/80.jpg', False, 7,
    5, '63번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/63', False, '기초 운동법, 체중 감량 운동, 근육 만들기',
    '2024-05-17 02:27:21', '2024-07-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4904fa8f-3049-4e87-983d-29f6af8709df', 'google', '5048584641', 'sub', '이름64',
    '닉네임64', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/32.jpg', False, 8,
    1, '64번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/64', False, '디지털 일러스트, 타이포그래피, 아이콘 디자인',
    '2024-10-25 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cf837d0a-8035-4ebf-9b35-04db237a79f2', 'google', '1944107106', 'sub', '이름65',
    '닉네임65', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/21.jpg', True, 1,
    18, '65번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/65', True, 'CSS, JavaScript, HTML, React',
    '2025-01-29 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '12e76619-41b3-4469-91ec-49b8314785a2', 'kakao', '9623653609', 'user_9623653609', '이름66',
    '닉네임66', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/60.jpg', True, 37,
    6, '66번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/66', True, '기본 공식, 수학기초, 수학문제 풀이',
    '2025-03-26 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0f231acf-0b1b-4cdc-b54f-5ce7246a6203', 'naver', '8540360298', 'user_8540360298', '이름67',
    '닉네임67', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_796.jpg', True, 7,
    4, '67번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/67', False, '수학문제 풀이, 기본 공식, 중등수학',
    '2024-08-01 02:27:21', '2024-09-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c6d6b96e-6eb9-4311-9405-c057d71ba150', 'naver', '4067965560', 'user_4067965560', '이름68',
    '닉네임68', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_702.jpg', True, 33,
    2, '68번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/68', True, '기초 운동법, 체중 감량 운동, 근육 만들기',
    '2024-11-08 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '929cb25a-11d9-4aaf-af1f-627e14f6225e', 'google', '4594456319', 'sub', '이름69',
    '닉네임69', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/80.jpg', False, 1,
    4, '69번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/69', True, '수학적 모델링, 선형대수학, 확률, 미적분',
    '2025-04-17 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '383f5b71-b07c-480a-bcf2-f603bfb7af79', 'naver', '4949684955', 'user_4949684955', '이름70',
    '닉네임70', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/18.jpg', True, 32,
    1, '70번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/70', True, 'JavaScript, HTML, React',
    '2025-01-25 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '688918cb-016a-48a9-93da-4a03618cacbc', 'google', '6494038362', 'sub', '이름71',
    '닉네임71', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_107.jpg', True, 6,
    16, '71번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/71', False, 'CSS, React, HTML',
    '2025-03-04 02:27:21', '2025-03-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1181c8d4-cce9-413f-8f3c-e62ec5c24d77', 'kakao', '1047279622', 'user_1047279622', '이름72',
    '닉네임72', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_444.jpg', True, 37,
    1, '72번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/72', False, 'Swift, Firebase, React Native',
    '2024-07-19 02:27:21', '2024-12-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '37ed4b04-9863-4a86-83fc-8b92d4e3a0e0', 'google', '4680210748', 'sub', '이름73',
    '닉네임73', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/11.jpg', False, 39,
    4, '73번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/73', False, '와이어프레임, UX 리서치, UI 설계, Figma',
    '2024-11-19 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f0a5d9cd-b8fb-4743-b638-22a44aa143af', 'naver', '9549340007', 'user_9549340007', '이름74',
    '닉네임74', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/18.jpg', False, 1,
    9, '74번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/74', True, '와이어프레임, Figma, UX 리서치',
    '2024-08-16 02:27:21', '2024-11-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f8a349af-62bb-412e-8ac8-d9ea8c6d7cfc', 'google', '9697152015', 'sub', '이름75',
    '닉네임75', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/53.jpg', False, 36,
    21, '75번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/75', False, '영어 회화, 리스닝 연습, TOEIC',
    '2024-05-12 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '98f57bb7-a25b-4861-8427-8fe2bdefb72d', 'google', '3466932480', 'sub', '이름76',
    '닉네임76', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_261.jpg', False, 39,
    3, '76번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/76', True, 'JavaScript, HTML, React',
    '2024-11-02 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9c965ee1-9da3-4ce1-8207-550ade53ad8f', 'naver', '5924515480', 'user_5924515480', '이름77',
    '닉네임77', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/76.jpg', False, 3,
    4, '77번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/77', True, '기타, 작곡 기초, 악보 읽기, 리듬 연습',
    '2024-07-17 02:27:21', '2024-07-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '179387ee-c413-4ffe-aa84-c216ef8ce967', 'google', '1069355380', 'sub', '이름78',
    '닉네임78', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/84.jpg', False, 35,
    13, '78번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/78', True, '와이어프레임, Figma, UI 설계',
    '2025-02-02 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '177ac7eb-fa2c-4013-acdb-86689a06430f', 'naver', '4064478439', 'user_4064478439', '이름79',
    '닉네임79', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_956.jpg', True, 8,
    1, '79번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/79', False, 'Flutter, UI 디자인, Android Studio, iOS 앱 개발',
    '2025-03-25 02:27:21', '2025-03-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4831faeb-c60b-49e3-a86d-d4b1f74a6c9e', 'google', '9495963760', 'sub', '이름80',
    '닉네임80', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/26.jpg', True, 6,
    16, '80번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/80', True, '중등수학, 기본 공식, 수학문제 풀이, 수학기초',
    '2024-10-07 02:27:21', '2025-02-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6b164a8a-0891-4575-b5ea-35a232636c83', 'naver', '9779350664', 'user_9779350664', '이름81',
    '닉네임81', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/8.jpg', True, 32,
    9, '81번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/81', True, 'Kotlin, React Native, Firebase, Swift',
    '2024-05-26 02:27:21', '2024-08-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b4e73958-3d7e-4f20-91aa-3d63a69867de', 'naver', '8955419584', 'user_8955419584', '이름82',
    '닉네임82', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_603.jpg', False, 31,
    5, '82번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/82', True, '리스닝 연습, TOEIC, 영어 회화, 비즈니스 영어',
    '2025-04-09 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fb05f169-3e2e-455f-9151-dde5124ef239', 'naver', '1505749611', 'user_1505749611', '이름83',
    '닉네임83', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/62.jpg', False, 36,
    4, '83번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/83', False, '타이포그래피, 디지털 일러스트, 포스터 디자인',
    '2024-08-05 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bc59b3f4-46ba-4aa0-96e0-5ad76147f0bb', 'google', '3116676882', 'sub', '이름84',
    '닉네임84', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/86.jpg', True, 1,
    20, '84번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/84', True, 'UX 리서치, UI 설계, Figma',
    '2024-05-20 02:27:21', '2025-03-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8cf67623-0cd6-4444-9cae-24dd475c3cd2', 'naver', '9007911891', 'user_9007911891', '이름85',
    '닉네임85', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/13.jpg', True, 3,
    4, '85번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/85', True, '기본 공식, 중등수학, 수학기초',
    '2025-02-10 02:27:21', '2025-03-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd1cbfe5f-106b-4bd8-8d19-50d4f4d161b7', 'naver', '9162792735', 'user_9162792735', '이름86',
    '닉네임86', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_894.jpg', True, 3,
    5, '86번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/86', True, '기초 회화, 영작 연습, 영어 문법, 어휘 학습',
    '2024-11-03 02:27:21', '2025-01-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '751a5ad7-67a0-4aff-af69-84612eb88ded', 'google', '2576254987', 'sub', '이름87',
    '닉네임87', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/56.jpg', True, 32,
    17, '87번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/87', False, 'HTML, JavaScript, CSS, React',
    '2024-07-06 02:27:21', '2024-12-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5ec35b02-ebd4-423d-858a-3ae8a4cd86d6', 'kakao', '2915600739', 'user_2915600739', '이름88',
    '닉네임88', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/78.jpg', False, 38,
    21, '88번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/88', False, '리듬 맞추기, 기본 코드, 피아노 기초, 기타 기초',
    '2025-03-09 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '266e7edc-995c-466c-914f-f3292880c800', 'naver', '2182548337', 'user_2182548337', '이름89',
    '닉네임89', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/96.jpg', True, 31,
    8, '89번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/89', True, '리듬 맞추기, 기타 기초, 기본 코드',
    '2025-04-03 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9556ad45-9607-4ba1-b12a-6bda9b7d1f19', 'naver', '1591234148', 'user_1591234148', '이름90',
    '닉네임90', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/75.jpg', True, 37,
    5, '90번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/90', True, '버튼 디자인, 디자인 시스템, 사용자 흐름',
    '2024-09-21 02:27:21', '2024-11-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd4ff9900-2289-4e39-8c3b-c85043d26759', 'naver', '6795712790', 'user_6795712790', '이름91',
    '닉네임91', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/45.jpg', True, 6,
    15, '91번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/91', True, '타이포그래피, 아이콘 디자인, 포스터 디자인',
    '2025-04-09 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59c844e5-d118-4aef-a6e1-b3348cb18c09', 'naver', '2887718013', 'user_2887718013', '이름92',
    '닉네임92', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/63.jpg', False, 8,
    1, '92번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/92', True, '기본 공식, 수학문제 풀이, 수학기초',
    '2024-10-19 02:27:21', '2024-12-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '45c6cf8b-f8f0-4064-acfa-93bfa82ed1d8', 'google', '6062441753', 'sub', '이름93',
    '닉네임93', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_907.jpg', False, 38,
    22, '93번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/93', False, '기타 기초, 기본 코드, 리듬 맞추기, 피아노 기초',
    '2025-03-18 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4303eb3c-08f5-485b-a0b9-a7b966287f4d', 'naver', '7881322240', 'user_7881322240', '이름94',
    '닉네임94', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/71.jpg', False, 4,
    3, '94번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/94', True, '트레이닝 피드백, 운동 루틴 계획, 체중 감량',
    '2024-07-15 02:27:21', '2024-09-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'beae1eb6-d9a0-402f-8191-2462d7735717', 'kakao', '3866843631', 'user_3866843631', '이름95',
    '닉네임95', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_980.jpg', True, 7,
    1, '95번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/95', False, '사용자 흐름, 버튼 디자인, 프로토타입, 디자인 시스템',
    '2025-05-06 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4df1e27a-0a87-4891-b9b3-2065fc932d4c', 'kakao', '6419300124', 'user_6419300124', '이름96',
    '닉네임96', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_495.jpg', False, 38,
    2, '96번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/96', False, 'HTML, CSS, React, JavaScript',
    '2025-03-02 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b897deed-3811-4b06-8e2d-a2bb242b6204', 'google', '8540501204', 'sub', '이름97',
    '닉네임97', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_194.jpg', True, 4,
    4, '97번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/97', False, 'Swift, Kotlin, React Native, Firebase',
    '2025-01-03 02:27:21', '2025-04-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3accc953-d02f-4025-a90f-501c41aa9b38', 'google', '9673704415', 'sub', '이름98',
    '닉네임98', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/85.jpg', False, 8,
    1, '98번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/98', False, '영어 회화, 비즈니스 영어, 리스닝 연습',
    '2024-11-30 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6733f024-5759-4670-975d-a0d80f1c8c07', 'naver', '7838627721', 'user_7838627721', '이름99',
    '닉네임99', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_884.jpg', False, 7,
    5, '99번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/99', False, '리듬 연습, 작곡 기초, 기타',
    '2025-01-06 02:27:21', '2025-04-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd67feaaf-d10a-421d-8a8b-74b063a1f369', 'naver', '7752853435', 'user_7752853435', '이름100',
    '닉네임100', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/45.jpg', True, 6,
    10, '100번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/100', True, '수학문제 풀이, 기본 공식, 중등수학',
    '2024-11-11 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '63f08900-b929-49f6-8913-5af50a9601d0', 'google', '8402523623', 'sub', '이름101',
    '닉네임101', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/11.jpg', True, 8,
    1, '101번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/101', True, 'Android Studio, UI 디자인, iOS 앱 개발',
    '2024-09-12 02:27:21', '2024-11-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '28a27345-7662-44ed-bd4b-7b2fda15ca9b', 'kakao', '7302611420', 'user_7302611420', '이름102',
    '닉네임102', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_691.jpg', False, 4,
    3, '102번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/102', False, '디지털 일러스트, 포스터 디자인, 타이포그래피, 아이콘 디자인',
    '2025-01-12 02:27:21', '2025-03-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7e589a73-2a30-4a6e-99ca-e954b7c4c876', 'kakao', '3267201372', 'user_3267201372', '이름103',
    '닉네임103', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/23.jpg', True, 37,
    2, '103번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/103', True, 'iOS 앱 개발, UI 디자인, Android Studio, Flutter',
    '2024-09-13 02:27:21', '2024-11-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '44f69acf-1c33-46de-80d1-3bf9272ebc1d', 'naver', '6267543981', 'user_6267543981', '이름104',
    '닉네임104', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/92.jpg', False, 7,
    4, '104번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/104', True, '어휘 학습, 기초 회화, 영작 연습',
    '2025-05-09 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a5ab15d5-ff60-4d71-8bdf-3d487ac0774c', 'google', '4962988884', 'sub', '이름105',
    '닉네임105', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/3.jpg', True, 3,
    5, '105번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/105', False, '영작 연습, 기초 회화, 어휘 학습, 영어 문법',
    '2025-01-18 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '77848740-dd37-4800-99bb-70650c14e64a', 'google', '1432371340', 'sub', '이름106',
    '닉네임106', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/55.jpg', True, 34,
    4, '106번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/106', True, '체중 감량 운동, 운동 기록, 기초 운동법',
    '2024-12-10 02:27:21', '2025-01-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '305f22be-f9a1-424b-95f6-e707a0007c27', 'kakao', '3343660865', 'user_3343660865', '이름107',
    '닉네임107', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/47.jpg', True, 7,
    4, '107번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/107', True, '근육 만들기, 기초 운동법, 운동 기록',
    '2024-09-06 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c73c7c0c-e049-4866-ac0e-0d5babe14feb', 'kakao', '2599928795', 'user_2599928795', '이름108',
    '닉네임108', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_224.jpg', False, 33,
    1, '108번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/108', True, '피아노 기초, 기본 코드, 기타 기초, 리듬 맞추기',
    '2025-02-04 02:27:21', '2025-04-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e96aac90-4bc7-44f6-855b-4a15bd134dc3', 'kakao', '6286894316', 'user_6286894316', '이름109',
    '닉네임109', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_803.jpg', True, 37,
    8, '109번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/109', False, '디자인 시스템, 사용자 흐름, 프로토타입, 버튼 디자인',
    '2024-10-04 02:27:21', '2024-10-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ca8d9171-3623-4cf6-b5c2-264b2f16bfe0', 'kakao', '3017237497', 'user_3017237497', '이름110',
    '닉네임110', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/82.jpg', True, 32,
    16, '110번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/110', False, '프로토타입, 디자인 시스템, 사용자 흐름',
    '2024-08-13 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2ea019be-6f31-45a4-95d4-ac240de29e1c', 'google', '6717924048', 'sub', '이름111',
    '닉네임111', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/89.jpg', False, 34,
    14, '111번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/111', False, 'HTML, React, JavaScript, CSS',
    '2025-03-15 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cb245a50-434e-493d-bcc4-52e6a2dfc5ab', 'google', '1773371156', 'sub', '이름112',
    '닉네임112', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/41.jpg', False, 34,
    6, '112번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/112', False, '미적분, 선형대수학, 수학적 모델링',
    '2024-11-10 02:27:21', '2025-02-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f480d015-4603-4f96-8c8d-719718f29727', 'naver', '5086036230', 'user_5086036230', '이름113',
    '닉네임113', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_230.jpg', True, 36,
    1, '113번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/113', True, '피아노 기초, 리듬 맞추기, 기본 코드',
    '2025-01-03 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '20d59efd-2407-47ba-9bf2-366eea7c1162', 'naver', '7849201159', 'user_7849201159', '이름114',
    '닉네임114', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/21.jpg', True, 36,
    5, '114번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/114', False, 'Flutter, Android Studio, iOS 앱 개발',
    '2025-03-20 02:27:21', '2025-04-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f66cf590-6520-4bb4-8f2b-f15c0987e4f9', 'kakao', '9864783025', 'user_9864783025', '이름115',
    '닉네임115', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_420.jpg', True, 33,
    4, '115번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/115', True, '선형대수학, 수학적 모델링, 미적분',
    '2025-03-15 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2cf39262-44db-45ca-b0cd-9dc42ab63a00', 'google', '8751205353', 'sub', '이름116',
    '닉네임116', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/76.jpg', False, 34,
    16, '116번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/116', False, '타이포그래피, 아이콘 디자인, 디지털 일러스트, 포스터 디자인',
    '2025-05-10 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0417e185-00d7-478f-910f-d1ca433fa776', 'google', '9505401816', 'sub', '이름117',
    '닉네임117', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/47.jpg', False, 32,
    5, '117번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/117', False, '리듬 맞추기, 기본 코드, 기타 기초',
    '2025-01-16 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '941877d4-aad3-496e-9999-58f73f6a1de5', 'kakao', '2642094467', 'user_2642094467', '이름118',
    '닉네임118', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/91.jpg', True, 5,
    5, '118번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/118', True, '프로토타입, 디자인 시스템, 버튼 디자인',
    '2024-06-06 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'adcf65f0-28da-4c4d-b223-1b3b62dc329c', 'google', '5022577416', 'sub', '이름119',
    '닉네임119', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/27.jpg', False, 37,
    11, '119번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/119', False, '영작 연습, 어휘 학습, 영어 문법, 기초 회화',
    '2024-08-01 02:27:21', '2024-10-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a71f1d8d-5346-4a18-af3c-a1b88e94275d', 'google', '1445799523', 'sub', '이름120',
    '닉네임120', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/11.jpg', True, 38,
    2, '120번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/120', True, 'Swift, Kotlin, Firebase',
    '2024-12-09 02:27:21', '2025-01-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'caff18d4-d354-4204-a96d-aa48c56707b3', 'kakao', '7517930961', 'user_7517930961', '이름121',
    '닉네임121', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/53.jpg', True, 7,
    2, '121번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/121', False, 'Kotlin, Swift, Firebase',
    '2024-08-29 02:27:21', '2024-10-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c1969ac4-ecf1-41a4-b081-7f353033d54e', 'naver', '3060788325', 'user_3060788325', '이름122',
    '닉네임122', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/93.jpg', False, 35,
    14, '122번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/122', False, 'Spring Boot, JPA, Spring',
    '2024-11-14 02:27:21', '2024-12-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5254c8f9-28ff-4944-a092-edbf0c08d5d0', 'kakao', '9670252988', 'user_9670252988', '이름123',
    '닉네임123', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_543.jpg', True, 1,
    12, '123번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/123', False, '기타, 리듬 연습, 악보 읽기, 작곡 기초',
    '2024-10-07 02:27:21', '2025-02-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c3b19613-4f81-4a02-9373-00955b9bc0f3', 'naver', '6306152679', 'user_6306152679', '이름124',
    '닉네임124', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_324.jpg', False, 2,
    4, '124번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/124', False, 'CSS, React, HTML',
    '2024-06-23 02:27:21', '2024-08-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4a4e1c6e-b271-4027-8dce-02935c0b7885', 'google', '5927952912', 'sub', '이름125',
    '닉네임125', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/65.jpg', True, 6,
    12, '125번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/125', False, 'UX 리서치, UI 설계, Figma, 와이어프레임',
    '2024-10-29 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dd5514de-5f66-4c99-a168-f00461f42154', 'google', '1184224749', 'sub', '이름126',
    '닉네임126', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_708.jpg', False, 31,
    21, '126번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/126', False, '기초 회화, 영작 연습, 어휘 학습, 영어 문법',
    '2025-01-28 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7c279f84-0e8c-4a9a-ba44-65628b2efc4b', 'google', '6037410152', 'sub', '이름127',
    '닉네임127', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/80.jpg', True, 31,
    5, '127번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/127', False, '작곡 기초, 악보 읽기, 리듬 연습, 기타',
    '2025-03-13 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '87c84c75-ecc2-4c3d-9834-21de74e1497f', 'kakao', '7322689469', 'user_7322689469', '이름128',
    '닉네임128', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/18.jpg', False, 6,
    3, '128번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/128', True, 'JavaScript, React, CSS',
    '2024-09-20 02:27:21', '2024-10-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd57eaecb-128b-474e-a9b4-8c14ef94fd70', 'naver', '1225331422', 'user_1225331422', '이름129',
    '닉네임129', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_896.jpg', True, 34,
    4, '129번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/129', False, '사용자 흐름, 프로토타입, 버튼 디자인, 디자인 시스템',
    '2025-01-15 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '55b916bb-00fe-4703-adcc-38948445d033', 'google', '7224747691', 'sub', '이름130',
    '닉네임130', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_521.jpg', False, 33,
    10, '130번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/130', False, '트레이닝 피드백, 근육 증대, 체중 감량',
    '2024-10-02 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e58593d0-b4fc-48ab-b6c5-02ea4a2521dc', 'naver', '4728085540', 'user_4728085540', '이름131',
    '닉네임131', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_493.jpg', False, 32,
    13, '131번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/131', False, '체중 감량 운동, 기초 운동법, 근육 만들기, 운동 기록',
    '2024-07-16 02:27:21', '2025-01-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '12292ba0-6a07-468e-a01d-c25c38cd0967', 'naver', '5647285989', 'user_5647285989', '이름132',
    '닉네임132', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/66.jpg', True, 5,
    5, '132번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/132', False, 'HTML, CSS, JavaScript, React',
    '2024-11-10 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99c7d074-7eab-44f8-8653-0a70af1dab5e', 'naver', '4124489741', 'user_4124489741', '이름133',
    '닉네임133', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/78.jpg', False, 32,
    6, '133번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/133', False, '기초 회화, 영작 연습, 어휘 학습',
    '2024-09-19 02:27:21', '2025-02-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2b775eab-67f1-4090-9434-53ff6aeead9d', 'kakao', '4972458256', 'user_4972458256', '이름134',
    '닉네임134', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/2.jpg', False, 33,
    1, '134번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/134', True, '근육 만들기, 운동 기록, 기초 운동법',
    '2025-03-02 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3ba431a2-f11c-4880-85cd-333f7bb661e8', 'kakao', '9278452161', 'user_9278452161', '이름135',
    '닉네임135', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/2.jpg', False, 36,
    12, '135번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/135', False, '디자인 시스템, 사용자 흐름, 버튼 디자인',
    '2024-10-13 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0e0f15b3-f650-4004-af7d-17f77a624bc9', 'kakao', '6041257215', 'user_6041257215', '이름136',
    '닉네임136', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_820.jpg', True, 35,
    9, '136번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/136', False, 'UI 디자인, iOS 앱 개발, Flutter',
    '2025-01-07 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4446fb68-7382-478b-b6cc-ebbf2edec225', 'naver', '1617895779', 'user_1617895779', '이름137',
    '닉네임137', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/33.jpg', True, 39,
    3, '137번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/137', True, 'Firebase, React Native, Swift, Kotlin',
    '2024-10-24 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '35ea7ae6-e55d-4b49-a881-13a54f88ef8e', 'google', '7854256404', 'sub', '이름138',
    '닉네임138', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', True, 3,
    4, '138번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/138', True, 'Firebase, Swift, React Native',
    '2024-08-05 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c3b2890f-beba-44fc-bbb0-5e0e07b3c801', 'google', '3667159640', 'sub', '이름139',
    '닉네임139', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/17.jpg', False, 1,
    16, '139번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/139', True, 'iOS 앱 개발, UI 디자인, Android Studio, Flutter',
    '2025-02-09 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dc04a5a6-03c0-4c4f-9242-a21389555efb', 'kakao', '9610322172', 'user_9610322172', '이름140',
    '닉네임140', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_479.jpg', True, 3,
    3, '140번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/140', False, '악보 읽기, 기타, 리듬 연습, 작곡 기초',
    '2024-11-29 02:27:21', '2025-03-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bb7d9038-0946-423e-956b-c6d8e2e1934e', 'naver', '5966511497', 'user_5966511497', '이름141',
    '닉네임141', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/44.jpg', True, 8,
    1, '141번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/141', True, '프로토타입, 디자인 시스템, 사용자 흐름',
    '2025-01-14 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c57b0064-b7cb-4e16-b619-e7d68d0a4695', 'naver', '4281307909', 'user_4281307909', '이름142',
    '닉네임142', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/63.jpg', True, 1,
    9, '142번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/142', True, 'Photoshop, 시각 디자인, 브랜딩, Illustrator',
    '2024-05-25 02:27:21', '2024-10-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '36ee219e-ce7a-4393-9230-cb7a50be2c0e', 'naver', '4502159026', 'user_4502159026', '이름143',
    '닉네임143', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/64.jpg', False, 39,
    3, '143번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/143', False, 'Swift, Kotlin, React Native, Firebase',
    '2024-11-16 02:27:21', '2025-02-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0f202327-c1d7-4186-b4b8-117e64398afe', 'kakao', '1756086913', 'user_1756086913', '이름144',
    '닉네임144', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/52.jpg', False, 6,
    4, '144번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/144', True, 'Flutter, iOS 앱 개발, Android Studio',
    '2025-01-14 02:27:21', '2025-04-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7c771c2e-fed7-4db6-a0d0-28e3e80219bc', 'google', '7071780124', 'sub', '이름145',
    '닉네임145', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/32.jpg', True, 35,
    3, '145번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/145', True, 'UI 디자인, iOS 앱 개발, Android Studio',
    '2025-02-03 02:27:21', '2025-02-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dbc76508-db98-4cae-9f76-9dbb93d051fb', 'naver', '1532110763', 'user_1532110763', '이름146',
    '닉네임146', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_117.jpg', True, 38,
    23, '146번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/146', False, 'React, JavaScript, HTML',
    '2025-03-17 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7fa93d5a-7b53-4610-a174-a105d92bb81b', 'google', '7873798201', 'sub', '이름147',
    '닉네임147', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/8.jpg', True, 36,
    20, '147번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/147', True, '영어 문법, 영작 연습, 기초 회화, 어휘 학습',
    '2025-04-22 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5e86a498-c16c-49ca-9037-f145794ff7a8', 'naver', '9177733400', 'user_9177733400', '이름148',
    '닉네임148', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_216.jpg', False, 39,
    1, '148번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/148', True, '어휘 학습, 기초 회화, 영작 연습, 영어 문법',
    '2025-02-14 02:27:21', '2025-03-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0a21b91f-a604-4bdb-a0e0-bfaec6ee03b1', 'kakao', '4726660348', 'user_4726660348', '이름149',
    '닉네임149', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/43.jpg', True, 32,
    5, '149번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/149', True, 'React Native, Swift, Firebase',
    '2024-11-09 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'beae296e-0927-4244-944f-a4335ceaf649', 'kakao', '5060145149', 'user_5060145149', '이름150',
    '닉네임150', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/40.jpg', False, 8,
    1, '150번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/150', True, '시각 디자인, 브랜딩, Photoshop',
    '2024-09-04 02:27:21', '2025-01-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04b7d25a-87b7-4338-ac72-8abcc1da84bb', 'kakao', '5659232719', 'user_5659232719', '이름151',
    '닉네임151', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_321.jpg', False, 33,
    5, '151번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/151', False, '운동 기록, 근육 만들기, 체중 감량 운동',
    '2025-05-01 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aaccb1a9-2660-4850-a9db-26be04d07154', 'kakao', '3674463928', 'user_3674463928', '이름152',
    '닉네임152', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_617.jpg', True, 6,
    11, '152번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/152', True, '체중 감량 운동, 기초 운동법, 운동 기록',
    '2024-12-07 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ff7ec0d9-8f90-4711-923d-b5d5a527fc96', 'kakao', '6466708911', 'user_6466708911', '이름153',
    '닉네임153', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/44.jpg', False, 35,
    3, '153번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/153', False, 'TOEIC, 비즈니스 영어, 영어 회화',
    '2024-07-06 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4904a4a0-2b36-43ad-abd0-0bd179aeb38b', 'kakao', '6909723064', 'user_6909723064', '이름154',
    '닉네임154', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/99.jpg', True, 33,
    6, '154번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/154', False, '디지털 일러스트, 아이콘 디자인, 포스터 디자인',
    '2024-07-17 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f1b985e9-311b-45e0-a3de-3d903c3974a3', 'naver', '5780242360', 'user_5780242360', '이름155',
    '닉네임155', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/92.jpg', False, 38,
    10, '155번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/155', True, '영어 회화, TOEIC, 리스닝 연습',
    '2024-07-03 02:27:21', '2024-09-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '514cbd3e-41b1-414d-9cbb-834856279b16', 'naver', '1621584791', 'user_1621584791', '이름156',
    '닉네임156', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_287.jpg', True, 7,
    4, '156번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/156', True, 'React, JavaScript, HTML, CSS',
    '2024-10-19 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed0cc03d-f787-4fea-aa3e-c0da6fb2e36a', 'google', '1657507963', 'sub', '이름157',
    '닉네임157', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/44.jpg', True, 31,
    17, '157번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/157', True, '기본 코드, 리듬 맞추기, 피아노 기초, 기타 기초',
    '2024-06-14 02:27:21', '2025-01-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dca41969-fee3-471a-9ce0-723f4e1b540c', 'kakao', '3363912775', 'user_3363912775', '이름158',
    '닉네임158', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_295.jpg', False, 35,
    17, '158번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/158', False, '리듬 연습, 기타, 악보 읽기, 작곡 기초',
    '2025-02-20 02:27:21', '2025-03-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f2ddfed1-53d5-4c28-85b2-951b9138d031', 'google', '7754120081', 'sub', '이름159',
    '닉네임159', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', True, 31,
    8, '159번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/159', True, '버튼 디자인, 디자인 시스템, 프로토타입, 사용자 흐름',
    '2024-07-13 02:27:21', '2024-11-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '81b0bbc8-9841-44c4-ac03-f2b0144fc92a', 'google', '1496884092', 'sub', '이름160',
    '닉네임160', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/19.jpg', False, 8,
    1, '160번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/160', True, 'React Native, Swift, Firebase',
    '2025-01-04 02:27:21', '2025-02-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59ab5dbb-2e2b-4a89-b8f7-5c109de137cc', 'naver', '5685397284', 'user_5685397284', '이름161',
    '닉네임161', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_666.jpg', True, 38,
    23, '161번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/161', False, '운동 루틴 계획, 체중 감량, 근육 증대',
    '2024-07-04 02:27:21', '2024-12-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '862e594d-1da4-4f59-8e71-bc4958bcdd73', 'google', '3514690849', 'sub', '이름162',
    '닉네임162', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/53.jpg', False, 38,
    13, '162번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/162', False, '기본 코드, 기타 기초, 피아노 기초, 리듬 맞추기',
    '2025-05-05 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bf87e698-11dc-4658-9266-a083257e9e7c', 'naver', '2908726117', 'user_2908726117', '이름163',
    '닉네임163', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/99.jpg', True, 3,
    3, '163번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/163', False, 'Swift, Kotlin, Firebase, React Native',
    '2024-11-03 02:27:21', '2025-01-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99383f1d-db47-484c-bc66-d5447f838c96', 'google', '6247625387', 'sub', '이름164',
    '닉네임164', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/46.jpg', False, 32,
    9, '164번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/164', True, '근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2024-12-16 02:27:21', '2025-01-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99aae54c-1bb5-4ee0-98bc-b416fce08d19', 'naver', '3537993087', 'user_3537993087', '이름165',
    '닉네임165', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/27.jpg', True, 1,
    9, '165번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/165', True, '영어 회화, 비즈니스 영어, 리스닝 연습, TOEIC',
    '2025-04-10 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3d3b42a6-9633-42bd-98d0-c135b3761164', 'kakao', '8261106358', 'user_8261106358', '이름166',
    '닉네임166', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_301.jpg', True, 8,
    1, '166번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/166', False, '영어 회화, 비즈니스 영어, TOEIC',
    '2025-04-18 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dce3e316-0614-43ec-8188-be8350b9da97', 'google', '4584741967', 'sub', '이름167',
    '닉네임167', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/85.jpg', False, 32,
    6, '167번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/167', True, '기본 공식, 수학기초, 수학문제 풀이, 중등수학',
    '2024-07-15 02:27:21', '2024-10-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9b9979dd-d4cb-49c2-ac9b-3f4c3c8cade8', 'naver', '9842367814', 'user_9842367814', '이름168',
    '닉네임168', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/92.jpg', True, 7,
    3, '168번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/168', False, '기본 공식, 수학문제 풀이, 중등수학',
    '2024-07-28 02:27:21', '2024-12-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c80bfe03-0067-4f5f-b29a-28eee0bcdf13', 'naver', '1320428893', 'user_1320428893', '이름169',
    '닉네임169', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/34.jpg', False, 5,
    4, '169번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/169', False, 'Spring Security, Spring Boot, JPA',
    '2025-01-30 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cbe4f8ef-a975-40dd-9996-fb84b9bfdcba', 'naver', '9269810777', 'user_9269810777', '이름170',
    '닉네임170', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/38.jpg', False, 37,
    1, '170번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/170', True, '작곡 기초, 악보 읽기, 리듬 연습, 기타',
    '2024-12-13 02:27:21', '2025-01-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1fc9f43b-758b-4538-843d-030b41c3efe0', 'google', '7400885352', 'sub', '이름171',
    '닉네임171', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_731.jpg', True, 36,
    12, '171번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/171', False, '피아노 기초, 기타 기초, 리듬 맞추기, 기본 코드',
    '2025-03-28 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ec81e880-de3a-4fbc-acdb-bf616498f205', 'naver', '9784326651', 'user_9784326651', '이름172',
    '닉네임172', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_685.jpg', True, 35,
    3, '172번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/172', True, '체중 감량 운동, 운동 기록, 근육 만들기, 기초 운동법',
    '2025-04-05 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '873857b8-755a-4594-a7db-05689112e49a', 'naver', '2832704332', 'user_2832704332', '이름173',
    '닉네임173', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/25.jpg', True, 32,
    5, '173번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/173', False, 'UX 리서치, 와이어프레임, UI 설계',
    '2024-11-08 02:27:21', '2024-12-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c893884c-0180-4788-a3d0-8b19727f7f5f', 'kakao', '5537468437', 'user_5537468437', '이름174',
    '닉네임174', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/78.jpg', True, 37,
    5, '174번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/174', False, '비즈니스 영어, 영어 회화, TOEIC, 리스닝 연습',
    '2025-04-11 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bcaa0ef6-191e-4e70-9562-fb1a4d3bc6f3', 'kakao', '4865110180', 'user_4865110180', '이름175',
    '닉네임175', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/85.jpg', True, 34,
    6, '175번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/175', False, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-08-07 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8b72fb90-6e72-449d-b53b-33603affd945', 'google', '6063789177', 'sub', '이름176',
    '닉네임176', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/54.jpg', True, 37,
    4, '176번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/176', False, '운동 루틴 계획, 트레이닝 피드백, 근육 증대',
    '2025-01-29 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '429110d1-3aef-4b10-9432-f3b5575ac8fa', 'naver', '8767437538', 'user_8767437538', '이름177',
    '닉네임177', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_134.jpg', False, 34,
    16, '177번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/177', True, '리듬 맞추기, 기본 코드, 피아노 기초, 기타 기초',
    '2024-10-19 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '70eb34e6-c84c-468a-9ba6-e38196e2a7ab', 'naver', '3139504896', 'user_3139504896', '이름178',
    '닉네임178', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/7.jpg', True, 1,
    17, '178번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/178', True, '작곡 기초, 악보 읽기, 리듬 연습',
    '2024-11-20 02:27:21', '2025-02-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a51ac768-f024-42c6-b6d6-e95c4e722236', 'kakao', '9327127178', 'user_9327127178', '이름179',
    '닉네임179', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/44.jpg', True, 37,
    1, '179번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/179', True, '프로토타입, 디자인 시스템, 사용자 흐름',
    '2025-05-03 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fbf49f74-cde1-4404-8900-b9d3d14edb6d', 'naver', '6027927563', 'user_6027927563', '이름180',
    '닉네임180', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_301.jpg', True, 32,
    2, '180번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/180', False, '영작 연습, 기초 회화, 영어 문법',
    '2025-01-03 02:27:21', '2025-01-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5809374f-8430-415e-9f3a-dee68af3ee4a', 'kakao', '6542919634', 'user_6542919634', '이름181',
    '닉네임181', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/68.jpg', False, 2,
    2, '181번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/181', False, 'UI 설계, UX 리서치, Figma, 와이어프레임',
    '2024-09-18 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7b28e918-50eb-4f78-8845-80b8a359cd68', 'naver', '1475191555', 'user_1475191555', '이름182',
    '닉네임182', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/61.jpg', False, 7,
    5, '182번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/182', False, '작곡 기초, 리듬 연습, 악보 읽기',
    '2024-11-13 02:27:21', '2024-12-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '81c558ed-155f-47f7-afee-62bf61375dee', 'kakao', '8930509493', 'user_8930509493', '이름183',
    '닉네임183', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/24.jpg', False, 6,
    1, '183번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/183', True, '버튼 디자인, 디자인 시스템, 프로토타입',
    '2024-05-16 02:27:21', '2024-06-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b7e801cc-dc87-4993-8364-9fb395deefeb', 'naver', '2875508175', 'user_2875508175', '이름184',
    '닉네임184', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_403.jpg', False, 7,
    5, '184번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/184', False, '버튼 디자인, 디자인 시스템, 프로토타입',
    '2024-08-21 02:27:21', '2025-04-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5e0912d4-bf59-4947-8217-396d06788b4a', 'google', '1018739382', 'sub', '이름185',
    '닉네임185', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/70.jpg', False, 32,
    18, '185번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/185', False, '기본 코드, 리듬 맞추기, 기타 기초',
    '2024-08-10 02:27:21', '2025-03-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '124f8e02-d442-4f0c-bd11-afbc74f5fbae', 'kakao', '6628759104', 'user_6628759104', '이름186',
    '닉네임186', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_902.jpg', False, 6,
    11, '186번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/186', False, '영어 문법, 기초 회화, 어휘 학습',
    '2024-10-15 02:27:21', '2024-11-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '78c40508-8d7f-48fc-bd73-5ba4f8180e49', 'google', '7309951360', 'sub', '이름187',
    '닉네임187', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_942.jpg', False, 3,
    3, '187번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/187', True, '운동 루틴 계획, 체중 감량, 트레이닝 피드백, 근육 증대',
    '2024-06-11 02:27:21', '2024-09-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9453e6f1-e8e7-408d-8626-38eb08e0bcc0', 'naver', '3387337080', 'user_3387337080', '이름188',
    '닉네임188', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/59.jpg', True, 3,
    3, '188번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/188', True, 'Swift, Firebase, React Native',
    '2024-12-24 02:27:21', '2025-03-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a1df3eb4-f586-424b-aacb-c4d955799f74', 'kakao', '5246306070', 'user_5246306070', '이름189',
    '닉네임189', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/39.jpg', False, 1,
    12, '189번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/189', False, '버튼 디자인, 사용자 흐름, 프로토타입',
    '2024-11-07 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'af67ab79-69a2-4438-9a2e-45f974098f6c', 'google', '2518419991', 'sub', '이름190',
    '닉네임190', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/94.jpg', True, 38,
    22, '190번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/190', True, '선형대수학, 확률, 미적분',
    '2024-11-29 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd120e4d8-8c99-471b-b614-28a0b41798a3', 'naver', '4842680443', 'user_4842680443', '이름191',
    '닉네임191', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/8.jpg', False, 4,
    5, '191번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/191', False, '작곡 기초, 리듬 연습, 기타',
    '2024-12-14 02:27:21', '2025-02-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7a436058-6dcc-434f-8aba-2aa1e94b8ba6', 'naver', '9551149875', 'user_9551149875', '이름192',
    '닉네임192', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/44.jpg', True, 6,
    2, '192번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/192', True, 'CSS, HTML, React, JavaScript',
    '2025-01-05 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04a94dd3-877f-4268-9c70-7feefcd426fd', 'naver', '2733076328', 'user_2733076328', '이름193',
    '닉네임193', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_674.jpg', False, 33,
    2, '193번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/193', False, '포스터 디자인, 타이포그래피, 디지털 일러스트',
    '2025-04-08 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '70862ea3-8cea-4ac7-a7ae-0df3273a459a', 'naver', '7701354378', 'user_7701354378', '이름194',
    '닉네임194', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/54.jpg', True, 32,
    12, '194번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/194', True, '리듬 연습, 기타, 악보 읽기',
    '2024-09-19 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '82711d00-9de8-45ad-a35b-bcfbe6715dca', 'kakao', '9096622944', 'user_9096622944', '이름195',
    '닉네임195', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/20.jpg', True, 32,
    12, '195번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/195', True, '근육 증대, 체중 감량, 트레이닝 피드백, 운동 루틴 계획',
    '2024-07-29 02:27:21', '2025-01-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cc4f1f10-bfa0-4f35-9949-d05e1034dfcc', 'naver', '6498864415', 'user_6498864415', '이름196',
    '닉네임196', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_664.jpg', True, 39,
    4, '196번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/196', True, '아이콘 디자인, 디지털 일러스트, 타이포그래피, 포스터 디자인',
    '2024-12-15 02:27:21', '2025-02-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '759cbfad-5ab9-470b-aacf-6c7e8b5f8653', 'kakao', '5678138643', 'user_5678138643', '이름197',
    '닉네임197', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/70.jpg', True, 3,
    5, '197번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/197', True, '수학적 모델링, 미적분, 확률',
    '2024-11-27 02:27:21', '2024-12-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dd94a6b7-bc8e-4e30-b189-7a40fa5b7d56', 'google', '2475814508', 'sub', '이름198',
    '닉네임198', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/63.jpg', True, 5,
    2, '198번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/198', True, '리스닝 연습, 비즈니스 영어, TOEIC, 영어 회화',
    '2024-05-12 02:27:21', '2024-11-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3d0ebac7-2eab-49fc-b07d-7054b52d16de', 'google', '4318860204', 'sub', '이름199',
    '닉네임199', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/4.jpg', True, 35,
    6, '199번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/199', True, '작곡 기초, 기타, 리듬 연습, 악보 읽기',
    '2025-05-01 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8376ca6d-cede-4d3e-bed2-910abdb15796', 'kakao', '6002874550', 'user_6002874550', '이름200',
    '닉네임200', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/14.jpg', True, 7,
    1, '200번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/200', False, '체중 감량, 근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2025-01-23 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '77dda89f-829d-483c-8f4a-a4b4b968724b', 'kakao', '8156756056', 'user_8156756056', '이름201',
    '닉네임201', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/51.jpg', False, 35,
    21, '201번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/201', False, 'CSS, HTML, JavaScript',
    '2024-09-09 02:27:21', '2024-10-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ebf690cd-8455-424b-8e76-1f95c564213b', 'google', '2417521779', 'sub', '이름202',
    '닉네임202', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/44.jpg', True, 4,
    8, '202번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/202', False, '영어 문법, 어휘 학습, 영작 연습',
    '2025-02-21 02:27:21', '2025-03-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b713616b-8c69-4904-9d0b-a45975d3fb45', 'kakao', '4672847759', 'user_4672847759', '이름203',
    '닉네임203', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_372.jpg', True, 34,
    4, '203번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/203', True, '운동 루틴 계획, 체중 감량, 근육 증대, 트레이닝 피드백',
    '2025-04-21 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8f554982-658b-4966-9c5c-8d8ba691333d', 'kakao', '3701420479', 'user_3701420479', '이름204',
    '닉네임204', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/24.jpg', True, 2,
    2, '204번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/204', True, '기본 코드, 피아노 기초, 리듬 맞추기',
    '2024-06-01 02:27:21', '2024-07-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8f4a065c-fdd9-4394-952d-953bc73e092c', 'naver', '1771275834', 'user_1771275834', '이름205',
    '닉네임205', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/24.jpg', False, 31,
    21, '205번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/205', False, '확률, 선형대수학, 수학적 모델링',
    '2024-11-24 02:27:21', '2025-01-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '87b937a7-fcdf-4bef-ba96-2dd22bb8665e', 'google', '2544047157', 'sub', '이름206',
    '닉네임206', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/42.jpg', False, 4,
    6, '206번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/206', False, '사용자 흐름, 디자인 시스템, 프로토타입',
    '2024-12-09 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4ba6388e-2366-40ed-aa82-092e4cfa6ddc', 'google', '5304661501', 'sub', '이름207',
    '닉네임207', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/47.jpg', True, 33,
    12, '207번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/207', False, '영어 문법, 어휘 학습, 기초 회화',
    '2024-10-08 02:27:21', '2024-12-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6b6ae089-3e47-44bd-8659-b2b3de2eb578', 'kakao', '1311962698', 'user_1311962698', '이름208',
    '닉네임208', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/49.jpg', True, 34,
    15, '208번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/208', False, '기타 기초, 기본 코드, 피아노 기초, 리듬 맞추기',
    '2025-01-28 02:27:21', '2025-03-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9c0dbf71-4ad3-4786-a9e3-219de0cd1bd7', 'naver', '3372296238', 'user_3372296238', '이름209',
    '닉네임209', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_551.jpg', True, 31,
    4, '209번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/209', True, '영작 연습, 기초 회화, 영어 문법',
    '2024-06-06 02:27:21', '2024-06-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b11548c0-8117-46b1-843b-6636b8c5dd24', 'google', '8379152884', 'sub', '이름210',
    '닉네임210', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_520.jpg', False, 32,
    2, '210번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/210', True, '포스터 디자인, 디지털 일러스트, 아이콘 디자인',
    '2024-11-15 02:27:21', '2025-01-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b588a313-da57-49d4-a02d-5fb3742fe9cd', 'google', '6158205717', 'sub', '이름211',
    '닉네임211', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', False, 31,
    14, '211번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/211', True, '선형대수학, 미적분, 확률, 수학적 모델링',
    '2025-03-04 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4c202b7e-91f8-4ced-9d73-dfa1bd6c4a1f', 'google', '5675681419', 'sub', '이름212',
    '닉네임212', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/99.jpg', False, 36,
    4, '212번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/212', True, '기초 운동법, 근육 만들기, 운동 기록, 체중 감량 운동',
    '2025-01-09 02:27:21', '2025-02-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e402fb73-55e6-4e08-89fd-1ec892376e79', 'naver', '5738047850', 'user_5738047850', '이름213',
    '닉네임213', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_712.jpg', True, 7,
    1, '213번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/213', False, '근육 증대, 체중 감량, 운동 루틴 계획',
    '2024-10-09 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3b04f633-3068-4ef2-ab5d-b16db04ce2ed', 'naver', '3190633199', 'user_3190633199', '이름214',
    '닉네임214', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/93.jpg', False, 34,
    1, '214번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/214', False, '악보 읽기, 기타, 리듬 연습',
    '2024-07-16 02:27:21', '2024-09-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fc3b7e35-cd51-421b-bede-83eff8da4d12', 'google', '1653969807', 'sub', '이름215',
    '닉네임215', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/80.jpg', False, 3,
    3, '215번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/215', False, '영어 회화, TOEIC, 리스닝 연습',
    '2024-11-14 02:27:21', '2024-12-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5c6b237c-dd50-467c-a3e6-0e79b87a43a9', 'google', '4329616551', 'sub', '이름216',
    '닉네임216', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/61.jpg', True, 33,
    12, '216번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/216', False, '버튼 디자인, 프로토타입, 디자인 시스템',
    '2024-07-18 02:27:21', '2024-08-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '05e91231-6bbb-428c-abf6-f0680fa825bd', 'naver', '2163475409', 'user_2163475409', '이름217',
    '닉네임217', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/50.jpg', True, 32,
    13, '217번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/217', False, '확률, 미적분, 수학적 모델링',
    '2024-09-27 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '607f8cd1-406a-4652-9748-90bc6a89ff69', 'kakao', '8596409641', 'user_8596409641', '이름218',
    '닉네임218', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_335.jpg', False, 37,
    4, '218번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/218', True, '기타 기초, 기본 코드, 피아노 기초',
    '2025-02-05 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '74d8bdea-ba47-41a6-a606-a010f0eae254', 'naver', '4308873942', 'user_4308873942', '이름219',
    '닉네임219', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/15.jpg', False, 2,
    10, '219번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/219', False, '기초 회화, 영작 연습, 어휘 학습',
    '2024-11-20 02:27:21', '2025-01-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9e4f8e35-f19b-4d9a-ae21-9ded63153842', 'kakao', '3641439184', 'user_3641439184', '이름220',
    '닉네임220', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/59.jpg', False, 35,
    9, '220번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/220', True, 'UI 설계, UX 리서치, 와이어프레임, Figma',
    '2024-08-01 02:27:21', '2025-01-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'acebee9f-f31e-4fe9-a684-e46638bf400c', 'kakao', '6166952438', 'user_6166952438', '이름221',
    '닉네임221', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/77.jpg', False, 3,
    4, '221번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/221', True, '디지털 일러스트, 아이콘 디자인, 포스터 디자인',
    '2024-12-20 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd294d86c-7064-4b35-a86d-51e37fe060e5', 'kakao', '2795743895', 'user_2795743895', '이름222',
    '닉네임222', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/2.jpg', False, 7,
    3, '222번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/222', False, '영어 회화, TOEIC, 비즈니스 영어',
    '2025-02-03 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ab42a086-7d1f-430f-8f3a-227d0f485659', 'kakao', '6383634816', 'user_6383634816', '이름223',
    '닉네임223', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/49.jpg', True, 38,
    1, '223번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/223', True, '미적분, 수학적 모델링, 선형대수학, 확률',
    '2024-09-17 02:27:21', '2025-02-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e4dd0646-1247-44ab-b690-eff721a26d12', 'naver', '5502596638', 'user_5502596638', '이름224',
    '닉네임224', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/48.jpg', False, 6,
    3, '224번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/224', True, '아이콘 디자인, 타이포그래피, 디지털 일러스트, 포스터 디자인',
    '2025-02-10 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9ecc4b8c-5059-4ddf-91a9-f45913d02c08', 'naver', '5053554633', 'user_5053554633', '이름225',
    '닉네임225', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/34.jpg', False, 1,
    23, '225번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/225', True, '선형대수학, 확률, 수학적 모델링',
    '2024-10-14 02:27:21', '2025-01-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9fa12d33-c987-4675-b49c-7989609efaa8', 'google', '7705225033', 'sub', '이름226',
    '닉네임226', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_842.jpg', False, 8,
    1, '226번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/226', False, 'Firebase, React Native, Swift, Kotlin',
    '2025-03-26 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b66f2b63-c401-4030-8ecd-1c8a269b453d', 'naver', '6104047074', 'user_6104047074', '이름227',
    '닉네임227', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_575.jpg', True, 2,
    1, '227번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/227', False, 'Photoshop, 브랜딩, Illustrator',
    '2025-02-03 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '58da3ebd-cd98-4e34-b29f-326bc050e68b', 'naver', '2049547948', 'user_2049547948', '이름228',
    '닉네임228', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/53.jpg', True, 32,
    17, '228번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/228', False, '기초 회화, 영작 연습, 영어 문법, 어휘 학습',
    '2024-05-14 02:27:21', '2024-11-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd2e4ab82-9cd7-45df-9a17-1d25fec7c9a6', 'google', '6056318648', 'sub', '이름229',
    '닉네임229', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/31.jpg', False, 32,
    10, '229번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/229', True, '프로토타입, 디자인 시스템, 사용자 흐름, 버튼 디자인',
    '2024-12-17 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5fa5269e-f937-48c9-95af-7c516eb998b7', 'naver', '8397695076', 'user_8397695076', '이름230',
    '닉네임230', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/68.jpg', True, 31,
    15, '230번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/230', False, '리듬 맞추기, 기본 코드, 피아노 기초',
    '2024-09-30 02:27:21', '2025-02-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c31dba21-4357-4436-9953-44207351bc6b', 'kakao', '6750239317', 'user_6750239317', '이름231',
    '닉네임231', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_449.jpg', False, 34,
    4, '231번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/231', False, '비즈니스 영어, 리스닝 연습, TOEIC, 영어 회화',
    '2025-04-01 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c7247c27-fe1a-47a8-8fd7-c52241fb38a0', 'google', '6467127452', 'sub', '이름232',
    '닉네임232', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/19.jpg', False, 32,
    13, '232번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/232', False, '리스닝 연습, 영어 회화, TOEIC, 비즈니스 영어',
    '2025-04-02 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b5ee17cd-1c6e-4518-935e-11f2e9d08775', 'kakao', '1451226025', 'user_1451226025', '이름233',
    '닉네임233', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_991.jpg', False, 2,
    5, '233번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/233', True, '기초 운동법, 근육 만들기, 체중 감량 운동, 운동 기록',
    '2024-05-15 02:27:21', '2024-08-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '14649335-0167-46f1-a9d7-324c4e476189', 'google', '1171343232', 'sub', '이름234',
    '닉네임234', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/84.jpg', True, 35,
    19, '234번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/234', True, 'Kotlin, Swift, Firebase',
    '2025-04-25 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1ab0481e-1f87-465c-b695-d30c7e8370f5', 'google', '3794149481', 'sub', '이름235',
    '닉네임235', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/12.jpg', True, 38,
    19, '235번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/235', True, '확률, 선형대수학, 미적분, 수학적 모델링',
    '2024-07-24 02:27:21', '2025-02-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cb693991-973e-4702-8a5c-8adf4fb16ff6', 'kakao', '4724038909', 'user_4724038909', '이름236',
    '닉네임236', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/85.jpg', True, 31,
    29, '236번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/236', True, '작곡 기초, 기타, 리듬 연습',
    '2024-08-30 02:27:21', '2024-11-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'de956cdb-7303-4328-818b-b96739aa5d47', 'naver', '4786773127', 'user_4786773127', '이름237',
    '닉네임237', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/65.jpg', True, 3,
    5, '237번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/237', True, 'React Native, Kotlin, Firebase, Swift',
    '2025-05-05 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '730c956e-6a13-4e06-8a45-a1f9b184bbb2', 'naver', '7989039689', 'user_7989039689', '이름238',
    '닉네임238', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_159.jpg', True, 31,
    1, '238번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/238', True, '근육 만들기, 기초 운동법, 체중 감량 운동',
    '2024-06-30 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4473cc88-2111-4c68-9d00-2317db4ed934', 'naver', '3882497584', 'user_3882497584', '이름239',
    '닉네임239', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/93.jpg', True, 33,
    5, '239번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/239', False, '시각 디자인, Photoshop, Illustrator, 브랜딩',
    '2025-04-28 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1e3b8434-7b85-4fb2-82f6-3063430a585c', 'google', '8043523840', 'sub', '이름240',
    '닉네임240', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/31.jpg', False, 33,
    8, '240번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/240', False, '악보 읽기, 리듬 연습, 기타',
    '2024-07-16 02:27:21', '2025-01-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6d096bd2-920f-4805-80ba-3a75d858552b', 'naver', '3875610564', 'user_3875610564', '이름241',
    '닉네임241', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/39.jpg', True, 38,
    22, '241번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/241', True, '프로토타입, 버튼 디자인, 사용자 흐름',
    '2025-03-27 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7223161e-4484-4916-b06c-ea43afc0ea19', 'google', '6248974763', 'sub', '이름242',
    '닉네임242', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/16.jpg', False, 8,
    1, '242번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/242', False, '비즈니스 영어, 리스닝 연습, 영어 회화, TOEIC',
    '2024-12-28 02:27:21', '2024-12-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bd06bc01-fa87-4e5a-b6f1-2ff8e982d354', 'kakao', '5524315073', 'user_5524315073', '이름243',
    '닉네임243', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_257.jpg', True, 36,
    19, '243번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/243', False, '어휘 학습, 영어 문법, 기초 회화, 영작 연습',
    '2025-04-15 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1aa02d89-cb53-4c38-926e-d427cafbcb1f', 'kakao', '1856094154', 'user_1856094154', '이름244',
    '닉네임244', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/98.jpg', False, 36,
    8, '244번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/244', False, '어휘 학습, 기초 회화, 영어 문법, 영작 연습',
    '2024-10-18 02:27:21', '2024-11-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '82df1faf-2794-4cb8-8fff-28e720b40a26', 'naver', '2575345038', 'user_2575345038', '이름245',
    '닉네임245', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/73.jpg', True, 31,
    3, '245번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/245', True, '수학적 모델링, 확률, 미적분, 선형대수학',
    '2024-09-21 02:27:21', '2024-11-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '69f6fee3-0866-4507-8816-bc6bc32d7cc7', 'naver', '3767886696', 'user_3767886696', '이름246',
    '닉네임246', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/91.jpg', False, 37,
    7, '246번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/246', False, '미적분, 확률, 수학적 모델링',
    '2025-04-09 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26d166db-91a4-433f-b5e4-19513b2e1cae', 'google', '7417983752', 'sub', '이름247',
    '닉네임247', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/84.jpg', True, 32,
    14, '247번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/247', False, '작곡 기초, 기타, 악보 읽기',
    '2025-02-14 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '22712279-6e4d-424d-b259-88f985fb6fa7', 'google', '1276393455', 'sub', '이름248',
    '닉네임248', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_884.jpg', False, 1,
    10, '248번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/248', False, '기초 회화, 어휘 학습, 영작 연습',
    '2025-04-05 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aaf064e4-80d6-4308-b55b-9b7360def364', 'kakao', '7094576738', 'user_7094576738', '이름249',
    '닉네임249', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_716.jpg', False, 7,
    1, '249번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/249', False, '선형대수학, 수학적 모델링, 확률, 미적분',
    '2025-05-01 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd4840c96-f72c-45f7-8feb-62de89e89390', 'naver', '6781626486', 'user_6781626486', '이름250',
    '닉네임250', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/42.jpg', False, 4,
    6, '250번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/250', True, '영작 연습, 어휘 학습, 영어 문법',
    '2025-02-06 02:27:21', '2025-03-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '17a9d5d0-22e7-424a-9181-9d251c3243b4', 'naver', '6663097493', 'user_6663097493', '이름251',
    '닉네임251', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_631.jpg', True, 32,
    16, '251번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/251', True, 'UI 설계, UX 리서치, 와이어프레임, Figma',
    '2025-03-31 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e205c75e-93eb-4a53-a690-519858ad5ef2', 'google', '5486323590', 'sub', '이름252',
    '닉네임252', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_580.jpg', True, 39,
    2, '252번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/252', False, '리듬 연습, 기타, 작곡 기초, 악보 읽기',
    '2024-09-09 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bc623c75-467d-4a60-81b6-f724d8fb414b', 'naver', '1281469235', 'user_1281469235', '이름253',
    '닉네임253', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/65.jpg', False, 4,
    5, '253번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/253', True, '기본 코드, 리듬 맞추기, 피아노 기초',
    '2024-09-13 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '06511882-b159-4da8-81a3-a452faea0969', 'kakao', '4926187393', 'user_4926187393', '이름254',
    '닉네임254', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/48.jpg', True, 2,
    4, '254번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/254', True, '기초 회화, 어휘 학습, 영어 문법',
    '2024-08-26 02:27:21', '2024-11-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '22f13089-4980-4a85-8363-0ca5eca3b571', 'naver', '3784227544', 'user_3784227544', '이름255',
    '닉네임255', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/71.jpg', True, 2,
    2, '255번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/255', False, '선형대수학, 확률, 미적분, 수학적 모델링',
    '2024-11-23 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3d41892e-a569-4a5e-b7c0-e75fafc7fa85', 'kakao', '6620212451', 'user_6620212451', '이름256',
    '닉네임256', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/29.jpg', True, 3,
    1, '256번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/256', True, '선형대수학, 수학적 모델링, 미적분, 확률',
    '2025-04-08 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6427bc1c-4ce8-4bb4-a0dd-836094433789', 'kakao', '7706528472', 'user_7706528472', '이름257',
    '닉네임257', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/32.jpg', False, 37,
    1, '257번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/257', False, 'UI 디자인, Android Studio, Flutter, iOS 앱 개발',
    '2024-06-05 02:27:21', '2024-07-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4faf367d-97ba-427b-9eca-0f25783555e6', 'kakao', '8348162339', 'user_8348162339', '이름258',
    '닉네임258', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/98.jpg', True, 39,
    1, '258번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/258', True, '수학기초, 중등수학, 수학문제 풀이',
    '2024-10-23 02:27:21', '2024-11-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4ecf80d9-ded4-4e32-b049-4b910039ea9f', 'kakao', '6214016131', 'user_6214016131', '이름259',
    '닉네임259', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_995.jpg', False, 34,
    6, '259번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/259', False, 'HTML, JavaScript, CSS',
    '2024-12-26 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0ba94750-d639-4cfe-898e-336f45bb5d5d', 'kakao', '1809733106', 'user_1809733106', '이름260',
    '닉네임260', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/77.jpg', True, 32,
    6, '260번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/260', False, '체중 감량, 운동 루틴 계획, 근육 증대',
    '2025-03-30 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd4339b01-978e-4124-9f14-8874f00c4bbb', 'google', '6375294645', 'sub', '이름261',
    '닉네임261', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/54.jpg', False, 37,
    11, '261번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/261', True, 'iOS 앱 개발, Flutter, Android Studio, UI 디자인',
    '2024-10-31 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4d5dfc46-424a-48c4-b1d9-5b3b3dd423f8', 'google', '9907873140', 'sub', '이름262',
    '닉네임262', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/92.jpg', True, 4,
    1, '262번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/262', False, 'UX 리서치, UI 설계, 와이어프레임',
    '2025-02-11 02:27:21', '2025-02-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '501575ca-49d3-4770-95c7-45c5fbe064fa', 'kakao', '3890962383', 'user_3890962383', '이름263',
    '닉네임263', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_861.jpg', True, 36,
    9, '263번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/263', True, '시각 디자인, Illustrator, Photoshop',
    '2025-04-18 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e0829b70-1e38-4284-9c67-961223dc3206', 'naver', '4486291901', 'user_4486291901', '이름264',
    '닉네임264', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/54.jpg', False, 5,
    5, '264번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/264', True, 'JPA, Spring Boot, Spring',
    '2024-10-26 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd2f082ba-fad5-4bfe-b712-208b0610bab2', 'google', '3146560159', 'sub', '이름265',
    '닉네임265', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/39.jpg', True, 38,
    24, '265번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/265', True, 'Spring, Spring Boot, JPA',
    '2024-08-12 02:27:21', '2024-11-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e68d87ae-a682-45e6-b43a-72e07ef69039', 'naver', '1061000773', 'user_1061000773', '이름266',
    '닉네임266', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/2.jpg', False, 37,
    14, '266번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/266', True, '수학적 모델링, 선형대수학, 미적분, 확률',
    '2024-09-14 02:27:21', '2024-11-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1db36bb0-d86f-4421-ba33-aaa29992d7d7', 'google', '9543344768', 'sub', '이름267',
    '닉네임267', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/68.jpg', False, 6,
    15, '267번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/267', True, 'UX 리서치, UI 설계, Figma, 와이어프레임',
    '2024-07-21 02:27:21', '2024-09-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2c7e5c05-0bd1-411c-b0c8-82d497d0fc8f', 'kakao', '7199810519', 'user_7199810519', '이름268',
    '닉네임268', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_880.jpg', False, 34,
    1, '268번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/268', True, '디지털 일러스트, 아이콘 디자인, 포스터 디자인, 타이포그래피',
    '2025-05-09 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ea5e182f-85a4-471a-b94f-97755ced50d0', 'naver', '9123027012', 'user_9123027012', '이름269',
    '닉네임269', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/65.jpg', False, 34,
    5, '269번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/269', True, 'JPA, Spring, Spring Security',
    '2025-04-06 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '227c89a1-9eac-40ae-b86d-4c80d646d59c', 'kakao', '1762430559', 'user_1762430559', '이름270',
    '닉네임270', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_850.jpg', True, 34,
    11, '270번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/270', False, 'UI 설계, UX 리서치, 와이어프레임',
    '2024-09-04 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59afc68f-65f7-4193-aea4-7d1ff9577dd0', 'kakao', '2086719740', 'user_2086719740', '이름271',
    '닉네임271', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/14.jpg', False, 32,
    17, '271번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/271', True, '기초 회화, 영어 문법, 어휘 학습, 영작 연습',
    '2024-11-08 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ef924661-7ebc-4ae0-b7fc-1fa55741aecf', 'naver', '6598709208', 'user_6598709208', '이름272',
    '닉네임272', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/24.jpg', False, 32,
    4, '272번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/272', False, '와이어프레임, UX 리서치, UI 설계',
    '2024-10-29 02:27:21', '2024-12-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f9101896-e0a5-4812-a2cc-9a4d794cd3df', 'google', '6115935218', 'sub', '이름273',
    '닉네임273', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/20.jpg', False, 38,
    17, '273번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/273', True, '체중 감량 운동, 근육 만들기, 기초 운동법',
    '2024-10-20 02:27:21', '2025-02-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04681c22-3c11-41eb-87f2-c57d151ad248', 'google', '1165612166', 'sub', '이름274',
    '닉네임274', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/12.jpg', False, 37,
    9, '274번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/274', False, 'Flutter, iOS 앱 개발, Android Studio',
    '2024-08-27 02:27:21', '2024-12-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '122a3bed-5cad-400f-8c8b-e26bd2a592b9', 'naver', '6770654055', 'user_6770654055', '이름275',
    '닉네임275', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/71.jpg', False, 2,
    9, '275번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/275', True, 'Android Studio, UI 디자인, iOS 앱 개발, Flutter',
    '2024-05-20 02:27:21', '2025-03-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f5ec72f8-33f5-4b02-8dd6-7ac5e52cac9d', 'naver', '4515108478', 'user_4515108478', '이름276',
    '닉네임276', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_628.jpg', False, 1,
    23, '276번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/276', False, '리듬 맞추기, 기타 기초, 피아노 기초',
    '2024-12-03 02:27:21', '2025-03-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a63122a2-4d71-416d-b753-8c5a076f8e9c', 'naver', '4072817029', 'user_4072817029', '이름277',
    '닉네임277', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/89.jpg', False, 3,
    5, '277번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/277', True, '기본 공식, 수학문제 풀이, 중등수학',
    '2024-05-11 02:27:21', '2025-02-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0b15e9cb-e94e-4f00-9012-bda0ac9f791d', 'kakao', '8363923088', 'user_8363923088', '이름278',
    '닉네임278', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/69.jpg', False, 38,
    6, '278번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/278', False, 'Spring Security, JPA, Spring Boot, Spring',
    '2024-07-15 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd7280686-70e5-48b4-bc79-28d60ce92575', 'naver', '2117279287', 'user_2117279287', '이름279',
    '닉네임279', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/59.jpg', True, 33,
    9, '279번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/279', True, '기타, 리듬 연습, 작곡 기초',
    '2025-03-14 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02e61d3c-4cd0-481b-9d8d-0e042f35891d', 'naver', '1728545298', 'user_1728545298', '이름280',
    '닉네임280', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/78.jpg', True, 4,
    1, '280번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/280', False, '영작 연습, 기초 회화, 어휘 학습, 영어 문법',
    '2024-07-15 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'caf837ce-a7f0-44d7-aa8d-34e5b60c3d5e', 'kakao', '9438787580', 'user_9438787580', '이름281',
    '닉네임281', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/83.jpg', False, 1,
    4, '281번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/281', True, '악보 읽기, 리듬 연습, 기타, 작곡 기초',
    '2024-09-09 02:27:21', '2024-12-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '10c6ed02-34fb-4106-bc25-cf518b7dc6d5', 'google', '8985963460', 'sub', '이름282',
    '닉네임282', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/15.jpg', False, 7,
    4, '282번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/282', False, 'UI 설계, Figma, UX 리서치',
    '2025-04-18 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ad4801fb-f88c-46c9-9018-5f40dbc2b461', 'google', '7666014618', 'sub', '이름283',
    '닉네임283', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/56.jpg', True, 7,
    3, '283번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/283', False, '체중 감량 운동, 운동 기록, 근육 만들기, 기초 운동법',
    '2024-10-16 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5e97761e-9983-41ac-b6e5-809da5ebb01b', 'google', '3922214751', 'sub', '이름284',
    '닉네임284', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/10.jpg', False, 6,
    10, '284번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/284', False, '아이콘 디자인, 타이포그래피, 포스터 디자인, 디지털 일러스트',
    '2024-11-22 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '612d4ba5-fdd8-4e81-9800-9850dd5c630f', 'google', '7163188962', 'sub', '이름285',
    '닉네임285', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_850.jpg', False, 4,
    2, '285번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/285', False, '비즈니스 영어, 영어 회화, 리스닝 연습, TOEIC',
    '2025-04-09 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cb2c60ed-e454-49f4-92f3-d88e0f319a3c', 'naver', '5843931464', 'user_5843931464', '이름286',
    '닉네임286', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/31.jpg', False, 4,
    4, '286번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/286', False, '기초 운동법, 운동 기록, 근육 만들기',
    '2024-06-21 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c39b1bc7-ad7b-45f7-9e96-4e3599553aef', 'google', '6863463982', 'sub', '이름287',
    '닉네임287', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/31.jpg', True, 33,
    12, '287번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/287', True, '확률, 선형대수학, 수학적 모델링, 미적분',
    '2024-08-09 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '31217db0-d064-45c0-a15f-2500b8bae29f', 'kakao', '9091202443', 'user_9091202443', '이름288',
    '닉네임288', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/54.jpg', True, 3,
    3, '288번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/288', False, '기초 회화, 영작 연습, 어휘 학습, 영어 문법',
    '2024-12-13 02:27:21', '2025-01-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5bcefd66-3e06-4289-9eb7-c03bfa620e6f', 'google', '8043342113', 'sub', '이름289',
    '닉네임289', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/34.jpg', True, 38,
    2, '289번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/289', False, 'Spring Boot, JPA, Spring',
    '2024-07-25 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b64305ed-0443-4229-82c7-e90958d16196', 'google', '1984881701', 'sub', '이름290',
    '닉네임290', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/97.jpg', False, 3,
    5, '290번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/290', False, 'CSS, React, HTML, JavaScript',
    '2024-12-24 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b65f2bf8-3813-4da0-89f2-11280b8050a7', 'kakao', '1041970197', 'user_1041970197', '이름291',
    '닉네임291', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/51.jpg', False, 36,
    8, '291번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/291', False, '사용자 흐름, 프로토타입, 디자인 시스템, 버튼 디자인',
    '2024-10-23 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6528fcea-0202-4a33-86c0-bd90b9206595', 'kakao', '8037855400', 'user_8037855400', '이름292',
    '닉네임292', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_352.jpg', True, 33,
    4, '292번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/292', True, 'Kotlin, Swift, Firebase, React Native',
    '2025-03-16 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '849655f4-e39c-41b4-a56a-8b27f084a6b8', 'google', '8070363736', 'sub', '이름293',
    '닉네임293', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_841.jpg', True, 8,
    1, '293번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/293', False, '선형대수학, 수학적 모델링, 확률',
    '2025-03-02 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e16fb97c-5ccc-4fc9-a533-af3ff4d7dc90', 'naver', '7114964981', 'user_7114964981', '이름294',
    '닉네임294', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/81.jpg', True, 31,
    13, '294번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/294', True, 'iOS 앱 개발, UI 디자인, Android Studio, Flutter',
    '2025-05-02 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '35a12761-b84f-418a-b849-b0965b23c62f', 'google', '6191782417', 'sub', '이름295',
    '닉네임295', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/36.jpg', True, 36,
    9, '295번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/295', True, '작곡 기초, 리듬 연습, 기타, 악보 읽기',
    '2025-01-09 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c2b9f5b7-5d12-4295-8326-3496a137ea3b', 'naver', '8344724648', 'user_8344724648', '이름296',
    '닉네임296', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_188.jpg', True, 6,
    2, '296번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/296', False, 'HTML, React, JavaScript',
    '2025-02-20 02:27:21', '2025-03-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '25c66e12-e61c-4aed-8b30-a8264c31032b', 'naver', '2813945639', 'user_2813945639', '이름297',
    '닉네임297', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_662.jpg', False, 8,
    1, '297번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/297', False, 'HTML, CSS, React, JavaScript',
    '2024-08-08 02:27:21', '2024-11-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2e3e5fc8-646c-4e19-8b22-11bd12ca306e', 'naver', '4457227326', 'user_4457227326', '이름298',
    '닉네임298', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_678.jpg', False, 37,
    6, '298번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/298', False, '기본 코드, 피아노 기초, 기타 기초, 리듬 맞추기',
    '2024-08-06 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '118e35d1-75fe-41ac-95b1-ba898832f671', 'google', '1677597752', 'sub', '이름299',
    '닉네임299', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/2.jpg', False, 3,
    1, '299번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/299', True, 'React Native, Kotlin, Swift, Firebase',
    '2024-06-22 02:27:21', '2024-09-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04e7a3ac-807f-4d32-b8d8-0fc301a45ea7', 'kakao', '1864383177', 'user_1864383177', '이름300',
    '닉네임300', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/80.jpg', True, 32,
    18, '300번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/300', False, '프로토타입, 디자인 시스템, 버튼 디자인',
    '2024-11-19 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7dc5bf3a-4a13-4d28-a7ca-dfa4db1ce527', 'naver', '6157511928', 'user_6157511928', '이름301',
    '닉네임301', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_956.jpg', False, 2,
    1, '301번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/301', True, 'Firebase, Swift, Kotlin, React Native',
    '2024-11-21 02:27:21', '2025-02-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7026301f-fb53-40f7-9efe-cef851136543', 'naver', '8433156735', 'user_8433156735', '이름302',
    '닉네임302', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/1.jpg', False, 39,
    3, '302번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/302', True, 'iOS 앱 개발, Flutter, Android Studio, UI 디자인',
    '2025-03-06 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '00bfb08b-aad1-4aa0-91aa-a1d3b68187ca', 'google', '9673559507', 'sub', '이름303',
    '닉네임303', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_191.jpg', False, 1,
    5, '303번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/303', False, '수학문제 풀이, 수학기초, 기본 공식',
    '2025-04-23 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e25484bc-781e-4da6-a79d-a77de52fb7f3', 'kakao', '2420861598', 'user_2420861598', '이름304',
    '닉네임304', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_724.jpg', False, 2,
    4, '304번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/304', False, 'Illustrator, Photoshop, 브랜딩, 시각 디자인',
    '2025-03-01 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '436950b9-a1d2-47fb-a245-79559a9b7f6c', 'kakao', '7176955909', 'user_7176955909', '이름305',
    '닉네임305', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_664.jpg', True, 6,
    7, '305번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/305', True, 'UI 설계, UX 리서치, 와이어프레임, Figma',
    '2024-07-22 02:27:21', '2025-03-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e49a8c0f-817a-4fde-807c-b523ae1466f4', 'kakao', '6777805484', 'user_6777805484', '이름306',
    '닉네임306', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/35.jpg', True, 1,
    7, '306번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/306', False, 'Illustrator, 브랜딩, 시각 디자인, Photoshop',
    '2024-08-02 02:27:21', '2024-08-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '492224d0-5d57-484e-97a4-c7ca5d3c6829', 'kakao', '6772666847', 'user_6772666847', '이름307',
    '닉네임307', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/8.jpg', True, 2,
    2, '307번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/307', True, '피아노 기초, 기타 기초, 리듬 맞추기, 기본 코드',
    '2024-09-20 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '460d3cca-7a35-4308-a7c6-83aaae6cf680', 'google', '8076410105', 'sub', '이름308',
    '닉네임308', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/82.jpg', False, 32,
    2, '308번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/308', True, 'TOEIC, 비즈니스 영어, 리스닝 연습, 영어 회화',
    '2024-10-24 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6b8ee06e-2861-4d55-a0a0-82b687ebd8e3', 'kakao', '6177659441', 'user_6177659441', '이름309',
    '닉네임309', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/23.jpg', True, 35,
    6, '309번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/309', True, 'HTML, CSS, React',
    '2024-12-27 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59d36a7e-8fef-459b-acfb-974d1bd1615f', 'naver', '5239776437', 'user_5239776437', '이름310',
    '닉네임310', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/1.jpg', True, 3,
    5, '310번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/310', True, '수학기초, 수학문제 풀이, 기본 공식',
    '2025-02-25 02:27:21', '2025-03-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02ae206c-48d6-40d8-b7a4-d7b72805b447', 'google', '3013157681', 'sub', '이름311',
    '닉네임311', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/2.jpg', False, 6,
    4, '311번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/311', False, '확률, 미적분, 선형대수학',
    '2025-01-15 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fd34be85-0cac-4da5-823e-8621ceedcd95', 'kakao', '8791668994', 'user_8791668994', '이름312',
    '닉네임312', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/79.jpg', False, 7,
    5, '312번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/312', True, 'TOEIC, 리스닝 연습, 비즈니스 영어, 영어 회화',
    '2025-04-11 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7a5e43d3-d03c-40e2-b9e6-280b5b6f6bc5', 'naver', '9628878576', 'user_9628878576', '이름313',
    '닉네임313', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/19.jpg', True, 2,
    9, '313번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/313', True, 'UI 설계, UX 리서치, 와이어프레임, Figma',
    '2025-04-14 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f7a41c64-152e-4cf1-b92f-f673d7aae8eb', 'google', '1837613240', 'sub', '이름314',
    '닉네임314', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_808.jpg', False, 3,
    2, '314번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/314', True, '디자인 시스템, 프로토타입, 버튼 디자인, 사용자 흐름',
    '2025-01-27 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6c890d3a-974b-435f-ad11-62bb0caa9a96', 'google', '3339100855', 'sub', '이름315',
    '닉네임315', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_657.jpg', False, 2,
    4, '315번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/315', False, '시각 디자인, Photoshop, Illustrator, 브랜딩',
    '2025-03-29 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c3358abc-bfd7-42eb-907c-cb0609e87644', 'naver', '4223623484', 'user_4223623484', '이름316',
    '닉네임316', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/49.jpg', True, 37,
    5, '316번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/316', True, '작곡 기초, 리듬 연습, 기타',
    '2025-01-04 02:27:21', '2025-01-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '013ce3c7-f982-40f5-8358-0a7880510926', 'kakao', '7099266471', 'user_7099266471', '이름317',
    '닉네임317', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/81.jpg', True, 7,
    5, '317번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/317', False, '기초 회화, 영작 연습, 어휘 학습, 영어 문법',
    '2024-09-20 02:27:21', '2024-12-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '17a8bfc0-2ca4-42d2-8ad2-06c80d268f5f', 'naver', '8786538016', 'user_8786538016', '이름318',
    '닉네임318', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/86.jpg', True, 3,
    2, '318번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/318', True, 'Kotlin, React Native, Firebase, Swift',
    '2024-12-29 02:27:21', '2025-02-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '97b88ac8-3862-4ec7-ab6c-5eef6738b4bf', 'google', '2316455641', 'sub', '이름319',
    '닉네임319', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/55.jpg', False, 5,
    2, '319번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/319', True, '사용자 흐름, 버튼 디자인, 프로토타입',
    '2024-09-29 02:27:21', '2024-11-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f0e96ad4-21a8-47d5-9064-170021100971', 'google', '5872983432', 'sub', '이름320',
    '닉네임320', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/70.jpg', True, 39,
    4, '320번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/320', False, 'Illustrator, 시각 디자인, Photoshop',
    '2024-09-17 02:27:21', '2025-01-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1ff65daa-b9a9-4a75-b985-0f589e84c6f1', 'naver', '4114749601', 'user_4114749601', '이름321',
    '닉네임321', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/24.jpg', True, 35,
    16, '321번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/321', True, '비즈니스 영어, 리스닝 연습, TOEIC',
    '2024-12-25 02:27:21', '2025-01-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '760133ea-56c1-4138-be07-1a0837c75fb8', 'naver', '1872420904', 'user_1872420904', '이름322',
    '닉네임322', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/14.jpg', False, 31,
    29, '322번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/322', True, '운동 기록, 근육 만들기, 기초 운동법',
    '2025-03-04 02:27:21', '2025-03-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e911dcab-4758-4327-8111-ce8505e4d02c', 'kakao', '4320152254', 'user_4320152254', '이름323',
    '닉네임323', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/83.jpg', False, 7,
    3, '323번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/323', True, '브랜딩, Photoshop, Illustrator',
    '2025-02-14 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fbdf92ef-c0af-466e-b100-ca77bfd8bf1b', 'google', '2209074039', 'sub', '이름324',
    '닉네임324', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/38.jpg', False, 35,
    1, '324번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/324', True, '운동 루틴 계획, 트레이닝 피드백, 체중 감량, 근육 증대',
    '2024-09-16 02:27:21', '2024-10-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4ecd2669-1722-4365-b84a-2452b220f35d', 'kakao', '3796918722', 'user_3796918722', '이름325',
    '닉네임325', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_934.jpg', False, 31,
    24, '325번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/325', False, 'Spring Security, JPA, Spring, Spring Boot',
    '2024-11-18 02:27:21', '2024-12-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6f0189aa-6309-4346-a078-c0126c6a60c1', 'google', '8899043709', 'sub', '이름326',
    '닉네임326', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_725.jpg', False, 32,
    7, '326번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/326', True, 'UI 디자인, Android Studio, Flutter, iOS 앱 개발',
    '2025-04-18 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e8f912af-a0cc-41b0-af67-a8b9e9f0b034', 'google', '9010437244', 'sub', '이름327',
    '닉네임327', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_761.jpg', True, 31,
    21, '327번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/327', True, 'Android Studio, iOS 앱 개발, Flutter, UI 디자인',
    '2024-06-18 02:27:21', '2024-12-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '32dc5b97-7ffc-4218-8152-431642bbe049', 'naver', '9623998180', 'user_9623998180', '이름328',
    '닉네임328', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/98.jpg', False, 31,
    21, '328번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/328', False, 'HTML, React, JavaScript',
    '2024-10-30 02:27:21', '2025-02-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2a9ef687-917f-45b3-996f-9e1c5fc5237e', 'kakao', '4679854960', 'user_4679854960', '이름329',
    '닉네임329', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_327.jpg', True, 4,
    1, '329번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/329', True, '기초 회화, 영작 연습, 어휘 학습, 영어 문법',
    '2024-10-22 02:27:21', '2025-01-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c14b4552-d6a7-4a8e-9121-ac743e706335', 'kakao', '4394271087', 'user_4394271087', '이름330',
    '닉네임330', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/45.jpg', False, 35,
    17, '330번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/330', False, 'Kotlin, Firebase, React Native, Swift',
    '2025-03-27 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1d4d4fd1-d4db-46b0-a790-ad077a4de5ad', 'kakao', '5002437551', 'user_5002437551', '이름331',
    '닉네임331', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/54.jpg', True, 6,
    8, '331번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/331', False, 'HTML, React, CSS',
    '2024-07-15 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'eb5e4c76-b56e-422c-893b-656e69267e63', 'naver', '3590970005', 'user_3590970005', '이름332',
    '닉네임332', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_830.jpg', True, 1,
    9, '332번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/332', True, '기본 공식, 중등수학, 수학기초',
    '2025-03-26 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ca0d5a97-3244-48c0-8c98-e1449dd53a20', 'naver', '4476569957', 'user_4476569957', '이름333',
    '닉네임333', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_175.jpg', True, 1,
    18, '333번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/333', True, '프로토타입, 디자인 시스템, 버튼 디자인',
    '2025-04-27 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c439d7ec-aefb-403b-b619-41956d163268', 'kakao', '7648663400', 'user_7648663400', '이름334',
    '닉네임334', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_275.jpg', True, 6,
    5, '334번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/334', True, 'Photoshop, 시각 디자인, 브랜딩, Illustrator',
    '2024-06-22 02:27:21', '2024-10-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ffc35cae-2f66-498b-9a03-b15a8f0a5932', 'google', '9824906690', 'sub', '이름335',
    '닉네임335', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/51.jpg', False, 2,
    4, '335번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/335', True, 'Illustrator, Photoshop, 브랜딩, 시각 디자인',
    '2024-09-22 02:27:21', '2024-11-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f5f7f3bc-0ccc-4788-a6e1-b92104f39327', 'google', '4736167803', 'sub', '이름336',
    '닉네임336', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_589.jpg', False, 7,
    2, '336번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/336', False, '사용자 흐름, 디자인 시스템, 프로토타입',
    '2024-12-03 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99273d41-235a-4f80-ae00-93337c90c7f5', 'kakao', '9077941326', 'user_9077941326', '이름337',
    '닉네임337', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/95.jpg', False, 32,
    15, '337번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/337', False, 'Swift, React Native, Kotlin',
    '2024-08-14 02:27:21', '2024-12-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c2379b43-b350-4731-bdbe-86ef94cd2548', 'kakao', '4579484416', 'user_4579484416', '이름338',
    '닉네임338', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/57.jpg', False, 6,
    6, '338번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/338', True, '수학문제 풀이, 수학기초, 기본 공식',
    '2024-10-15 02:27:21', '2025-02-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed1adbbe-1248-4db9-8d34-40ea51a32cdd', 'naver', '7256710682', 'user_7256710682', '이름339',
    '닉네임339', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/71.jpg', True, 37,
    10, '339번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/339', False, 'JavaScript, CSS, React, HTML',
    '2024-12-12 02:27:21', '2025-01-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ade5b3a9-d993-41ce-be75-d6311a50bc60', 'naver', '9661256041', 'user_9661256041', '이름340',
    '닉네임340', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/92.jpg', True, 7,
    5, '340번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/340', True, '악보 읽기, 리듬 연습, 작곡 기초',
    '2024-09-06 02:27:21', '2025-01-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b6e78a16-4e89-400c-b96b-1186b51d90ee', 'kakao', '6101257365', 'user_6101257365', '이름341',
    '닉네임341', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/84.jpg', True, 3,
    5, '341번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/341', True, 'Photoshop, 브랜딩, 시각 디자인',
    '2025-03-02 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd604874a-8086-4e94-9c84-5f5097a897ef', 'naver', '4358080747', 'user_4358080747', '이름342',
    '닉네임342', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/20.jpg', True, 32,
    4, '342번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/342', True, '리듬 연습, 작곡 기초, 악보 읽기',
    '2024-09-15 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'af75019a-38e1-48ba-965b-5ac7ed0192bc', 'kakao', '6300677112', 'user_6300677112', '이름343',
    '닉네임343', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/25.jpg', False, 2,
    6, '343번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/343', True, '운동 기록, 근육 만들기, 체중 감량 운동',
    '2024-09-01 02:27:21', '2024-09-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ddb3866b-1aa7-4423-8506-c164f75fc454', 'naver', '7957721741', 'user_7957721741', '이름344',
    '닉네임344', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/66.jpg', False, 5,
    4, '344번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/344', False, 'CSS, HTML, JavaScript',
    '2024-12-20 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '42320ffc-d630-46dd-ad8f-6870b9ceb4d3', 'kakao', '7476061462', 'user_7476061462', '이름345',
    '닉네임345', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/51.jpg', False, 37,
    3, '345번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/345', False, '기초 운동법, 근육 만들기, 체중 감량 운동',
    '2025-04-19 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3bc44126-11ad-43be-b04a-66d8c4dcc1a3', 'naver', '8446567162', 'user_8446567162', '이름346',
    '닉네임346', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/95.jpg', False, 31,
    23, '346번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/346', False, '버튼 디자인, 사용자 흐름, 프로토타입, 디자인 시스템',
    '2024-12-06 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '50ab0cb4-530d-46b3-954c-548be2bb5ad6', 'google', '6286033169', 'sub', '이름347',
    '닉네임347', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/62.jpg', True, 39,
    4, '347번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/347', True, '확률, 미적분, 수학적 모델링, 선형대수학',
    '2024-11-27 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ef9ec861-7b0e-44b5-9705-843053b864bb', 'kakao', '9449707373', 'user_9449707373', '이름348',
    '닉네임348', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/12.jpg', False, 3,
    5, '348번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/348', True, '트레이닝 피드백, 체중 감량, 운동 루틴 계획, 근육 증대',
    '2025-04-17 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1b4d8283-f3c3-4d44-a3d7-642113953ec0', 'naver', '8694926505', 'user_8694926505', '이름349',
    '닉네임349', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_861.jpg', True, 38,
    17, '349번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/349', False, '리듬 연습, 기타, 악보 읽기, 작곡 기초',
    '2024-07-19 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f64bada1-7d78-4a22-b52e-ed8982b1b6b9', 'kakao', '5188597914', 'user_5188597914', '이름350',
    '닉네임350', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/17.jpg', True, 5,
    5, '350번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/350', False, 'UI 설계, UX 리서치, Figma',
    '2024-06-22 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '25711ca8-de4f-4180-83ab-686498006a41', 'kakao', '6075850876', 'user_6075850876', '이름351',
    '닉네임351', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_585.jpg', True, 32,
    3, '351번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/351', True, '근육 증대, 체중 감량, 운동 루틴 계획, 트레이닝 피드백',
    '2024-07-14 02:27:21', '2024-08-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '47b02360-ca9e-47ba-a9b8-43de8344a52b', 'naver', '6730629527', 'user_6730629527', '이름352',
    '닉네임352', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/46.jpg', True, 3,
    5, '352번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/352', False, '아이콘 디자인, 디지털 일러스트, 포스터 디자인',
    '2025-01-04 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '30eda3ac-5ad2-4a5a-b3e4-ff25ab95b889', 'google', '9279540666', 'sub', '이름353',
    '닉네임353', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/9.jpg', True, 3,
    1, '353번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/353', True, '운동 기록, 기초 운동법, 근육 만들기',
    '2025-04-02 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7f85f539-5122-486e-a085-d2d46cc18f72', 'naver', '4147759122', 'user_4147759122', '이름354',
    '닉네임354', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_226.jpg', False, 31,
    3, '354번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/354', True, '선형대수학, 수학적 모델링, 미적분',
    '2024-12-12 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '35e3c303-1c65-4abd-80e8-6d57d25404da', 'kakao', '2737978297', 'user_2737978297', '이름355',
    '닉네임355', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/98.jpg', True, 33,
    11, '355번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/355', True, '디지털 일러스트, 아이콘 디자인, 타이포그래피',
    '2024-12-14 02:27:21', '2025-04-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9bdea98c-419a-412d-99f5-5d058120d86b', 'kakao', '1008201247', 'user_1008201247', '이름356',
    '닉네임356', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_749.jpg', False, 34,
    8, '356번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/356', False, '포스터 디자인, 타이포그래피, 아이콘 디자인',
    '2024-09-16 02:27:21', '2025-01-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ec0e34fb-2417-4310-a3f5-ce05d23c13c2', 'kakao', '2703440778', 'user_2703440778', '이름357',
    '닉네임357', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_456.jpg', True, 39,
    2, '357번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/357', False, 'Swift, Kotlin, React Native',
    '2024-12-05 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '27858d87-85b6-41e4-b1db-a7d71279ebb6', 'kakao', '4211849591', 'user_4211849591', '이름358',
    '닉네임358', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/49.jpg', False, 32,
    17, '358번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/358', False, 'CSS, JavaScript, HTML',
    '2025-02-24 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b5677f61-d5c9-46aa-80f8-28a04b02e743', 'kakao', '2739913130', 'user_2739913130', '이름359',
    '닉네임359', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/77.jpg', False, 1,
    19, '359번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/359', True, '선형대수학, 미적분, 수학적 모델링, 확률',
    '2025-04-17 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed6e2207-8c4e-4c83-b699-5a2ca3b41cf1', 'kakao', '6928094056', 'user_6928094056', '이름360',
    '닉네임360', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/30.jpg', False, 32,
    11, '360번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/360', True, '포스터 디자인, 타이포그래피, 디지털 일러스트, 아이콘 디자인',
    '2025-02-04 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'be5b8a42-22d0-46ca-9528-278e754a5d01', 'google', '6576082153', 'sub', '이름361',
    '닉네임361', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_154.jpg', True, 5,
    4, '361번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/361', False, '버튼 디자인, 디자인 시스템, 프로토타입',
    '2025-03-28 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '70ad1e77-089f-4e4f-babb-a7ff4cfef083', 'naver', '5217562456', 'user_5217562456', '이름362',
    '닉네임362', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/90.jpg', True, 5,
    2, '362번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/362', False, '중등수학, 수학기초, 기본 공식, 수학문제 풀이',
    '2024-08-26 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '835c067e-63c9-49ed-88ca-f3ad7df93e31', 'google', '4555878509', 'sub', '이름363',
    '닉네임363', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/29.jpg', False, 38,
    7, '363번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/363', False, '프로토타입, 사용자 흐름, 디자인 시스템, 버튼 디자인',
    '2025-03-02 02:27:21', '2025-03-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ea66ffc5-edd3-4dd9-a0d3-4859c239ee5b', 'kakao', '2574807958', 'user_2574807958', '이름364',
    '닉네임364', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_571.jpg', False, 5,
    3, '364번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/364', False, '비즈니스 영어, 리스닝 연습, TOEIC',
    '2024-09-13 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '371d620d-6e7e-4245-baa6-59cef20772e5', 'google', '5609207771', 'sub', '이름365',
    '닉네임365', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/43.jpg', False, 8,
    1, '365번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/365', False, '기본 공식, 수학기초, 중등수학, 수학문제 풀이',
    '2025-03-28 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5913ffa2-0690-4241-ad03-4de53c73660b', 'kakao', '5691325493', 'user_5691325493', '이름366',
    '닉네임366', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_119.jpg', False, 5,
    2, '366번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/366', False, '기타, 악보 읽기, 리듬 연습',
    '2024-09-14 02:27:21', '2025-03-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fdc7a25c-e218-43c7-9adc-9a9fc366d94a', 'naver', '2137791477', 'user_2137791477', '이름367',
    '닉네임367', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_287.jpg', True, 31,
    6, '367번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/367', False, 'Illustrator, 시각 디자인, 브랜딩, Photoshop',
    '2024-06-18 02:27:21', '2024-12-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c10a5abc-62ac-4f17-a1f9-e5ad64359f31', 'kakao', '6526078701', 'user_6526078701', '이름368',
    '닉네임368', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/25.jpg', False, 34,
    3, '368번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/368', False, '시각 디자인, Photoshop, 브랜딩, Illustrator',
    '2025-02-17 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1f740a21-d6ed-4403-a5b9-6c3beb43628c', 'google', '4415314897', 'sub', '이름369',
    '닉네임369', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/56.jpg', True, 34,
    12, '369번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/369', True, '기본 코드, 피아노 기초, 리듬 맞추기, 기타 기초',
    '2024-07-02 02:27:21', '2024-07-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '183e6c7e-a3a9-4a7e-a77a-e3accace1156', 'naver', '8937652721', 'user_8937652721', '이름370',
    '닉네임370', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_120.jpg', False, 36,
    15, '370번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/370', False, 'Photoshop, 시각 디자인, Illustrator',
    '2025-01-16 02:27:21', '2025-03-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5bd6cfcb-01dd-459c-8ab7-26a9119724a3', 'kakao', '2553639977', 'user_2553639977', '이름371',
    '닉네임371', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/89.jpg', True, 34,
    11, '371번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/371', True, '타이포그래피, 디지털 일러스트, 아이콘 디자인',
    '2024-09-09 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '072deae4-7d9d-42e1-808e-45be7621c26d', 'kakao', '6719256461', 'user_6719256461', '이름372',
    '닉네임372', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/93.jpg', False, 31,
    26, '372번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/372', False, '타이포그래피, 아이콘 디자인, 디지털 일러스트',
    '2024-09-14 02:27:21', '2024-12-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f9bfda80-2c22-4a8f-93c4-073136829603', 'naver', '3655309969', 'user_3655309969', '이름373',
    '닉네임373', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/98.jpg', False, 1,
    6, '373번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/373', True, 'Spring, JPA, Spring Boot',
    '2025-04-08 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '202611e0-0d97-4f5f-aa31-e02ec511e427', 'naver', '9169371433', 'user_9169371433', '이름374',
    '닉네임374', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/89.jpg', False, 39,
    3, '374번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/374', True, 'UI 설계, 와이어프레임, UX 리서치',
    '2024-10-27 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5c0ef564-7adf-4896-8193-cac538686220', 'naver', '4517067510', 'user_4517067510', '이름375',
    '닉네임375', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_602.jpg', True, 3,
    5, '375번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/375', False, 'Photoshop, 브랜딩, Illustrator',
    '2024-11-23 02:27:21', '2025-02-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b09933e8-3d61-4131-9314-0d463df70d75', 'google', '2667987235', 'sub', '이름376',
    '닉네임376', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_142.jpg', False, 2,
    6, '376번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/376', False, 'Kotlin, Swift, React Native',
    '2024-10-27 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ee477d34-6b19-4910-9a9a-c796c712d271', 'google', '6819628773', 'sub', '이름377',
    '닉네임377', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/77.jpg', False, 3,
    3, '377번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/377', False, '운동 기록, 근육 만들기, 체중 감량 운동, 기초 운동법',
    '2024-11-26 02:27:21', '2024-12-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '71b410b7-83e8-488d-8dd4-b4986d9c66d2', 'kakao', '3363466297', 'user_3363466297', '이름378',
    '닉네임378', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/26.jpg', True, 36,
    16, '378번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/378', False, 'UI 디자인, Android Studio, iOS 앱 개발',
    '2025-04-13 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9e4d88af-f8a6-4a2a-ab98-885d3dfde796', 'google', '6209149763', 'sub', '이름379',
    '닉네임379', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_941.jpg', True, 35,
    9, '379번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/379', False, '선형대수학, 수학적 모델링, 확률, 미적분',
    '2025-02-04 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '55680a60-860a-45b1-87e1-e9d7ba4ef21d', 'google', '3531581908', 'sub', '이름380',
    '닉네임380', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/36.jpg', True, 36,
    19, '380번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/380', True, 'JPA, Spring Boot, Spring, Spring Security',
    '2024-06-04 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '88c9518d-6e7f-4dfb-b887-57a3d51f579c', 'kakao', '1649390026', 'user_1649390026', '이름381',
    '닉네임381', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_461.jpg', False, 2,
    9, '381번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/381', True, '버튼 디자인, 프로토타입, 디자인 시스템',
    '2024-07-02 02:27:21', '2025-01-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '98c61027-a234-4f63-96ac-54bf0cc269e3', 'kakao', '8287603159', 'user_8287603159', '이름382',
    '닉네임382', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_766.jpg', True, 35,
    6, '382번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/382', False, '확률, 선형대수학, 수학적 모델링',
    '2025-01-14 02:27:21', '2025-02-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6cc3a850-a920-4680-a5f5-a1bf1b0badc1', 'google', '5172381353', 'sub', '이름383',
    '닉네임383', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/10.jpg', True, 38,
    21, '383번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/383', False, '수학문제 풀이, 기본 공식, 중등수학',
    '2025-04-16 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a82ff705-77db-483d-b4be-ef84b5a49c59', 'naver', '6861301609', 'user_6861301609', '이름384',
    '닉네임384', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_855.jpg', True, 39,
    3, '384번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/384', False, '사용자 흐름, 버튼 디자인, 디자인 시스템, 프로토타입',
    '2025-04-14 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ca7dcce3-804d-48e4-89ef-c1983970f27a', 'kakao', '9950643136', 'user_9950643136', '이름385',
    '닉네임385', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/26.jpg', False, 2,
    7, '385번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/385', True, 'Android Studio, UI 디자인, Flutter',
    '2025-02-19 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '41ea95f6-f60c-4ae9-a5b9-62b2da51c257', 'google', '3293274139', 'sub', '이름386',
    '닉네임386', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/97.jpg', True, 2,
    5, '386번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/386', False, '영어 회화, 비즈니스 영어, TOEIC',
    '2024-09-08 02:27:21', '2024-12-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bc7fa75d-1b44-40ed-ae14-1c63f7ab1f49', 'kakao', '2027675362', 'user_2027675362', '이름387',
    '닉네임387', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_865.jpg', True, 6,
    12, '387번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/387', False, 'Flutter, iOS 앱 개발, UI 디자인, Android Studio',
    '2024-11-27 02:27:21', '2025-03-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2806d217-6c8c-4642-993b-eb8ec06c7aa2', 'google', '4070567621', 'sub', '이름388',
    '닉네임388', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_430.jpg', True, 1,
    17, '388번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/388', True, '피아노 기초, 기본 코드, 리듬 맞추기, 기타 기초',
    '2024-06-17 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bac62286-3562-45ef-a456-28463330ee4e', 'google', '6828533978', 'sub', '이름389',
    '닉네임389', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_565.jpg', True, 38,
    13, '389번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/389', True, 'Photoshop, 브랜딩, Illustrator',
    '2024-10-25 02:27:21', '2024-12-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7c83449f-f05d-4111-a535-5ae80eb0704d', 'google', '9188073366', 'sub', '이름390',
    '닉네임390', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/17.jpg', True, 7,
    2, '390번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/390', False, 'UX 리서치, 와이어프레임, Figma, UI 설계',
    '2025-04-07 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6e6a91cc-4f3c-46ea-8458-ffdcaf17b53b', 'naver', '1019024737', 'user_1019024737', '이름391',
    '닉네임391', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_570.jpg', False, 3,
    1, '391번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/391', True, 'JavaScript, React, CSS',
    '2024-08-06 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '68d788d2-8d7f-4725-a495-cb16f12b126c', 'naver', '3043243874', 'user_3043243874', '이름392',
    '닉네임392', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/43.jpg', True, 33,
    1, '392번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/392', True, 'iOS 앱 개발, Android Studio, UI 디자인, Flutter',
    '2025-02-01 02:27:21', '2025-03-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bfb19be3-4ee1-4a24-9cff-b6e306dc0043', 'kakao', '6534502547', 'user_6534502547', '이름393',
    '닉네임393', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/88.jpg', False, 38,
    22, '393번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/393', True, '기초 회화, 어휘 학습, 영어 문법',
    '2024-11-15 02:27:21', '2024-12-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b2e33e44-5091-4d90-99a6-2d23bfd7fca6', 'naver', '9915367206', 'user_9915367206', '이름394',
    '닉네임394', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/11.jpg', False, 37,
    11, '394번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/394', False, '근육 만들기, 기초 운동법, 운동 기록, 체중 감량 운동',
    '2024-06-27 02:27:21', '2024-11-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c1f4fcfa-72fd-44cd-a6d8-10475146839d', 'google', '4433950807', 'sub', '이름395',
    '닉네임395', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_992.jpg', True, 31,
    5, '395번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/395', False, '포스터 디자인, 디지털 일러스트, 타이포그래피',
    '2025-03-20 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0b24a22a-4f06-414c-be86-a1b38398af5d', 'naver', '7391668086', 'user_7391668086', '이름396',
    '닉네임396', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_122.jpg', False, 5,
    4, '396번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/396', False, '수학적 모델링, 확률, 미적분',
    '2025-01-11 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0486e79e-9ce2-4278-8898-7a569b46cf89', 'google', '5702176628', 'sub', '이름397',
    '닉네임397', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/91.jpg', False, 36,
    20, '397번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/397', True, 'HTML, React, JavaScript, CSS',
    '2024-05-20 02:27:21', '2024-07-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4987fac1-6844-45f2-9064-c4446468cd42', 'naver', '5821138896', 'user_5821138896', '이름398',
    '닉네임398', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/12.jpg', True, 2,
    5, '398번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/398', False, '악보 읽기, 작곡 기초, 리듬 연습',
    '2024-06-04 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '005c8058-0b97-4e5f-8838-7de2d155e368', 'naver', '7099922084', 'user_7099922084', '이름399',
    '닉네임399', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/48.jpg', True, 39,
    2, '399번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/399', False, 'TOEIC, 영어 회화, 비즈니스 영어',
    '2024-07-08 02:27:21', '2024-10-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8fa69f84-33f4-4ced-af36-216bd027af0a', 'kakao', '9535560060', 'user_9535560060', '이름400',
    '닉네임400', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/16.jpg', True, 2,
    1, '400번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/400', True, 'HTML, React, JavaScript, CSS',
    '2024-10-14 02:27:21', '2024-10-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '618886bd-9cc1-434d-bdf8-f338625179f0', 'kakao', '6521986667', 'user_6521986667', '이름401',
    '닉네임401', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_695.jpg', False, 35,
    8, '401번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/401', True, 'Flutter, UI 디자인, Android Studio, iOS 앱 개발',
    '2024-07-19 02:27:21', '2024-11-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4572c8ae-4f0e-42c5-93fa-7461efff2a38', 'google', '9651768859', 'sub', '이름402',
    '닉네임402', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/65.jpg', False, 32,
    8, '402번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/402', True, '프로토타입, 사용자 흐름, 디자인 시스템, 버튼 디자인',
    '2025-05-02 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '62babbbb-5dae-4798-9f75-d7cf7df02626', 'google', '1382192948', 'sub', '이름403',
    '닉네임403', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_428.jpg', False, 7,
    4, '403번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/403', False, '피아노 기초, 기본 코드, 리듬 맞추기, 기타 기초',
    '2024-09-24 02:27:21', '2025-03-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '63dd8d77-6bf4-4d79-92bb-54351e5cb943', 'google', '2948501320', 'sub', '이름404',
    '닉네임404', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/80.jpg', True, 37,
    11, '404번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/404', False, 'Figma, UX 리서치, UI 설계, 와이어프레임',
    '2024-06-21 02:27:21', '2024-06-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c6e8efe2-4dc5-448c-9456-4bbca956a3ef', 'naver', '4955238629', 'user_4955238629', '이름405',
    '닉네임405', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/76.jpg', True, 4,
    6, '405번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/405', False, 'Photoshop, 브랜딩, Illustrator',
    '2024-09-21 02:27:21', '2024-10-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '34ddc0bb-30b2-4266-99d9-7dbb028fedc0', 'kakao', '9698528980', 'user_9698528980', '이름406',
    '닉네임406', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_573.jpg', True, 33,
    4, '406번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/406', True, 'HTML, React, JavaScript, CSS',
    '2024-05-29 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bf0ff466-851f-4718-aa39-a5d982d87bd6', 'google', '3341886039', 'sub', '이름407',
    '닉네임407', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_483.jpg', True, 3,
    3, '407번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/407', False, '악보 읽기, 리듬 연습, 작곡 기초, 기타',
    '2024-12-21 02:27:21', '2025-01-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9d8f3176-92bd-401c-b2fe-fb8bbc83b49d', 'naver', '4778262877', 'user_4778262877', '이름408',
    '닉네임408', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg', False, 31,
    14, '408번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/408', False, '디지털 일러스트, 포스터 디자인, 아이콘 디자인, 타이포그래피',
    '2024-08-27 02:27:21', '2025-04-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9ca20a5d-6eef-4525-ad9e-a20073c32c18', 'naver', '1703776939', 'user_1703776939', '이름409',
    '닉네임409', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_862.jpg', True, 32,
    9, '409번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/409', False, 'React Native, Firebase, Kotlin',
    '2025-03-05 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9c4b54ac-5555-474f-9fdf-9fcee1545fb7', 'naver', '9540403073', 'user_9540403073', '이름410',
    '닉네임410', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/28.jpg', True, 36,
    7, '410번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/410', False, '근육 만들기, 체중 감량 운동, 운동 기록, 기초 운동법',
    '2025-05-03 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0e8cef35-598c-475f-bb8c-5ae50f6e35d0', 'naver', '4418005291', 'user_4418005291', '이름411',
    '닉네임411', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/63.jpg', True, 31,
    5, '411번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/411', False, '사용자 흐름, 버튼 디자인, 디자인 시스템, 프로토타입',
    '2024-10-12 02:27:21', '2024-12-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '31443f23-36d7-4c4a-9136-bb28df06bcf4', 'naver', '7059382501', 'user_7059382501', '이름412',
    '닉네임412', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_736.jpg', False, 32,
    18, '412번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/412', True, '타이포그래피, 디지털 일러스트, 포스터 디자인',
    '2025-04-22 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '536cb05b-b710-47c7-9b4b-8c4a95be335d', 'google', '6591135454', 'sub', '이름413',
    '닉네임413', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/96.jpg', True, 39,
    1, '413번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/413', False, '타이포그래피, 아이콘 디자인, 포스터 디자인, 디지털 일러스트',
    '2024-07-22 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2dd58f93-9adf-4e54-95d7-0d8aa4e0f50a', 'naver', '9224209989', 'user_9224209989', '이름414',
    '닉네임414', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/66.jpg', False, 5,
    3, '414번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/414', True, 'HTML, React, JavaScript',
    '2024-08-30 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8bd50f73-197e-437f-9f22-b9a1f00e526d', 'naver', '6173114938', 'user_6173114938', '이름415',
    '닉네임415', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/6.jpg', True, 36,
    20, '415번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/415', True, '선형대수학, 수학적 모델링, 확률',
    '2024-10-04 02:27:21', '2025-02-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7449d2a3-ccf2-4b88-83b6-91d2198fb3bc', 'google', '9387305851', 'sub', '이름416',
    '닉네임416', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/67.jpg', False, 4,
    2, '416번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/416', True, '기타, 리듬 연습, 악보 읽기',
    '2024-10-26 02:27:21', '2024-12-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '733512e0-1f31-422a-9d3b-0b2a7d199f44', 'naver', '9157507226', 'user_9157507226', '이름417',
    '닉네임417', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/93.jpg', True, 38,
    3, '417번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/417', True, '근육 증대, 체중 감량, 운동 루틴 계획, 트레이닝 피드백',
    '2025-04-23 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2eda972a-dc43-46d9-b525-40e7c179c8d8', 'google', '6558258421', 'sub', '이름418',
    '닉네임418', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/55.jpg', False, 35,
    4, '418번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/418', True, 'CSS, JavaScript, React',
    '2024-10-30 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6bbcc077-b790-4d61-bec3-07d92fdeb657', 'google', '7499181720', 'sub', '이름419',
    '닉네임419', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_209.jpg', True, 38,
    6, '419번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/419', False, '수학기초, 중등수학, 수학문제 풀이, 기본 공식',
    '2024-06-10 02:27:21', '2024-08-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a9b27271-88fd-4cfe-9f71-a057b74b8f88', 'naver', '7673364235', 'user_7673364235', '이름420',
    '닉네임420', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_348.jpg', False, 4,
    4, '420번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/420', True, '기본 코드, 기타 기초, 피아노 기초, 리듬 맞추기',
    '2025-02-23 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4c81b428-c30c-46ab-848f-8d6f610bc432', 'naver', '8437014190', 'user_8437014190', '이름421',
    '닉네임421', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/18.jpg', True, 33,
    7, '421번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/421', True, 'Figma, UX 리서치, 와이어프레임',
    '2024-09-22 02:27:21', '2025-03-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1bd9a24d-2d1c-4c43-bf0e-7405209e430b', 'kakao', '4518468053', 'user_4518468053', '이름422',
    '닉네임422', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_356.jpg', False, 2,
    5, '422번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/422', True, '기타 기초, 리듬 맞추기, 피아노 기초, 기본 코드',
    '2024-11-05 02:27:21', '2025-02-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ab6e4fa2-21c3-46ec-818c-17375224614a', 'naver', '1312285619', 'user_1312285619', '이름423',
    '닉네임423', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/3.jpg', False, 31,
    6, '423번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/423', True, 'iOS 앱 개발, UI 디자인, Android Studio',
    '2024-11-22 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ea5da7c7-64dc-4a7f-aed2-98a913ae7990', 'kakao', '4364268134', 'user_4364268134', '이름424',
    '닉네임424', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/18.jpg', True, 39,
    3, '424번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/424', False, '운동 루틴 계획, 근육 증대, 트레이닝 피드백',
    '2025-02-12 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6f07b402-55f0-4943-a2b2-b989f997aa33', 'kakao', '5106148494', 'user_5106148494', '이름425',
    '닉네임425', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/95.jpg', False, 34,
    9, '425번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/425', True, '작곡 기초, 기타, 리듬 연습, 악보 읽기',
    '2024-11-29 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9b4d678c-5205-488f-bd1a-960ffb1abb9f', 'kakao', '9618641875', 'user_9618641875', '이름426',
    '닉네임426', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_793.jpg', False, 34,
    1, '426번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/426', False, '중등수학, 수학기초, 기본 공식, 수학문제 풀이',
    '2025-02-26 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04bb6eeb-b104-432b-8742-116685e5905b', 'kakao', '7802796217', 'user_7802796217', '이름427',
    '닉네임427', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_416.jpg', True, 32,
    8, '427번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/427', False, '영어 문법, 기초 회화, 영작 연습',
    '2025-02-26 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '45da1ea9-cade-4303-b63b-669398dde686', 'naver', '6956618961', 'user_6956618961', '이름428',
    '닉네임428', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/97.jpg', False, 7,
    5, '428번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/428', False, '확률, 수학적 모델링, 미적분',
    '2025-02-18 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '194ce050-4e24-4dbd-aeb7-81dd688dd1f4', 'naver', '7575531693', 'user_7575531693', '이름429',
    '닉네임429', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/95.jpg', True, 33,
    7, '429번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/429', True, '근육 증대, 운동 루틴 계획, 체중 감량',
    '2024-11-09 02:27:21', '2025-02-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8cf10a41-ee20-4c1a-83b3-8d860ad787c8', 'kakao', '4075429005', 'user_4075429005', '이름430',
    '닉네임430', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/68.jpg', True, 7,
    1, '430번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/430', True, '기타, 리듬 연습, 악보 읽기',
    '2024-11-21 02:27:21', '2024-11-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'abe2ceeb-48b8-4cfe-b937-60f34aedd433', 'google', '3304855920', 'sub', '이름431',
    '닉네임431', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', False, 36,
    12, '431번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/431', True, '리스닝 연습, 영어 회화, TOEIC',
    '2024-11-29 02:27:21', '2024-12-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '97fc4b5e-72cb-4103-bfdd-969b89dd6772', 'naver', '5465310383', 'user_5465310383', '이름432',
    '닉네임432', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/12.jpg', False, 39,
    2, '432번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/432', True, '미적분, 확률, 선형대수학, 수학적 모델링',
    '2024-06-25 02:27:21', '2024-10-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '85c56a7e-6ba7-4bed-b241-fae863ba6286', 'naver', '7274624814', 'user_7274624814', '이름433',
    '닉네임433', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_869.jpg', False, 1,
    12, '433번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/433', True, '근육 만들기, 운동 기록, 체중 감량 운동, 기초 운동법',
    '2024-07-22 02:27:21', '2024-09-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cfffa4df-f058-410c-9d7e-e2bfd69ec247', 'google', '1448152184', 'sub', '이름434',
    '닉네임434', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/16.jpg', False, 34,
    9, '434번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/434', False, '수학기초, 중등수학, 기본 공식',
    '2025-04-01 02:27:21', '2025-04-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bdbc8978-f028-4124-9c9b-a3c7f5631b16', 'naver', '6536596292', 'user_6536596292', '이름435',
    '닉네임435', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/95.jpg', False, 39,
    3, '435번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/435', False, 'Flutter, iOS 앱 개발, Android Studio, UI 디자인',
    '2024-05-24 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e302f814-336e-46ce-b463-2cfd409807fa', 'naver', '5796020169', 'user_5796020169', '이름436',
    '닉네임436', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/94.jpg', True, 35,
    15, '436번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/436', False, '버튼 디자인, 디자인 시스템, 사용자 흐름',
    '2025-01-05 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'df12dd22-ee52-4629-9d44-190c702e0566', 'kakao', '9058752465', 'user_9058752465', '이름437',
    '닉네임437', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/36.jpg', False, 2,
    3, '437번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/437', True, '기초 회화, 영어 문법, 어휘 학습',
    '2024-12-16 02:27:21', '2024-12-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '165eb8f6-bc49-44cf-bbf2-1c468a8f7ba4', 'google', '7889099807', 'sub', '이름438',
    '닉네임438', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/16.jpg', False, 39,
    2, '438번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/438', False, '리듬 연습, 기타, 악보 읽기',
    '2024-10-08 02:27:21', '2025-02-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b252c017-2f03-4547-a5f3-a4f62d75ee69', 'google', '4560613571', 'sub', '이름439',
    '닉네임439', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/97.jpg', False, 35,
    17, '439번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/439', False, '중등수학, 기본 공식, 수학기초, 수학문제 풀이',
    '2025-03-31 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '290122fc-d6e5-46e0-82c7-f89ae514f54f', 'google', '3085192566', 'sub', '이름440',
    '닉네임440', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/43.jpg', False, 36,
    20, '440번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/440', True, 'Flutter, UI 디자인, Android Studio',
    '2024-10-20 02:27:21', '2025-04-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '10ccd90d-e496-4986-8a63-37a41aad65a1', 'naver', '2466419636', 'user_2466419636', '이름441',
    '닉네임441', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/19.jpg', True, 34,
    12, '441번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/441', True, 'React Native, Firebase, Kotlin, Swift',
    '2025-02-13 02:27:21', '2025-03-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7db33523-d58f-4814-a6a3-2853514ef6fb', 'naver', '4482502639', 'user_4482502639', '이름442',
    '닉네임442', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/57.jpg', True, 1,
    9, '442번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/442', False, '영어 문법, 영작 연습, 어휘 학습',
    '2024-07-15 02:27:21', '2024-12-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'edb656de-6815-48cd-8581-3972064a6eab', 'kakao', '2365436385', 'user_2365436385', '이름443',
    '닉네임443', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/79.jpg', False, 8,
    1, '443번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/443', False, '사용자 흐름, 버튼 디자인, 디자인 시스템, 프로토타입',
    '2025-03-30 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6330228c-0f42-4511-903e-28a48d7f54fd', 'naver', '9746900046', 'user_9746900046', '이름444',
    '닉네임444', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/65.jpg', True, 5,
    1, '444번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/444', True, '영어 회화, 리스닝 연습, 비즈니스 영어',
    '2025-03-13 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9af9a538-f0db-4cde-913e-ebfc05b74875', 'naver', '7524476019', 'user_7524476019', '이름445',
    '닉네임445', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_229.jpg', True, 3,
    5, '445번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/445', False, '브랜딩, Illustrator, 시각 디자인, Photoshop',
    '2024-10-23 02:27:21', '2024-11-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b0327cc4-3fa2-4389-a583-95dab8f0621a', 'kakao', '1675315585', 'user_1675315585', '이름446',
    '닉네임446', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/19.jpg', False, 38,
    11, '446번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/446', True, 'Android Studio, Flutter, UI 디자인, iOS 앱 개발',
    '2024-11-13 02:27:21', '2024-12-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d02d359-8264-4856-a7e9-144f8342f800', 'google', '5294121120', 'sub', '이름447',
    '닉네임447', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_564.jpg', False, 6,
    1, '447번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/447', True, '리듬 연습, 작곡 기초, 기타',
    '2024-10-21 02:27:21', '2024-11-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0dcc6e2b-92b3-44c3-903c-91641dac47f1', 'kakao', '8337676250', 'user_8337676250', '이름448',
    '닉네임448', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/81.jpg', False, 39,
    1, '448번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/448', True, 'Flutter, Android Studio, iOS 앱 개발, UI 디자인',
    '2024-09-06 02:27:21', '2024-10-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '95f8e08b-2d75-4c43-aaee-3b6c6492be3c', 'kakao', '8579140652', 'user_8579140652', '이름449',
    '닉네임449', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/89.jpg', False, 5,
    5, '449번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/449', False, '수학기초, 기본 공식, 수학문제 풀이, 중등수학',
    '2025-05-09 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5728ac88-ea14-4da6-9a2c-0be86809d69d', 'naver', '4438886142', 'user_4438886142', '이름450',
    '닉네임450', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_285.jpg', False, 32,
    16, '450번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/450', True, 'Android Studio, Flutter, iOS 앱 개발, UI 디자인',
    '2025-03-15 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '96f8f7c5-8105-43d1-bdc8-b2771b80a9b7', 'kakao', '6970784412', 'user_6970784412', '이름451',
    '닉네임451', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/62.jpg', False, 4,
    9, '451번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/451', False, '영어 문법, 어휘 학습, 기초 회화',
    '2024-09-14 02:27:21', '2024-12-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1c843200-a581-498e-9786-bdafbea04aff', 'kakao', '1098539395', 'user_1098539395', '이름452',
    '닉네임452', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/3.jpg', False, 33,
    12, '452번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/452', True, 'Figma, UX 리서치, UI 설계, 와이어프레임',
    '2024-12-10 02:27:21', '2024-12-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8ff75f8e-bbda-45d7-a230-fbf1c0a4b1c5', 'kakao', '6292424000', 'user_6292424000', '이름453',
    '닉네임453', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_739.jpg', True, 34,
    7, '453번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/453', True, '기초 회화, 영작 연습, 영어 문법, 어휘 학습',
    '2025-04-17 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b6595a3e-1cec-48b2-a797-ef2ed8903d39', 'kakao', '6696671351', 'user_6696671351', '이름454',
    '닉네임454', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/34.jpg', False, 4,
    7, '454번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/454', False, 'Figma, 와이어프레임, UI 설계',
    '2024-06-19 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f6489bef-dfbc-45b4-b262-7e4530361f0b', 'naver', '4563511075', 'user_4563511075', '이름455',
    '닉네임455', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/20.jpg', True, 8,
    1, '455번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/455', True, '리듬 맞추기, 피아노 기초, 기본 코드',
    '2025-01-21 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7360c554-15a1-42e2-8317-bc53e509570c', 'kakao', '7664275424', 'user_7664275424', '이름456',
    '닉네임456', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/68.jpg', False, 4,
    1, '456번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/456', False, 'UX 리서치, UI 설계, 와이어프레임, Figma',
    '2024-07-22 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c6c67ca3-c692-4b06-a456-f5cb1925aae0', 'naver', '8845588931', 'user_8845588931', '이름457',
    '닉네임457', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_702.jpg', False, 31,
    2, '457번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/457', True, '기타 기초, 피아노 기초, 리듬 맞추기, 기본 코드',
    '2025-04-22 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6515faa0-8c7c-455c-ae14-da02d007484d', 'naver', '4770910274', 'user_4770910274', '이름458',
    '닉네임458', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/73.jpg', False, 36,
    4, '458번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/458', False, '선형대수학, 미적분, 수학적 모델링',
    '2024-06-12 02:27:21', '2025-02-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8cd36a75-da9f-43e1-83a2-c8a307cdeda2', 'kakao', '9510526797', 'user_9510526797', '이름459',
    '닉네임459', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/53.jpg', False, 32,
    18, '459번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/459', False, '작곡 기초, 리듬 연습, 악보 읽기, 기타',
    '2024-11-28 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59922d56-29a9-4261-bf95-542c67863651', 'naver', '5463764582', 'user_5463764582', '이름460',
    '닉네임460', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/7.jpg', True, 37,
    6, '460번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/460', False, '기타, 작곡 기초, 리듬 연습, 악보 읽기',
    '2024-11-03 02:27:21', '2024-12-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cddf5ee2-25a9-44ec-9a6c-224cb4e67a89', 'naver', '7491355608', 'user_7491355608', '이름461',
    '닉네임461', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/42.jpg', False, 2,
    3, '461번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/461', False, '기본 코드, 피아노 기초, 기타 기초',
    '2024-10-26 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '95a59b60-99be-4312-9c67-6bd6b65665e8', 'naver', '5238116186', 'user_5238116186', '이름462',
    '닉네임462', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/1.jpg', True, 1,
    20, '462번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/462', False, 'JPA, Spring Boot, Spring Security',
    '2025-01-01 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7b8f55af-9782-4f28-9594-afeb069365c2', 'google', '8803667338', 'sub', '이름463',
    '닉네임463', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_305.jpg', True, 34,
    5, '463번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/463', True, 'Spring, JPA, Spring Boot, Spring Security',
    '2025-01-15 02:27:21', '2025-03-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '688ced64-018e-4d43-91cc-eb0c014efca2', 'kakao', '9948169508', 'user_9948169508', '이름464',
    '닉네임464', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/68.jpg', True, 6,
    13, '464번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/464', True, 'Swift, React Native, Kotlin',
    '2025-01-11 02:27:21', '2025-01-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '043c8705-4881-49ec-aeee-5cca79f81242', 'kakao', '3956282729', 'user_3956282729', '이름465',
    '닉네임465', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/53.jpg', False, 33,
    6, '465번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/465', True, '체중 감량 운동, 기초 운동법, 운동 기록, 근육 만들기',
    '2025-01-06 02:27:21', '2025-01-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5bfcd701-5f91-44c6-b3fe-fbd8ed5f91a4', 'kakao', '5614751167', 'user_5614751167', '이름466',
    '닉네임466', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_544.jpg', False, 2,
    5, '466번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/466', True, '사용자 흐름, 프로토타입, 디자인 시스템, 버튼 디자인',
    '2024-06-11 02:27:21', '2024-11-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '234d19f3-dba8-4dea-a88a-11f6430218f9', 'google', '3474378728', 'sub', '이름467',
    '닉네임467', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/52.jpg', True, 39,
    2, '467번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/467', True, '기타 기초, 리듬 맞추기, 기본 코드, 피아노 기초',
    '2024-09-03 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c2469e26-289e-456b-b1a7-af862eb8251d', 'google', '2283135758', 'sub', '이름468',
    '닉네임468', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_176.jpg', True, 36,
    7, '468번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/468', False, 'Swift, Firebase, React Native, Kotlin',
    '2024-12-18 02:27:21', '2025-04-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cbf49ea4-0e35-45cd-bc47-289cfb088b55', 'google', '9356469126', 'sub', '이름469',
    '닉네임469', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/17.jpg', True, 8,
    1, '469번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/469', True, '수학문제 풀이, 기본 공식, 수학기초',
    '2024-09-21 02:27:21', '2025-03-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '43781d27-e8b0-48c8-a60c-53f3c1e04ba4', 'kakao', '4006112039', 'user_4006112039', '이름470',
    '닉네임470', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/4.jpg', False, 34,
    3, '470번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/470', False, '리듬 맞추기, 기본 코드, 피아노 기초, 기타 기초',
    '2025-02-10 02:27:21', '2025-03-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b080a89c-8171-49fb-a862-c162519cde20', 'naver', '5121560081', 'user_5121560081', '이름471',
    '닉네임471', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/81.jpg', True, 37,
    14, '471번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/471', False, '디자인 시스템, 사용자 흐름, 프로토타입, 버튼 디자인',
    '2025-02-21 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e363450b-c0ad-4103-8542-2d6564430fb2', 'naver', '2744606412', 'user_2744606412', '이름472',
    '닉네임472', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/48.jpg', True, 39,
    3, '472번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/472', True, '리스닝 연습, 영어 회화, 비즈니스 영어',
    '2024-12-26 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2a3a4ef7-5024-4715-a2a7-7a3c8e2ff21c', 'naver', '6634726726', 'user_6634726726', '이름473',
    '닉네임473', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/92.jpg', False, 36,
    19, '473번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/473', False, 'React, CSS, JavaScript',
    '2024-06-28 02:27:21', '2024-10-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f2ec976b-a3e5-4195-864c-b03f4d19b87e', 'google', '3304059060', 'sub', '이름474',
    '닉네임474', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_434.jpg', False, 36,
    8, '474번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/474', False, 'JPA, Spring, Spring Security',
    '2025-02-12 02:27:21', '2025-02-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f1de52d1-7f18-4052-ba00-c807df7d6353', 'google', '3694638443', 'sub', '이름475',
    '닉네임475', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_972.jpg', True, 37,
    6, '475번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/475', True, '영어 문법, 기초 회화, 영작 연습',
    '2024-09-04 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5c025e4f-c7cb-426b-9b6a-c811b9874e24', 'kakao', '7916351928', 'user_7916351928', '이름476',
    '닉네임476', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/36.jpg', False, 1,
    15, '476번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/476', True, 'React, HTML, JavaScript, CSS',
    '2024-11-30 02:27:21', '2025-02-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9056f69e-b7dd-4acc-8848-9c2b9dff987d', 'naver', '8073291947', 'user_8073291947', '이름477',
    '닉네임477', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/44.jpg', True, 5,
    5, '477번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/477', True, '리듬 연습, 기타, 악보 읽기, 작곡 기초',
    '2024-11-03 02:27:21', '2024-12-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '66dac874-6ccc-48c0-9807-613e14dca666', 'kakao', '7419389341', 'user_7419389341', '이름478',
    '닉네임478', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_192.jpg', False, 2,
    2, '478번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/478', True, '타이포그래피, 디지털 일러스트, 포스터 디자인, 아이콘 디자인',
    '2024-12-15 02:27:21', '2025-03-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26c3fe38-4d53-4728-a80c-b39621903ce5', 'kakao', '7968952918', 'user_7968952918', '이름479',
    '닉네임479', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/66.jpg', False, 1,
    21, '479번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/479', False, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-10-28 02:27:21', '2025-01-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '01bda847-6e1e-4017-86ef-08680a6ab11f', 'kakao', '5471893012', 'user_5471893012', '이름480',
    '닉네임480', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/92.jpg', True, 3,
    2, '480번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/480', False, 'Spring Boot, Spring Security, Spring, JPA',
    '2024-09-11 02:27:21', '2025-02-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04cb3466-0d27-4e70-9e98-4e03b2d9c8f9', 'kakao', '8838260800', 'user_8838260800', '이름481',
    '닉네임481', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/87.jpg', False, 36,
    2, '481번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/481', True, 'TOEIC, 영어 회화, 리스닝 연습, 비즈니스 영어',
    '2025-01-11 02:27:21', '2025-01-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7df0e154-327f-442c-9dcc-bc3b23733df9', 'kakao', '1114684842', 'user_1114684842', '이름482',
    '닉네임482', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_379.jpg', False, 33,
    7, '482번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/482', True, '기타 기초, 리듬 맞추기, 기본 코드, 피아노 기초',
    '2024-10-04 02:27:21', '2025-03-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5f11cf07-63a9-4b2b-917c-0614f6ca1f98', 'kakao', '4723256468', 'user_4723256468', '이름483',
    '닉네임483', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/56.jpg', True, 32,
    6, '483번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/483', False, '기타, 작곡 기초, 악보 읽기',
    '2024-06-01 02:27:21', '2024-08-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9be6b210-adee-4970-843c-a2a04b7ebca3', 'naver', '4367931177', 'user_4367931177', '이름484',
    '닉네임484', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/51.jpg', False, 7,
    1, '484번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/484', True, '수학기초, 중등수학, 기본 공식',
    '2025-04-20 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dc8211ad-311d-4b0b-a59d-47126afc1c23', 'naver', '7276879932', 'user_7276879932', '이름485',
    '닉네임485', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/47.jpg', False, 32,
    17, '485번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/485', False, '비즈니스 영어, 영어 회화, 리스닝 연습, TOEIC',
    '2024-06-19 02:27:21', '2024-12-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0abd6890-579f-4df9-a42a-9a76d266b6d6', 'kakao', '6044312040', 'user_6044312040', '이름486',
    '닉네임486', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_301.jpg', True, 4,
    7, '486번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/486', True, '사용자 흐름, 프로토타입, 버튼 디자인',
    '2024-09-27 02:27:21', '2024-10-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9d0fa07c-d405-4ec7-8b75-856f5bf83769', 'kakao', '1336763614', 'user_1336763614', '이름487',
    '닉네임487', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_671.jpg', True, 4,
    6, '487번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/487', True, '비즈니스 영어, 리스닝 연습, TOEIC',
    '2024-06-11 02:27:21', '2024-11-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bd82a72d-34fb-4da4-8a53-4a26bd5823ab', 'google', '4761081924', 'sub', '이름488',
    '닉네임488', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/41.jpg', True, 38,
    13, '488번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/488', False, '중등수학, 기본 공식, 수학기초',
    '2025-02-09 02:27:21', '2025-02-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'efc57e58-a1e6-48ba-aa99-585142b6c78f', 'google', '6123695415', 'sub', '이름489',
    '닉네임489', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_245.jpg', False, 1,
    10, '489번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/489', False, '근육 증대, 체중 감량, 트레이닝 피드백, 운동 루틴 계획',
    '2024-10-24 02:27:21', '2024-12-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f43a1c07-cd0b-4268-8f16-44e8643a3a18', 'kakao', '6761951446', 'user_6761951446', '이름490',
    '닉네임490', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/53.jpg', True, 2,
    8, '490번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/490', False, '디지털 일러스트, 포스터 디자인, 아이콘 디자인',
    '2024-09-24 02:27:21', '2025-03-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '869644b2-07ab-4e2d-a306-a6e916dd3e07', 'google', '7731717341', 'sub', '이름491',
    '닉네임491', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/61.jpg', False, 3,
    2, '491번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/491', False, '기초 운동법, 운동 기록, 근육 만들기, 체중 감량 운동',
    '2025-04-02 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ca321b9e-5727-467a-8508-22886c2b02c4', 'kakao', '1796571454', 'user_1796571454', '이름492',
    '닉네임492', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/30.jpg', True, 1,
    25, '492번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/492', True, '비즈니스 영어, TOEIC, 영어 회화, 리스닝 연습',
    '2024-11-13 02:27:21', '2025-02-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '29709dab-a0bd-464e-bfeb-8cf1a32c8c21', 'google', '8156299280', 'sub', '이름493',
    '닉네임493', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/52.jpg', True, 37,
    11, '493번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/493', True, 'JPA, Spring Boot, Spring, Spring Security',
    '2024-09-01 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9f9ccf3a-6bb0-4d1b-a838-293cdddb178c', 'google', '4251329739', 'sub', '이름494',
    '닉네임494', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/12.jpg', True, 38,
    10, '494번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/494', True, '영어 회화, TOEIC, 리스닝 연습, 비즈니스 영어',
    '2024-09-18 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '41507f82-9332-465e-80e2-1dd6fbb5ff47', 'google', '7358475829', 'sub', '이름495',
    '닉네임495', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/79.jpg', True, 35,
    4, '495번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/495', False, 'Photoshop, Illustrator, 브랜딩',
    '2024-09-02 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'da823604-3c6c-4441-887b-71a181107193', 'kakao', '4861830047', 'user_4861830047', '이름496',
    '닉네임496', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/98.jpg', True, 6,
    5, '496번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/496', False, '악보 읽기, 리듬 연습, 작곡 기초',
    '2025-02-04 02:27:21', '2025-03-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5bf13e3b-aabe-49d3-9353-8a32b9c4ec9c', 'kakao', '5781808619', 'user_5781808619', '이름497',
    '닉네임497', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_599.jpg', True, 1,
    5, '497번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/497', True, '기초 운동법, 운동 기록, 근육 만들기, 체중 감량 운동',
    '2024-10-22 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '70a81e8a-7e0e-418a-9b15-1b1369f9735f', 'naver', '9502153894', 'user_9502153894', '이름498',
    '닉네임498', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_313.jpg', False, 33,
    11, '498번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/498', False, '수학문제 풀이, 중등수학, 기본 공식',
    '2024-09-09 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6407254e-ef29-46f5-894a-36068fcebfb0', 'naver', '6439073282', 'user_6439073282', '이름499',
    '닉네임499', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/25.jpg', False, 5,
    5, '499번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/499', False, '타이포그래피, 디지털 일러스트, 아이콘 디자인, 포스터 디자인',
    '2025-01-19 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '449cc4f6-21c6-41ea-b522-8f822bc734d0', 'google', '6930530551', 'sub', '이름500',
    '닉네임500', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/62.jpg', False, 33,
    10, '500번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/500', True, '디자인 시스템, 프로토타입, 버튼 디자인, 사용자 흐름',
    '2024-06-29 02:27:21', '2025-02-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c995dadb-9f71-4e2a-984a-281529f256a1', 'google', '1378467738', 'sub', '이름501',
    '닉네임501', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/80.jpg', True, 31,
    11, '501번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/501', False, 'Photoshop, Illustrator, 브랜딩',
    '2024-07-19 02:27:21', '2024-07-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'db3e7d68-c5d5-4b60-9fd2-41a70bb32fca', 'google', '8027679788', 'sub', '이름502',
    '닉네임502', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/95.jpg', False, 34,
    9, '502번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/502', False, 'Kotlin, React Native, Swift, Firebase',
    '2024-11-03 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ce4214f8-4dd7-46c9-bb71-30e048f07535', 'google', '4334391946', 'sub', '이름503',
    '닉네임503', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_741.jpg', True, 1,
    9, '503번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/503', True, '디자인 시스템, 버튼 디자인, 프로토타입',
    '2024-12-07 02:27:21', '2025-01-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '868a3b44-f1f6-434c-afdb-9f4e520b4e13', 'kakao', '6051688883', 'user_6051688883', '이름504',
    '닉네임504', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/13.jpg', False, 6,
    3, '504번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/504', False, '수학적 모델링, 확률, 선형대수학, 미적분',
    '2024-05-28 02:27:21', '2024-12-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ac21d31c-1b9d-4a2e-bab1-61081be571a1', 'kakao', '9750796862', 'user_9750796862', '이름505',
    '닉네임505', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/30.jpg', False, 8,
    1, '505번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/505', True, '작곡 기초, 기타, 악보 읽기',
    '2024-09-09 02:27:21', '2024-10-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '561115c0-aeec-49d5-9903-ec88fa0e3069', 'kakao', '7124672425', 'user_7124672425', '이름506',
    '닉네임506', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', False, 2,
    9, '506번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/506', False, '비즈니스 영어, 영어 회화, TOEIC, 리스닝 연습',
    '2024-06-14 02:27:21', '2025-04-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c022902e-8cb2-4f23-b84d-5f39aa0be7d3', 'naver', '4254443588', 'user_4254443588', '이름507',
    '닉네임507', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_530.jpg', True, 6,
    9, '507번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/507', True, '기타, 악보 읽기, 작곡 기초',
    '2024-07-11 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '78683a3b-674f-4c4b-860e-5e0c66a10ac5', 'google', '6185072531', 'sub', '이름508',
    '닉네임508', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/11.jpg', False, 7,
    4, '508번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/508', False, 'Kotlin, Swift, React Native',
    '2024-06-30 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '629dfb12-e69d-4b35-a37b-2c4541a4d729', 'google', '8143062737', 'sub', '이름509',
    '닉네임509', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_894.jpg', True, 7,
    1, '509번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/509', True, 'Illustrator, 시각 디자인, 브랜딩, Photoshop',
    '2024-12-02 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '98381340-5e61-4bd2-87c6-312c186854f9', 'kakao', '8328394779', 'user_8328394779', '이름510',
    '닉네임510', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/19.jpg', True, 33,
    9, '510번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/510', True, '기초 회화, 영어 문법, 영작 연습, 어휘 학습',
    '2025-02-16 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '22264fc4-b097-49ad-af3a-2d201531fb9c', 'naver', '7446038031', 'user_7446038031', '이름511',
    '닉네임511', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/12.jpg', True, 7,
    3, '511번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/511', True, '수학기초, 기본 공식, 수학문제 풀이',
    '2024-08-08 02:27:21', '2024-10-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1a324971-a993-492c-ba5a-ee563548dc64', 'naver', '7088927683', 'user_7088927683', '이름512',
    '닉네임512', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/98.jpg', True, 5,
    4, '512번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/512', True, '작곡 기초, 리듬 연습, 기타',
    '2024-11-30 02:27:21', '2024-12-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b3ae45c7-a8f2-4efe-92b5-0f779c87232d', 'kakao', '3962250931', 'user_3962250931', '이름513',
    '닉네임513', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/64.jpg', True, 1,
    25, '513번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/513', True, '영어 회화, 리스닝 연습, TOEIC',
    '2024-05-12 02:27:21', '2025-02-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2afd57e5-d4fd-4822-9cf1-95f34465d4db', 'google', '9234263694', 'sub', '이름514',
    '닉네임514', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_978.jpg', False, 35,
    14, '514번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/514', True, '근육 증대, 체중 감량, 트레이닝 피드백, 운동 루틴 계획',
    '2024-11-12 02:27:21', '2024-12-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1e493312-0d99-4fb0-90db-54e954f7524b', 'google', '7701911931', 'sub', '이름515',
    '닉네임515', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/21.jpg', False, 37,
    12, '515번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/515', False, 'UI 설계, 와이어프레임, Figma',
    '2025-02-17 02:27:21', '2025-02-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0efbb026-f796-4414-97cc-b9a9231a50c0', 'google', '2133549766', 'sub', '이름516',
    '닉네임516', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg', True, 7,
    2, '516번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/516', True, '수학문제 풀이, 기본 공식, 중등수학',
    '2025-05-11 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '664903ed-4bb3-4af2-9a4d-7ef3018f7ac2', 'naver', '1127153584', 'user_1127153584', '이름517',
    '닉네임517', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/36.jpg', True, 8,
    1, '517번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/517', True, 'JavaScript, React, HTML, CSS',
    '2024-09-15 02:27:21', '2025-03-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '275d29dd-369a-41cd-bd43-adc546bb984e', 'naver', '7270914367', 'user_7270914367', '이름518',
    '닉네임518', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_880.jpg', False, 36,
    12, '518번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/518', False, '선형대수학, 미적분, 확률, 수학적 모델링',
    '2024-07-21 02:27:21', '2024-09-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '954664dc-a0b2-4ae2-afb8-25b62a66a058', 'google', '5931229212', 'sub', '이름519',
    '닉네임519', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_119.jpg', True, 4,
    1, '519번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/519', True, 'Spring Security, JPA, Spring Boot, Spring',
    '2024-09-09 02:27:21', '2024-09-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '89bd197b-c471-4d54-af89-6b1da679f1aa', 'google', '4694699039', 'sub', '이름520',
    '닉네임520', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_321.jpg', True, 8,
    1, '520번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/520', False, '중등수학, 수학기초, 기본 공식, 수학문제 풀이',
    '2025-03-27 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2c4b2823-d46c-48b9-8ce5-43356514dfcc', 'google', '1824653199', 'sub', '이름521',
    '닉네임521', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_131.jpg', True, 5,
    5, '521번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/521', True, 'Figma, 와이어프레임, UI 설계, UX 리서치',
    '2024-12-09 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9a309650-f252-492d-8738-122466b5deb0', 'google', '8235896378', 'sub', '이름522',
    '닉네임522', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/56.jpg', False, 8,
    1, '522번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/522', False, '포스터 디자인, 디지털 일러스트, 타이포그래피, 아이콘 디자인',
    '2024-10-16 02:27:21', '2025-03-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c4e03112-b80c-4f2b-bf1a-71913496462a', 'google', '2569548451', 'sub', '이름523',
    '닉네임523', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_624.jpg', True, 35,
    2, '523번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/523', False, '수학기초, 기본 공식, 중등수학',
    '2025-01-28 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '860309dc-3f24-426b-b9ad-5312fa463b72', 'naver', '2924894723', 'user_2924894723', '이름524',
    '닉네임524', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/80.jpg', False, 38,
    1, '524번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/524', False, 'React Native, Swift, Firebase, Kotlin',
    '2025-01-03 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b86d7fa2-0d8b-4a3c-8f8c-24bce9efd63f', 'google', '6170940112', 'sub', '이름525',
    '닉네임525', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_666.jpg', False, 3,
    5, '525번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/525', True, '악보 읽기, 작곡 기초, 기타',
    '2025-03-24 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd6a350ec-9956-4cd8-a434-f62741104a87', 'naver', '9207414929', 'user_9207414929', '이름526',
    '닉네임526', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/34.jpg', True, 2,
    7, '526번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/526', False, '기타, 악보 읽기, 작곡 기초',
    '2024-08-06 02:27:21', '2024-10-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '53fd3718-da53-418d-ac91-2bdaa228bc3a', 'naver', '4072739994', 'user_4072739994', '이름527',
    '닉네임527', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_279.jpg', True, 36,
    2, '527번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/527', False, '체중 감량 운동, 근육 만들기, 운동 기록',
    '2024-11-10 02:27:21', '2025-02-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e5a3a3ea-0801-4ced-bf20-37abc400eb84', 'google', '9070032582', 'sub', '이름528',
    '닉네임528', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_933.jpg', False, 4,
    4, '528번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/528', True, 'Photoshop, Illustrator, 브랜딩',
    '2024-09-29 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a4f6dd62-ec92-49aa-bfec-ab15eeaa41f3', 'naver', '7981093347', 'user_7981093347', '이름529',
    '닉네임529', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/76.jpg', False, 5,
    3, '529번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/529', True, 'Android Studio, iOS 앱 개발, UI 디자인, Flutter',
    '2024-09-06 02:27:21', '2025-01-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d4b6be7-db08-42bf-b4da-908b5d743d41', 'kakao', '7031708632', 'user_7031708632', '이름530',
    '닉네임530', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/92.jpg', False, 33,
    5, '530번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/530', False, 'Spring Security, Spring, Spring Boot',
    '2024-11-01 02:27:21', '2025-03-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '100a4a4c-24d4-41d1-a979-7eaffb9caa9a', 'naver', '4709760457', 'user_4709760457', '이름531',
    '닉네임531', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/15.jpg', True, 34,
    7, '531번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/531', False, '체중 감량 운동, 운동 기록, 기초 운동법',
    '2025-04-26 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ae6c5624-8215-4e61-b68f-a3c3b28e4bb7', 'kakao', '9064815912', 'user_9064815912', '이름532',
    '닉네임532', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/27.jpg', True, 1,
    13, '532번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/532', False, '어휘 학습, 영작 연습, 기초 회화, 영어 문법',
    '2024-08-21 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3a4a3bc0-65db-40fa-9622-16cda6ab3129', 'google', '9659523678', 'sub', '이름533',
    '닉네임533', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_724.jpg', True, 37,
    7, '533번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/533', False, '작곡 기초, 악보 읽기, 기타, 리듬 연습',
    '2024-09-12 02:27:21', '2024-11-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b0d5176f-0b45-482f-a1db-aa4d09bf5717', 'naver', '6102327656', 'user_6102327656', '이름534',
    '닉네임534', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_234.jpg', False, 38,
    17, '534번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/534', True, '디지털 일러스트, 타이포그래피, 포스터 디자인',
    '2024-12-05 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fa6e03b6-114b-4d60-8467-71e8248ffae2', 'kakao', '3398619503', 'user_3398619503', '이름535',
    '닉네임535', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/64.jpg', True, 7,
    2, '535번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/535', True, '작곡 기초, 리듬 연습, 악보 읽기, 기타',
    '2025-03-29 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1682f2ec-79db-428c-bfbf-75732cd8487e', 'kakao', '2971829557', 'user_2971829557', '이름536',
    '닉네임536', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/5.jpg', False, 31,
    25, '536번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/536', False, 'TOEIC, 리스닝 연습, 영어 회화',
    '2024-11-09 02:27:21', '2024-11-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '371b3f83-754b-49b8-a4f3-e672be74e731', 'google', '7410082708', 'sub', '이름537',
    '닉네임537', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/95.jpg', True, 3,
    2, '537번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/537', False, '디자인 시스템, 사용자 흐름, 프로토타입',
    '2024-09-10 02:27:21', '2024-11-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8fc9d43c-6e06-410c-b4a7-f1ebf811ad4e', 'kakao', '5785346501', 'user_5785346501', '이름538',
    '닉네임538', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_262.jpg', True, 35,
    9, '538번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/538', False, '기타 기초, 리듬 맞추기, 피아노 기초',
    '2024-05-31 02:27:21', '2025-01-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bd875bbe-13de-4038-a983-687e1980043e', 'kakao', '9705445585', 'user_9705445585', '이름539',
    '닉네임539', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/24.jpg', True, 37,
    8, '539번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/539', True, '기타, 리듬 연습, 악보 읽기, 작곡 기초',
    '2025-02-03 02:27:21', '2025-03-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4b80d091-57c0-412f-a8c8-652369b0e088', 'google', '3903818830', 'sub', '이름540',
    '닉네임540', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/12.jpg', True, 34,
    1, '540번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/540', True, '비즈니스 영어, 영어 회화, 리스닝 연습',
    '2024-08-14 02:27:21', '2024-08-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '00898189-24ee-461b-be45-e2b0e142c5d6', 'kakao', '5234175111', 'user_5234175111', '이름541',
    '닉네임541', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_857.jpg', True, 8,
    1, '541번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/541', True, '수학기초, 기본 공식, 중등수학, 수학문제 풀이',
    '2024-07-06 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '97e30ddd-0a1e-4d7b-962f-16291d62eba2', 'google', '2101601499', 'sub', '이름542',
    '닉네임542', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_615.jpg', True, 8,
    1, '542번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/542', True, 'Spring Security, JPA, Spring Boot, Spring',
    '2024-12-31 02:27:21', '2025-04-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd27710d9-e384-4bea-b64b-bcf66b62e931', 'google', '2239734822', 'sub', '이름543',
    '닉네임543', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_858.jpg', True, 7,
    5, '543번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/543', True, '체중 감량, 운동 루틴 계획, 근육 증대, 트레이닝 피드백',
    '2025-03-15 02:27:21', '2025-04-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '55a59201-8fb6-450d-920a-04b837f1d388', 'naver', '3893172864', 'user_3893172864', '이름544',
    '닉네임544', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/73.jpg', True, 34,
    9, '544번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/544', False, 'HTML, JavaScript, React',
    '2025-01-28 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '34c18b40-7a13-4042-85ff-8774e3d7901e', 'google', '1767152641', 'sub', '이름545',
    '닉네임545', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/30.jpg', False, 4,
    9, '545번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/545', True, 'HTML, JavaScript, React, CSS',
    '2024-06-12 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aa1a7901-a15d-4859-95f2-f591c2edc241', 'naver', '2038131287', 'user_2038131287', '이름546',
    '닉네임546', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/22.jpg', False, 2,
    3, '546번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/546', True, '기타, 리듬 연습, 악보 읽기',
    '2024-07-23 02:27:21', '2024-09-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c6c6450e-1aa0-4c6a-8da0-067de3cdd866', 'kakao', '6025970273', 'user_6025970273', '이름547',
    '닉네임547', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_128.jpg', True, 31,
    24, '547번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/547', True, 'Spring Boot, JPA, Spring, Spring Security',
    '2024-10-15 02:27:21', '2024-10-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed0e1806-c113-4e07-a3d1-d8a13e86361c', 'naver', '6862570740', 'user_6862570740', '이름548',
    '닉네임548', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/46.jpg', True, 39,
    3, '548번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/548', False, 'Spring Boot, JPA, Spring',
    '2024-07-02 02:27:21', '2025-03-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6efba255-ecdd-4e53-8570-000ec216ef65', 'google', '6833128904', 'sub', '이름549',
    '닉네임549', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/88.jpg', False, 35,
    20, '549번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/549', True, 'Android Studio, iOS 앱 개발, UI 디자인',
    '2025-02-17 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c2238d23-97a7-45d4-ac2f-10b26d93b776', 'kakao', '7990386348', 'user_7990386348', '이름550',
    '닉네임550', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/18.jpg', True, 31,
    10, '550번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/550', True, '버튼 디자인, 프로토타입, 디자인 시스템, 사용자 흐름',
    '2024-06-17 02:27:21', '2024-11-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '110a2c83-a5f7-4b61-9055-c2fe1f9cf822', 'naver', '3738618156', 'user_3738618156', '이름551',
    '닉네임551', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/40.jpg', True, 8,
    1, '551번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/551', False, '체중 감량, 근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2024-10-01 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '625e4afc-6f51-4d75-8e50-1e92544c1142', 'naver', '1923459242', 'user_1923459242', '이름552',
    '닉네임552', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/97.jpg', False, 33,
    10, '552번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/552', True, '수학기초, 기본 공식, 수학문제 풀이',
    '2024-10-09 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '563de07b-6250-490c-958e-bc2ba53aa7a4', 'naver', '1835226412', 'user_1835226412', '이름553',
    '닉네임553', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/21.jpg', True, 5,
    5, '553번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/553', False, '기타 기초, 피아노 기초, 기본 코드',
    '2024-10-06 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7c3db7d2-9958-401c-999f-1fe5e93dd4f0', 'naver', '3151358698', 'user_3151358698', '이름554',
    '닉네임554', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/41.jpg', False, 35,
    2, '554번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/554', False, 'UI 설계, Figma, UX 리서치',
    '2024-10-31 02:27:21', '2024-11-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6cf3325c-47f5-4bfa-91fa-d5ed48668259', 'google', '6369508800', 'sub', '이름555',
    '닉네임555', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_420.jpg', True, 33,
    1, '555번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/555', False, '악보 읽기, 기타, 리듬 연습',
    '2025-01-20 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ea594c4d-772b-44a4-bcb2-2158d5314cbc', 'kakao', '5784784543', 'user_5784784543', '이름556',
    '닉네임556', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_570.jpg', False, 5,
    5, '556번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/556', True, '기타 기초, 피아노 기초, 기본 코드',
    '2024-10-14 02:27:21', '2024-12-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1761b836-f266-4f60-8ed4-7bcaca01ad77', 'google', '5535631081', 'sub', '이름557',
    '닉네임557', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/13.jpg', True, 2,
    1, '557번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/557', False, '영어 회화, 리스닝 연습, TOEIC, 비즈니스 영어',
    '2025-01-03 02:27:21', '2025-02-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6d0f10a9-bacf-4217-93d5-d2119caebd9f', 'naver', '2082559109', 'user_2082559109', '이름558',
    '닉네임558', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_740.jpg', False, 6,
    3, '558번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/558', False, 'HTML, React, CSS, JavaScript',
    '2024-11-30 02:27:21', '2025-02-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4547841e-33eb-4a62-a08a-697b3fc8bc75', 'kakao', '8023485033', 'user_8023485033', '이름559',
    '닉네임559', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/87.jpg', True, 7,
    4, '559번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/559', True, '아이콘 디자인, 포스터 디자인, 타이포그래피, 디지털 일러스트',
    '2024-06-16 02:27:21', '2025-03-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c839317d-53e0-4278-a255-8f8dfc92a0ae', 'naver', '5795292510', 'user_5795292510', '이름560',
    '닉네임560', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/55.jpg', False, 4,
    3, '560번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/560', True, '버튼 디자인, 프로토타입, 디자인 시스템, 사용자 흐름',
    '2024-07-18 02:27:21', '2024-07-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '643a47ce-ce55-496e-8b5e-37ab8a7b2532', 'naver', '2526195675', 'user_2526195675', '이름561',
    '닉네임561', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/21.jpg', False, 2,
    3, '561번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/561', True, 'React, JavaScript, HTML',
    '2025-02-27 02:27:21', '2025-04-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'abe90782-d5dd-4ff5-b83e-d5e7e262c297', 'google', '7829954181', 'sub', '이름562',
    '닉네임562', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/99.jpg', False, 37,
    4, '562번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/562', True, 'Spring Security, Spring, JPA',
    '2024-06-19 02:27:21', '2024-12-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '32ac310a-2ddd-47e7-9976-1042cf45e887', 'kakao', '4705080850', 'user_4705080850', '이름563',
    '닉네임563', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg', True, 35,
    7, '563번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/563', False, '운동 기록, 체중 감량 운동, 기초 운동법, 근육 만들기',
    '2025-01-30 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '791820a1-a1eb-402f-b42c-b5fa466ff4be', 'kakao', '3936957986', 'user_3936957986', '이름564',
    '닉네임564', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_418.jpg', False, 37,
    7, '564번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/564', True, '비즈니스 영어, 리스닝 연습, TOEIC, 영어 회화',
    '2025-03-27 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '320163a2-a9b8-408f-a79d-f250c09fabee', 'naver', '2214431183', 'user_2214431183', '이름565',
    '닉네임565', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', False, 32,
    6, '565번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/565', True, 'UX 리서치, Figma, UI 설계, 와이어프레임',
    '2024-05-15 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd3a001ed-5a28-4cec-8cbe-fee4fc0ef2fb', 'google', '7591947260', 'sub', '이름566',
    '닉네임566', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/64.jpg', True, 38,
    1, '566번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/566', True, 'UI 디자인, iOS 앱 개발, Flutter',
    '2024-10-11 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '25bb7c20-8e4b-41a0-9e33-3e2264b1004d', 'google', '5935775909', 'sub', '이름567',
    '닉네임567', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/99.jpg', False, 36,
    17, '567번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/567', False, '체중 감량, 근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2025-03-05 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '08e0959f-ddc5-4c52-997c-a8b70fc6a76d', 'naver', '1490572963', 'user_1490572963', '이름568',
    '닉네임568', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/90.jpg', False, 31,
    5, '568번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/568', True, 'Firebase, React Native, Kotlin, Swift',
    '2024-07-08 02:27:21', '2024-12-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3236e5b6-1de8-4077-be36-55e0b5a84f79', 'google', '7115160703', 'sub', '이름569',
    '닉네임569', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/18.jpg', True, 2,
    5, '569번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/569', True, '중등수학, 기본 공식, 수학기초, 수학문제 풀이',
    '2025-03-10 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3a9409b5-86f2-47ab-856b-fccc287d3340', 'google', '2104198823', 'sub', '이름570',
    '닉네임570', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_984.jpg', True, 34,
    3, '570번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/570', True, '운동 기록, 체중 감량 운동, 근육 만들기',
    '2024-05-18 02:27:21', '2024-10-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '44a25b7a-625b-4fe8-98f4-7cf16a35944c', 'google', '3192585885', 'sub', '이름571',
    '닉네임571', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_599.jpg', False, 33,
    8, '571번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/571', True, 'React Native, Swift, Firebase, Kotlin',
    '2024-09-25 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ea4945ae-9cb5-4e55-bc74-5abc2deeeac0', 'google', '2787670468', 'sub', '이름572',
    '닉네임572', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/78.jpg', True, 7,
    1, '572번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/572', False, 'Android Studio, Flutter, iOS 앱 개발, UI 디자인',
    '2025-03-28 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '750bff88-75eb-4e63-bd28-0d8057f8d084', 'google', '9567150385', 'sub', '이름573',
    '닉네임573', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/72.jpg', True, 37,
    11, '573번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/573', False, '수학기초, 기본 공식, 수학문제 풀이',
    '2025-03-03 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6c2f8290-6d26-4f64-b205-e75cc5eb17d3', 'kakao', '9462329877', 'user_9462329877', '이름574',
    '닉네임574', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/55.jpg', True, 35,
    18, '574번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/574', False, '타이포그래피, 포스터 디자인, 디지털 일러스트, 아이콘 디자인',
    '2024-11-08 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'afa10141-a9fa-4295-86ed-c55abfb61355', 'kakao', '4241483286', 'user_4241483286', '이름575',
    '닉네임575', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_315.jpg', False, 37,
    11, '575번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/575', True, 'JavaScript, React, CSS, HTML',
    '2025-02-21 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ee787291-d277-4a93-afcd-b6c6593c1a19', 'kakao', '6752742709', 'user_6752742709', '이름576',
    '닉네임576', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_925.jpg', False, 1,
    23, '576번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/576', False, '버튼 디자인, 디자인 시스템, 프로토타입',
    '2024-05-22 02:27:21', '2024-09-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c7c7d68a-47ac-4323-88b9-857102849f92', 'kakao', '6655574780', 'user_6655574780', '이름577',
    '닉네임577', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/29.jpg', True, 8,
    1, '577번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/577', True, '작곡 기초, 리듬 연습, 악보 읽기, 기타',
    '2025-02-04 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2df3e18e-db84-498a-a34f-52fc22a0039a', 'kakao', '6193861816', 'user_6193861816', '이름578',
    '닉네임578', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/22.jpg', True, 35,
    3, '578번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/578', True, 'UI 디자인, Android Studio, Flutter',
    '2024-08-28 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '709197c9-8545-4a24-89dc-f5c68cc2c1ee', 'naver', '3840347204', 'user_3840347204', '이름579',
    '닉네임579', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/72.jpg', True, 33,
    4, '579번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/579', False, 'Flutter, Android Studio, iOS 앱 개발, UI 디자인',
    '2024-09-08 02:27:21', '2024-12-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '992d73da-c4da-4326-8955-63f23883252c', 'naver', '2580521954', 'user_2580521954', '이름580',
    '닉네임580', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/65.jpg', False, 7,
    5, '580번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/580', True, 'iOS 앱 개발, UI 디자인, Android Studio',
    '2025-04-14 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2b77c9f6-bd59-47ba-9ff7-f0a70c7259f1', 'naver', '8100526239', 'user_8100526239', '이름581',
    '닉네임581', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/34.jpg', True, 35,
    12, '581번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/581', True, '영어 회화, 리스닝 연습, TOEIC',
    '2024-12-12 02:27:21', '2024-12-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '04af09c9-4994-4ef5-93f6-59c95fc866ec', 'naver', '5841278765', 'user_5841278765', '이름582',
    '닉네임582', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/76.jpg', False, 34,
    3, '582번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/582', True, '중등수학, 수학문제 풀이, 수학기초',
    '2024-07-22 02:27:21', '2024-09-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9aea65f6-5c2a-4d81-9f2d-2766f45fc8ed', 'google', '9650904729', 'sub', '이름583',
    '닉네임583', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_939.jpg', True, 31,
    22, '583번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/583', False, '리스닝 연습, TOEIC, 영어 회화, 비즈니스 영어',
    '2025-02-11 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8daa6d03-9d08-408b-a62f-7084e29d67be', 'naver', '7524663135', 'user_7524663135', '이름584',
    '닉네임584', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_357.jpg', True, 31,
    3, '584번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/584', True, 'Flutter, iOS 앱 개발, Android Studio, UI 디자인',
    '2024-12-13 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f8006b5c-8eea-4fd1-9866-ae4071e78f10', 'naver', '9030437960', 'user_9030437960', '이름585',
    '닉네임585', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/97.jpg', True, 2,
    9, '585번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/585', False, '확률, 선형대수학, 미적분, 수학적 모델링',
    '2024-07-05 02:27:21', '2025-01-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '679bb967-fc66-4a05-af39-3fdded5532c0', 'kakao', '6810648860', 'user_6810648860', '이름586',
    '닉네임586', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/85.jpg', True, 7,
    1, '586번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/586', True, 'Kotlin, Firebase, React Native',
    '2024-07-19 02:27:21', '2024-10-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cbaff449-8df8-46b4-bd4a-49f5611951ca', 'naver', '1189768955', 'user_1189768955', '이름587',
    '닉네임587', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_150.jpg', False, 33,
    9, '587번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/587', False, 'CSS, JavaScript, HTML, React',
    '2025-04-29 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3f66a053-238f-41b5-a814-635849fe2f3b', 'naver', '6413869841', 'user_6413869841', '이름588',
    '닉네임588', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_539.jpg', True, 2,
    8, '588번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/588', True, '체중 감량, 근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2024-12-07 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '24ddd0f4-a568-42d2-aedb-cf2e1e773a6c', 'kakao', '6052365320', 'user_6052365320', '이름589',
    '닉네임589', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/29.jpg', False, 6,
    9, '589번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/589', True, 'Firebase, React Native, Swift, Kotlin',
    '2025-04-05 02:27:21', '2025-04-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'abc6edca-75a7-4c65-a8f5-00bee453cc7e', 'kakao', '9377615927', 'user_9377615927', '이름590',
    '닉네임590', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_847.jpg', True, 34,
    12, '590번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/590', True, 'React, HTML, JavaScript, CSS',
    '2025-03-24 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd42bc8e0-c948-473b-ab9c-0946bb4c48d4', 'naver', '9333976420', 'user_9333976420', '이름591',
    '닉네임591', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/34.jpg', False, 37,
    10, '591번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/591', True, '영작 연습, 영어 문법, 기초 회화, 어휘 학습',
    '2024-06-16 02:27:21', '2024-11-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '319ac16d-eb78-4249-b2b6-1731a0197595', 'kakao', '6509404379', 'user_6509404379', '이름592',
    '닉네임592', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_191.jpg', True, 37,
    7, '592번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/592', True, '어휘 학습, 영어 문법, 영작 연습, 기초 회화',
    '2025-01-10 02:27:21', '2025-04-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9cf03c73-26e7-42c2-9257-a21553b0186f', 'kakao', '6993653271', 'user_6993653271', '이름593',
    '닉네임593', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/24.jpg', True, 37,
    13, '593번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/593', False, 'UX 리서치, 와이어프레임, Figma, UI 설계',
    '2024-11-21 02:27:21', '2025-02-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b5568e1b-222f-4372-b91a-bdfc2061b148', 'google', '3006531071', 'sub', '이름594',
    '닉네임594', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/61.jpg', False, 1,
    12, '594번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/594', False, '피아노 기초, 기타 기초, 기본 코드, 리듬 맞추기',
    '2024-07-31 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f894c6c0-3001-42f6-91c1-272f89d9aa13', 'google', '9257731247', 'sub', '이름595',
    '닉네임595', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_301.jpg', False, 6,
    1, '595번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/595', True, '버튼 디자인, 디자인 시스템, 사용자 흐름',
    '2025-03-11 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b777fa3d-15bd-43ff-b592-9068382ffa23', 'kakao', '4964536247', 'user_4964536247', '이름596',
    '닉네임596', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/52.jpg', False, 39,
    3, '596번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/596', False, '와이어프레임, UX 리서치, Figma, UI 설계',
    '2024-05-17 02:27:21', '2024-12-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '42819d32-52a0-4ae6-8a1e-81bc7f307fd9', 'google', '3984635907', 'sub', '이름597',
    '닉네임597', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/5.jpg', False, 39,
    1, '597번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/597', True, '영어 회화, 리스닝 연습, 비즈니스 영어, TOEIC',
    '2024-12-11 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cee0ea3b-499d-4ab8-8635-0370769846de', 'kakao', '2850925977', 'user_2850925977', '이름598',
    '닉네임598', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', True, 6,
    6, '598번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/598', True, '기초 회화, 어휘 학습, 영어 문법',
    '2025-01-29 02:27:21', '2025-02-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '61f2c17f-378e-4321-9551-564c91315cf7', 'naver', '3681250264', 'user_3681250264', '이름599',
    '닉네임599', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/18.jpg', True, 33,
    7, '599번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/599', True, '근육 증대, 운동 루틴 계획, 트레이닝 피드백',
    '2024-08-03 02:27:21', '2024-10-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1f95f00b-bb98-4de8-a0c6-ce5fbfb599a7', 'google', '4926103346', 'sub', '이름600',
    '닉네임600', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_288.jpg', True, 3,
    1, '600번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/600', True, 'JavaScript, CSS, React, HTML',
    '2024-07-27 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ce6021a7-9a56-42be-9c90-f1bca66323c0', 'kakao', '4898614697', 'user_4898614697', '이름601',
    '닉네임601', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_848.jpg', True, 5,
    3, '601번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/601', False, 'Kotlin, Firebase, React Native, Swift',
    '2025-03-20 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b7b7c02f-8cae-415d-8b54-c2f3275ce28a', 'google', '8161999851', 'sub', '이름602',
    '닉네임602', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/74.jpg', False, 7,
    4, '602번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/602', False, '디자인 시스템, 사용자 흐름, 버튼 디자인',
    '2024-05-30 02:27:21', '2025-01-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a05d1387-0510-49a2-b471-eefb59a6c5b2', 'kakao', '5802862959', 'user_5802862959', '이름603',
    '닉네임603', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_774.jpg', False, 2,
    3, '603번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/603', False, '디지털 일러스트, 아이콘 디자인, 포스터 디자인, 타이포그래피',
    '2024-09-08 02:27:21', '2024-10-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f98b5b99-ed8e-43b0-b740-3edd55704787', 'google', '7156585587', 'sub', '이름604',
    '닉네임604', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/4.jpg', True, 34,
    14, '604번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/604', False, 'Photoshop, 시각 디자인, 브랜딩',
    '2025-01-08 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '79c7b410-9e9a-4a5f-b5bd-40816d6312cc', 'google', '4711767053', 'sub', '이름605',
    '닉네임605', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_678.jpg', True, 33,
    12, '605번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/605', True, '디자인 시스템, 프로토타입, 버튼 디자인, 사용자 흐름',
    '2024-08-07 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ad605f74-3d1a-4962-9437-ee335563b461', 'naver', '1063179259', 'user_1063179259', '이름606',
    '닉네임606', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/59.jpg', True, 31,
    29, '606번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/606', False, 'Spring, JPA, Spring Boot',
    '2025-03-31 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '49025830-51fc-4dca-b333-ca4eccc299c1', 'naver', '9079357547', 'user_9079357547', '이름607',
    '닉네임607', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_779.jpg', False, 2,
    4, '607번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/607', True, '수학적 모델링, 확률, 미적분',
    '2024-10-14 02:27:21', '2024-11-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e4074983-0d49-4e06-b730-67cd60346074', 'naver', '1916185490', 'user_1916185490', '이름608',
    '닉네임608', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/69.jpg', False, 34,
    3, '608번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/608', True, '수학적 모델링, 확률, 선형대수학',
    '2024-08-21 02:27:21', '2024-11-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd1eaab2e-705a-4ebb-92ba-bccfcaa1e9cf', 'google', '9191475960', 'sub', '이름609',
    '닉네임609', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/80.jpg', False, 38,
    4, '609번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/609', True, '포스터 디자인, 디지털 일러스트, 타이포그래피',
    '2024-05-29 02:27:21', '2025-01-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4788414b-59bb-44a8-9d5d-0fda464953fa', 'kakao', '4118479394', 'user_4118479394', '이름610',
    '닉네임610', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/7.jpg', False, 37,
    12, '610번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/610', False, 'Spring Boot, Spring Security, Spring, JPA',
    '2025-04-27 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7bc20a0e-b06b-48e4-89b9-90a9326216db', 'naver', '8325830197', 'user_8325830197', '이름611',
    '닉네임611', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/21.jpg', False, 32,
    9, '611번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/611', True, '기초 운동법, 운동 기록, 체중 감량 운동',
    '2025-04-04 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fbd8777b-c6b1-41a1-81c3-919c1568407d', 'naver', '6829125930', 'user_6829125930', '이름612',
    '닉네임612', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_663.jpg', True, 32,
    14, '612번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/612', False, '수학기초, 기본 공식, 중등수학',
    '2025-01-09 02:27:21', '2025-02-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d9d0663-70b5-4751-84b0-09d4c72e387d', 'naver', '6396012656', 'user_6396012656', '이름613',
    '닉네임613', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/30.jpg', True, 7,
    1, '613번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/613', True, 'Spring Security, Spring, JPA',
    '2024-06-14 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c1587fce-8654-4058-9b0f-dedae467baa5', 'kakao', '2651373090', 'user_2651373090', '이름614',
    '닉네임614', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/67.jpg', True, 38,
    19, '614번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/614', False, 'Flutter, iOS 앱 개발, Android Studio',
    '2024-09-22 02:27:21', '2024-11-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '80fbec98-676a-4133-9471-08e99c0dc891', 'kakao', '2225070820', 'user_2225070820', '이름615',
    '닉네임615', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_638.jpg', True, 36,
    2, '615번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/615', True, '디지털 일러스트, 포스터 디자인, 타이포그래피',
    '2024-08-18 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6b2493e2-826a-45fb-b892-218ad3ff4f78', 'naver', '5917480468', 'user_5917480468', '이름616',
    '닉네임616', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_322.jpg', True, 6,
    14, '616번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/616', False, '사용자 흐름, 버튼 디자인, 디자인 시스템',
    '2024-08-29 02:27:21', '2025-01-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5aedb9fc-54fe-4460-85d0-8f85b1ec6a9c', 'naver', '4032384807', 'user_4032384807', '이름617',
    '닉네임617', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/87.jpg', True, 38,
    20, '617번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/617', True, '기초 회화, 영어 문법, 영작 연습, 어휘 학습',
    '2024-08-09 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '41b4fc37-0fc7-4743-bab8-058e10495341', 'kakao', '8440770118', 'user_8440770118', '이름618',
    '닉네임618', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_202.jpg', False, 3,
    1, '618번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/618', True, 'JPA, Spring Security, Spring',
    '2025-04-25 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'eca1eda9-1ce9-46c8-b97c-326b886831da', 'google', '3763952498', 'sub', '이름619',
    '닉네임619', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_649.jpg', True, 39,
    1, '619번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/619', False, 'React Native, Firebase, Swift, Kotlin',
    '2024-12-19 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd96c9a0f-5d87-4400-987d-47df6f89b12a', 'google', '7619229035', 'sub', '이름620',
    '닉네임620', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/51.jpg', False, 6,
    15, '620번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/620', False, '영어 회화, 비즈니스 영어, TOEIC, 리스닝 연습',
    '2025-03-16 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3451fcfa-1764-43f3-952c-5635fcd93769', 'google', '3461418980', 'sub', '이름621',
    '닉네임621', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/71.jpg', False, 34,
    4, '621번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/621', False, 'JavaScript, HTML, React',
    '2025-04-26 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2f5cebe1-86d0-40e3-b181-8b32be16cce4', 'naver', '5899149845', 'user_5899149845', '이름622',
    '닉네임622', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/26.jpg', True, 34,
    16, '622번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/622', True, 'JavaScript, React, HTML',
    '2024-07-29 02:27:21', '2024-08-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a6e3c8ed-6edd-4873-aa5a-cfb0498ae91d', 'google', '2982233023', 'sub', '이름623',
    '닉네임623', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_189.jpg', False, 5,
    1, '623번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/623', False, '악보 읽기, 리듬 연습, 기타',
    '2025-02-04 02:27:21', '2025-02-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a8566c4d-8ab1-4242-9585-7918b915d8cf', 'naver', '1429221966', 'user_1429221966', '이름624',
    '닉네임624', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/80.jpg', True, 38,
    21, '624번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/624', False, 'UX 리서치, 와이어프레임, UI 설계, Figma',
    '2025-01-20 02:27:21', '2025-02-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dc5b3b4c-9719-45de-9229-f6eed90d7b08', 'kakao', '1447983794', 'user_1447983794', '이름625',
    '닉네임625', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/23.jpg', False, 7,
    3, '625번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/625', False, '확률, 수학적 모델링, 선형대수학, 미적분',
    '2025-02-23 02:27:21', '2025-03-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5654a34d-e71a-4ad3-b407-fe380620dcad', 'naver', '7179778929', 'user_7179778929', '이름626',
    '닉네임626', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/23.jpg', True, 6,
    3, '626번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/626', True, 'Photoshop, 브랜딩, 시각 디자인, Illustrator',
    '2024-08-11 02:27:21', '2024-09-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ec3ae07a-0b65-4969-b967-2c69a1be661d', 'naver', '1750942687', 'user_1750942687', '이름627',
    '닉네임627', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_158.jpg', False, 31,
    7, '627번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/627', False, 'React, JavaScript, CSS',
    '2024-07-17 02:27:21', '2024-12-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '568dc30a-5ba4-4e12-853d-10d3a8d67f08', 'google', '9457023245', 'sub', '이름628',
    '닉네임628', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_287.jpg', True, 6,
    10, '628번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/628', False, 'TOEIC, 리스닝 연습, 비즈니스 영어, 영어 회화',
    '2025-02-27 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8a5fae3e-f21b-43cd-849a-6b4d06a5dbeb', 'naver', '2340054806', 'user_2340054806', '이름629',
    '닉네임629', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_756.jpg', True, 2,
    7, '629번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/629', True, '와이어프레임, Figma, UI 설계',
    '2024-08-28 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e72e6533-4913-4895-b7b2-befd15d4ecff', 'google', '2344586963', 'sub', '이름630',
    '닉네임630', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_837.jpg', True, 3,
    4, '630번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/630', True, 'UX 리서치, UI 설계, Figma',
    '2024-12-19 02:27:21', '2025-04-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed07fb00-63a6-40e6-b894-accf314ec99b', 'kakao', '5199954160', 'user_5199954160', '이름631',
    '닉네임631', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/90.jpg', True, 3,
    5, '631번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/631', False, '수학문제 풀이, 중등수학, 기본 공식, 수학기초',
    '2024-07-05 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e9ce5fe1-9ad4-466f-b9be-1447435ef68a', 'google', '2013097638', 'sub', '이름632',
    '닉네임632', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_424.jpg', False, 1,
    18, '632번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/632', False, 'JavaScript, HTML, CSS',
    '2024-07-29 02:27:21', '2025-04-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f0e7a0ee-0ff2-4906-868e-b9c3d82abbcc', 'naver', '3038924766', 'user_3038924766', '이름633',
    '닉네임633', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/32.jpg', False, 2,
    8, '633번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/633', False, 'Swift, Firebase, React Native',
    '2024-09-13 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '29c3fb61-e04a-4760-9b76-deab66533c66', 'naver', '1450942437', 'user_1450942437', '이름634',
    '닉네임634', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/61.jpg', False, 8,
    1, '634번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/634', False, 'Flutter, iOS 앱 개발, Android Studio',
    '2025-02-22 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1b5aac36-36f8-4c8b-87c4-2c26167cd1c9', 'naver', '6116006289', 'user_6116006289', '이름635',
    '닉네임635', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/5.jpg', False, 2,
    6, '635번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/635', True, '리듬 연습, 작곡 기초, 기타',
    '2025-05-11 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '16a91009-6adc-4109-8426-1d117934f862', 'naver', '4793028107', 'user_4793028107', '이름636',
    '닉네임636', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/4.jpg', False, 34,
    6, '636번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/636', False, '기초 운동법, 근육 만들기, 체중 감량 운동',
    '2024-11-06 02:27:21', '2024-11-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aff2b55b-9330-4661-9479-2e99b5b3e893', 'kakao', '5647996655', 'user_5647996655', '이름637',
    '닉네임637', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/31.jpg', True, 5,
    3, '637번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/637', True, 'UX 리서치, UI 설계, 와이어프레임, Figma',
    '2025-01-16 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e291627d-d00c-442a-baf5-6e349036a38b', 'naver', '4808817201', 'user_4808817201', '이름638',
    '닉네임638', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/97.jpg', True, 33,
    7, '638번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/638', True, 'Spring Boot, Spring Security, JPA',
    '2025-01-12 02:27:21', '2025-01-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '895ed5b0-298a-459e-8a26-30c91c332f41', 'naver', '8511159955', 'user_8511159955', '이름639',
    '닉네임639', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/57.jpg', False, 2,
    5, '639번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/639', False, '수학문제 풀이, 중등수학, 수학기초',
    '2024-10-05 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02fff077-5ede-4922-9bc1-cd5af6f54a78', 'google', '7833106445', 'sub', '이름640',
    '닉네임640', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg', False, 6,
    4, '640번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/640', False, '기본 코드, 리듬 맞추기, 기타 기초',
    '2024-10-25 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b3bddd1c-f2f8-4dc1-a22f-106d573f5dd4', 'google', '5039879110', 'sub', '이름641',
    '닉네임641', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/30.jpg', True, 39,
    1, '641번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/641', True, 'UI 디자인, Flutter, Android Studio, iOS 앱 개발',
    '2025-03-23 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26825aa8-55d2-4cb9-b1ac-4810a387e25a', 'kakao', '1742786992', 'user_1742786992', '이름642',
    '닉네임642', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_578.jpg', True, 7,
    4, '642번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/642', True, '기타, 리듬 연습, 작곡 기초',
    '2024-06-22 02:27:21', '2024-10-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0bdb6715-74b8-4869-a4ea-e9563ac4600d', 'naver', '4219329273', 'user_4219329273', '이름643',
    '닉네임643', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/37.jpg', True, 39,
    3, '643번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/643', False, '트레이닝 피드백, 근육 증대, 체중 감량',
    '2024-07-27 02:27:21', '2024-10-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f260d99a-b6e8-407b-b573-b141c303ca60', 'kakao', '5960792319', 'user_5960792319', '이름644',
    '닉네임644', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/97.jpg', False, 38,
    20, '644번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/644', True, 'UX 리서치, 와이어프레임, Figma, UI 설계',
    '2025-02-17 02:27:21', '2025-03-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c124880c-4440-4869-a364-b84a607b9611', 'naver', '9106778845', 'user_9106778845', '이름645',
    '닉네임645', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/97.jpg', False, 3,
    4, '645번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/645', True, '리스닝 연습, TOEIC, 비즈니스 영어, 영어 회화',
    '2024-09-08 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '70e70771-a94f-46d9-8489-989fb859ba49', 'kakao', '9538331996', 'user_9538331996', '이름646',
    '닉네임646', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_567.jpg', False, 3,
    3, '646번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/646', False, '기타 기초, 리듬 맞추기, 피아노 기초, 기본 코드',
    '2024-09-26 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c95624cb-832e-4e2c-aeb5-3c2c109b6a4b', 'google', '5055553019', 'sub', '이름647',
    '닉네임647', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_746.jpg', False, 3,
    1, '647번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/647', False, '피아노 기초, 기타 기초, 기본 코드, 리듬 맞추기',
    '2025-02-15 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7da9466a-cd0d-4023-8409-d52008732b6f', 'kakao', '3313030639', 'user_3313030639', '이름648',
    '닉네임648', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/8.jpg', True, 33,
    5, '648번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/648', False, '기본 공식, 중등수학, 수학문제 풀이, 수학기초',
    '2024-12-23 02:27:21', '2025-02-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '574a39b3-a9de-4929-8287-4c955d0e0ced', 'google', '4909672771', 'sub', '이름649',
    '닉네임649', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_118.jpg', False, 32,
    1, '649번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/649', True, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-11-27 02:27:21', '2024-12-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '053729ba-7b8b-4f53-a0a8-332e5a372454', 'naver', '5296254686', 'user_5296254686', '이름650',
    '닉네임650', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/47.jpg', True, 38,
    3, '650번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/650', True, '포스터 디자인, 아이콘 디자인, 디지털 일러스트',
    '2024-06-25 02:27:21', '2024-09-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7f0f9afb-0370-44ac-8cc4-fa84d9cea1aa', 'naver', '9684754284', 'user_9684754284', '이름651',
    '닉네임651', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_507.jpg', True, 3,
    2, '651번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/651', True, '기타 기초, 기본 코드, 피아노 기초',
    '2024-07-15 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '12d99a15-e7c3-4081-8df5-6e2949726bb5', 'google', '3592118227', 'sub', '이름652',
    '닉네임652', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_529.jpg', False, 31,
    27, '652번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/652', True, '영작 연습, 기초 회화, 어휘 학습',
    '2024-10-20 02:27:21', '2025-01-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8c36eb0c-377a-4903-b778-1b45b1497e91', 'naver', '3621909333', 'user_3621909333', '이름653',
    '닉네임653', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/12.jpg', False, 39,
    1, '653번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/653', False, '수학적 모델링, 선형대수학, 확률',
    '2025-01-09 02:27:21', '2025-03-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a207ddfc-2aba-451b-b3d3-62866e6779b7', 'google', '7972129125', 'sub', '이름654',
    '닉네임654', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_540.jpg', True, 35,
    18, '654번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/654', False, 'Android Studio, UI 디자인, iOS 앱 개발, Flutter',
    '2024-05-25 02:27:21', '2024-12-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1fd13676-67a4-46cf-be04-ac7429ab5538', 'kakao', '3539771223', 'user_3539771223', '이름655',
    '닉네임655', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_905.jpg', False, 1,
    24, '655번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/655', False, '근육 증대, 운동 루틴 계획, 트레이닝 피드백, 체중 감량',
    '2025-03-19 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2598a04d-345c-4f09-98f4-2f1134f9039a', 'naver', '7603487620', 'user_7603487620', '이름656',
    '닉네임656', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/84.jpg', True, 36,
    14, '656번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/656', True, '근육 만들기, 체중 감량 운동, 기초 운동법',
    '2025-02-13 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '27434a70-12ea-42e6-bf2f-971cba98d0e1', 'naver', '1242361912', 'user_1242361912', '이름657',
    '닉네임657', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_832.jpg', False, 5,
    1, '657번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/657', True, 'Kotlin, Swift, React Native, Firebase',
    '2024-06-10 02:27:21', '2024-12-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6c5a6c20-78b6-4921-b5df-d5b11f6de8f3', 'google', '2126473705', 'sub', '이름658',
    '닉네임658', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/69.jpg', True, 4,
    3, '658번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/658', True, '와이어프레임, Figma, UX 리서치',
    '2024-11-07 02:27:21', '2025-01-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02d2b537-c8a6-4005-8ea2-3cf17146360e', 'naver', '1252003839', 'user_1252003839', '이름659',
    '닉네임659', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_564.jpg', False, 5,
    2, '659번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/659', True, 'CSS, HTML, JavaScript',
    '2025-03-01 02:27:21', '2025-04-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8f9765dc-c913-4cd9-b331-32bb2509ddc7', 'kakao', '9909514361', 'user_9909514361', '이름660',
    '닉네임660', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/96.jpg', True, 34,
    14, '660번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/660', True, 'Kotlin, React Native, Swift',
    '2025-04-08 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '96a6d665-503b-466c-95e4-8c7391f351af', 'kakao', '5918654742', 'user_5918654742', '이름661',
    '닉네임661', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_611.jpg', True, 39,
    2, '661번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/661', False, 'Illustrator, 브랜딩, 시각 디자인',
    '2024-12-28 02:27:21', '2025-03-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '54f1fc31-70d5-4c5b-8e3a-2ef05d9f4b63', 'kakao', '5756563579', 'user_5756563579', '이름662',
    '닉네임662', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/90.jpg', True, 39,
    2, '662번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/662', True, 'Photoshop, 브랜딩, Illustrator, 시각 디자인',
    '2024-05-16 02:27:21', '2024-06-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ba75f032-a2af-47b5-9a42-7c1e3cf6a46b', 'google', '6364986121', 'sub', '이름663',
    '닉네임663', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/41.jpg', False, 2,
    6, '663번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/663', True, 'iOS 앱 개발, Flutter, UI 디자인, Android Studio',
    '2024-11-05 02:27:21', '2025-01-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e11b8ee4-23d4-48c4-8c11-ee877c798f95', 'naver', '9197075814', 'user_9197075814', '이름664',
    '닉네임664', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/21.jpg', True, 35,
    10, '664번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/664', False, '시각 디자인, Photoshop, Illustrator',
    '2025-04-22 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4f345c8a-c6a0-4251-863f-079610034888', 'kakao', '7953007431', 'user_7953007431', '이름665',
    '닉네임665', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/91.jpg', True, 37,
    4, '665번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/665', True, '디자인 시스템, 버튼 디자인, 사용자 흐름',
    '2025-03-09 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9db915c4-840a-4db1-9ae4-1ff36a818000', 'google', '9708941584', 'sub', '이름666',
    '닉네임666', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/47.jpg', True, 36,
    1, '666번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/666', True, '디자인 시스템, 사용자 흐름, 버튼 디자인, 프로토타입',
    '2024-07-22 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5321eea2-269b-44b9-beb4-60e976cb8777', 'naver', '8082642127', 'user_8082642127', '이름667',
    '닉네임667', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/66.jpg', True, 33,
    4, '667번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/667', True, 'UI 설계, Figma, 와이어프레임, UX 리서치',
    '2024-08-26 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aef897d7-ded5-4e0a-a65b-fa716895501c', 'google', '3788665276', 'sub', '이름668',
    '닉네임668', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_761.jpg', False, 7,
    4, '668번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/668', True, '확률, 선형대수학, 수학적 모델링, 미적분',
    '2024-07-12 02:27:21', '2025-04-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7d1ceae0-48f2-4563-8e01-ee9118c5993e', 'google', '8536409986', 'sub', '이름669',
    '닉네임669', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_388.jpg', True, 37,
    7, '669번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/669', False, 'Firebase, Kotlin, Swift',
    '2024-07-30 02:27:21', '2025-02-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2efebfda-d036-46b8-bb5b-f9b9131d73f3', 'kakao', '9258171609', 'user_9258171609', '이름670',
    '닉네임670', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/91.jpg', True, 3,
    2, '670번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/670', False, '기초 운동법, 운동 기록, 근육 만들기',
    '2025-04-27 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '94c99146-1333-4a24-9a4b-f6e9ae9341bb', 'kakao', '7719688178', 'user_7719688178', '이름671',
    '닉네임671', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_357.jpg', True, 8,
    1, '671번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/671', False, '어휘 학습, 기초 회화, 영어 문법, 영작 연습',
    '2025-05-06 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5400a3d7-08e6-479b-8e55-c5d3f931e56f', 'google', '8075232648', 'sub', '이름672',
    '닉네임672', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/38.jpg', False, 37,
    6, '672번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/672', True, '기초 운동법, 체중 감량 운동, 운동 기록, 근육 만들기',
    '2024-07-15 02:27:21', '2024-09-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2430aad0-3b5d-4592-a08d-57f8fbf8d985', 'kakao', '5114355120', 'user_5114355120', '이름673',
    '닉네임673', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_950.jpg', False, 3,
    1, '673번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/673', False, 'CSS, JavaScript, HTML, React',
    '2025-03-01 02:27:21', '2025-03-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1a291ad9-fa1f-4f98-ba0e-de52ad7790d0', 'google', '3653828485', 'sub', '이름674',
    '닉네임674', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/70.jpg', True, 36,
    3, '674번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/674', False, '영어 회화, 리스닝 연습, 비즈니스 영어, TOEIC',
    '2024-07-08 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '92c43525-3251-457c-9d76-0070ece74e98', 'kakao', '4814928252', 'user_4814928252', '이름675',
    '닉네임675', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_924.jpg', False, 5,
    2, '675번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/675', False, 'UX 리서치, 와이어프레임, Figma',
    '2024-12-08 02:27:21', '2025-03-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2080c7f2-7515-44d4-811b-f4d2c5b9f58b', 'naver', '7809087170', 'user_7809087170', '이름676',
    '닉네임676', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/8.jpg', False, 37,
    6, '676번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/676', False, 'Spring Boot, Spring Security, JPA, Spring',
    '2024-08-12 02:27:21', '2024-08-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99344db2-968e-4de2-801b-873a1992cf72', 'google', '6622488008', 'sub', '이름677',
    '닉네임677', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/72.jpg', False, 32,
    18, '677번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/677', False, '리듬 연습, 기타, 악보 읽기, 작곡 기초',
    '2025-02-06 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ef206d6c-db3c-4541-bf67-67d5ffb9d411', 'naver', '2506227308', 'user_2506227308', '이름678',
    '닉네임678', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/57.jpg', False, 5,
    4, '678번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/678', False, '수학기초, 기본 공식, 중등수학',
    '2024-11-25 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1e4cb8aa-9687-4a23-b2a4-fadeace07c5c', 'kakao', '6370816285', 'user_6370816285', '이름679',
    '닉네임679', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/40.jpg', False, 38,
    24, '679번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/679', True, '영어 회화, TOEIC, 리스닝 연습',
    '2024-08-09 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'df527c0c-ee77-44af-8c0e-dd54c1473717', 'naver', '4169145263', 'user_4169145263', '이름680',
    '닉네임680', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_941.jpg', False, 37,
    8, '680번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/680', False, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-12-27 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '317d7b2c-18ba-44b7-97a9-4f5e97ee5968', 'naver', '8504259142', 'user_8504259142', '이름681',
    '닉네임681', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/75.jpg', False, 4,
    7, '681번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/681', True, '시각 디자인, Photoshop, Illustrator, 브랜딩',
    '2025-05-09 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '19ba9da1-36fb-4a79-8258-1011bcf72c57', 'google', '8515523630', 'sub', '이름682',
    '닉네임682', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/6.jpg', True, 7,
    5, '682번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/682', True, 'React, HTML, CSS',
    '2025-03-03 02:27:21', '2025-04-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1637ea4f-0632-417b-88b6-e67368bd5e78', 'kakao', '1119246346', 'user_1119246346', '이름683',
    '닉네임683', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/65.jpg', True, 3,
    3, '683번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/683', False, 'Figma, UX 리서치, UI 설계, 와이어프레임',
    '2024-09-22 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '22b07138-3b3e-4427-8f58-e7c010fb027a', 'naver', '1605085122', 'user_1605085122', '이름684',
    '닉네임684', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/80.jpg', False, 1,
    2, '684번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/684', False, 'Spring, Spring Boot, Spring Security',
    '2024-12-02 02:27:21', '2025-03-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0bd3cc5d-3487-426c-8d9a-abbeb947a74f', 'kakao', '9519018586', 'user_9519018586', '이름685',
    '닉네임685', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/35.jpg', False, 3,
    1, '685번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/685', True, '비즈니스 영어, 영어 회화, 리스닝 연습',
    '2024-12-11 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0119064c-56b1-4a3a-9995-49efc465e7a9', 'naver', '6640046836', 'user_6640046836', '이름686',
    '닉네임686', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/26.jpg', False, 38,
    1, '686번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/686', False, '리스닝 연습, 비즈니스 영어, 영어 회화',
    '2025-04-01 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02ae7be5-72dc-4967-9992-778518506334', 'naver', '1834685105', 'user_1834685105', '이름687',
    '닉네임687', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/24.jpg', False, 36,
    14, '687번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/687', False, '체중 감량 운동, 기초 운동법, 근육 만들기, 운동 기록',
    '2024-08-09 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e73d7647-8016-4caa-90ec-8b50e136a433', 'google', '1950255926', 'sub', '이름688',
    '닉네임688', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_986.jpg', True, 5,
    2, '688번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/688', True, 'Photoshop, 브랜딩, Illustrator, 시각 디자인',
    '2024-09-20 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd88c337f-921a-4240-822c-763c5f69a0fa', 'google', '6069356384', 'sub', '이름689',
    '닉네임689', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/99.jpg', True, 37,
    8, '689번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/689', True, 'iOS 앱 개발, Android Studio, Flutter, UI 디자인',
    '2025-04-02 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c4093023-56c6-4c8f-9257-43780c975339', 'naver', '5683767796', 'user_5683767796', '이름690',
    '닉네임690', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/58.jpg', True, 36,
    7, '690번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/690', True, '비즈니스 영어, TOEIC, 영어 회화, 리스닝 연습',
    '2024-12-01 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e84473ea-3014-4e1f-afd3-a73670563be5', 'kakao', '7296906219', 'user_7296906219', '이름691',
    '닉네임691', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_860.jpg', False, 39,
    2, '691번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/691', False, 'Flutter, iOS 앱 개발, UI 디자인',
    '2024-05-27 02:27:21', '2025-04-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7524dcd8-9ec0-4686-ba28-24a42622cc1e', 'google', '8259153010', 'sub', '이름692',
    '닉네임692', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/43.jpg', False, 8,
    1, '692번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/692', False, '운동 기록, 근육 만들기, 체중 감량 운동, 기초 운동법',
    '2024-05-31 02:27:21', '2024-08-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f926ff35-a94f-4523-9d28-eeb427a12be0', 'kakao', '1726045157', 'user_1726045157', '이름693',
    '닉네임693', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/25.jpg', True, 1,
    20, '693번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/693', True, '기본 코드, 기타 기초, 리듬 맞추기, 피아노 기초',
    '2024-08-22 02:27:21', '2025-02-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ddb751dd-372e-4350-93f4-650302d784a6', 'kakao', '7339386241', 'user_7339386241', '이름694',
    '닉네임694', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', True, 39,
    4, '694번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/694', False, '근육 만들기, 기초 운동법, 운동 기록, 체중 감량 운동',
    '2024-08-21 02:27:21', '2024-09-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '10fa2b46-f7eb-486d-ab93-201733d35dd5', 'kakao', '7956481922', 'user_7956481922', '이름695',
    '닉네임695', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_144.jpg', True, 3,
    2, '695번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/695', True, 'Flutter, UI 디자인, Android Studio',
    '2024-10-08 02:27:21', '2024-10-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7e8dbd63-9fc9-4593-9fb5-931d0075351e', 'kakao', '2690834625', 'user_2690834625', '이름696',
    '닉네임696', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_881.jpg', True, 1,
    23, '696번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/696', False, 'Firebase, React Native, Swift, Kotlin',
    '2024-09-15 02:27:21', '2024-09-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0f79c0b1-7000-4ee9-a59f-664fabf77eb5', 'kakao', '3395451334', 'user_3395451334', '이름697',
    '닉네임697', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/38.jpg', True, 34,
    11, '697번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/697', False, 'Spring, JPA, Spring Security, Spring Boot',
    '2024-08-29 02:27:21', '2024-11-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3fbbfe87-71d4-4787-be73-060ac247241e', 'naver', '9695686459', 'user_9695686459', '이름698',
    '닉네임698', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_861.jpg', False, 8,
    1, '698번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/698', True, 'Swift, React Native, Firebase',
    '2024-06-15 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed3dd67a-2475-480f-8c70-7e7bf472f5bf', 'naver', '5637384820', 'user_5637384820', '이름699',
    '닉네임699', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/71.jpg', False, 2,
    1, '699번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/699', True, '미적분, 수학적 모델링, 확률, 선형대수학',
    '2024-10-29 02:27:21', '2024-12-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7ab2d230-622a-42d0-ad3a-4b4d30f7750e', 'kakao', '7115817985', 'user_7115817985', '이름700',
    '닉네임700', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_845.jpg', False, 36,
    6, '700번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/700', True, 'JPA, Spring, Spring Boot, Spring Security',
    '2024-10-01 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7f542fe4-d6d6-4b61-b5d1-010758fee2f5', 'naver', '4245937066', 'user_4245937066', '이름701',
    '닉네임701', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_844.jpg', True, 37,
    2, '701번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/701', True, 'Flutter, UI 디자인, Android Studio, iOS 앱 개발',
    '2024-10-11 02:27:21', '2025-01-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '111fc104-d617-45e1-9b01-316b51417231', 'naver', '7587400899', 'user_7587400899', '이름702',
    '닉네임702', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/91.jpg', False, 34,
    12, '702번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/702', False, '디지털 일러스트, 포스터 디자인, 타이포그래피',
    '2024-06-25 02:27:21', '2024-12-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7cb984cc-9333-473b-a467-8d0fb7582665', 'kakao', '2868774797', 'user_2868774797', '이름703',
    '닉네임703', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/58.jpg', True, 31,
    12, '703번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/703', False, '근육 만들기, 운동 기록, 기초 운동법, 체중 감량 운동',
    '2024-05-14 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd8c8c03e-4087-466a-9096-8b868de1292b', 'kakao', '8613935661', 'user_8613935661', '이름704',
    '닉네임704', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/30.jpg', False, 1,
    20, '704번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/704', True, '리듬 맞추기, 기본 코드, 기타 기초, 피아노 기초',
    '2024-06-16 02:27:21', '2025-03-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e5cf3a65-05dc-4a2c-afcc-754ff7a446a0', 'naver', '9455336257', 'user_9455336257', '이름705',
    '닉네임705', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/86.jpg', True, 8,
    1, '705번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/705', True, '리스닝 연습, 영어 회화, TOEIC',
    '2024-07-09 02:27:21', '2024-09-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5d44fd58-e4e4-4cae-bc5b-96c2153dddfe', 'kakao', '9939206508', 'user_9939206508', '이름706',
    '닉네임706', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_192.jpg', True, 31,
    8, '706번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/706', True, '리듬 연습, 기타, 작곡 기초',
    '2024-09-14 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '64814ed0-6431-479c-b134-6070eb4ce3f6', 'kakao', '5385153497', 'user_5385153497', '이름707',
    '닉네임707', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', False, 5,
    5, '707번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/707', False, '사용자 흐름, 디자인 시스템, 프로토타입',
    '2024-06-16 02:27:21', '2024-10-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1fb67585-0bd6-4f19-8ed5-141b37f84b8a', 'google', '4942232594', 'sub', '이름708',
    '닉네임708', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/57.jpg', True, 8,
    1, '708번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/708', True, '영작 연습, 어휘 학습, 기초 회화, 영어 문법',
    '2024-10-14 02:27:21', '2024-11-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '24d2bcb5-5adb-4bde-b74b-0dfe21c9f4d4', 'google', '8355998426', 'sub', '이름709',
    '닉네임709', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/76.jpg', True, 39,
    4, '709번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/709', False, '영작 연습, 어휘 학습, 기초 회화',
    '2025-01-12 02:27:21', '2025-03-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a4a58bcb-cbd0-4ce4-80a2-c3f3a8c211e5', 'google', '7450518143', 'sub', '이름710',
    '닉네임710', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/89.jpg', False, 3,
    1, '710번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/710', True, 'CSS, HTML, React, JavaScript',
    '2024-09-17 02:27:21', '2024-11-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd246b915-2ce6-4884-b8d0-e1963b92a19d', 'naver', '5707081982', 'user_5707081982', '이름711',
    '닉네임711', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/19.jpg', True, 5,
    4, '711번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/711', True, 'React, JavaScript, CSS',
    '2024-08-12 02:27:21', '2024-11-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '222f9547-9e67-4828-ac18-0e385ff88250', 'naver', '8647600608', 'user_8647600608', '이름712',
    '닉네임712', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_459.jpg', False, 37,
    2, '712번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/712', True, '영어 문법, 어휘 학습, 기초 회화, 영작 연습',
    '2024-12-07 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bb14e387-6047-42c7-a1c6-d7fa683dd44a', 'google', '8376158172', 'sub', '이름713',
    '닉네임713', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/78.jpg', False, 39,
    3, '713번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/713', False, 'iOS 앱 개발, UI 디자인, Flutter',
    '2024-12-02 02:27:21', '2024-12-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '38528090-2495-49ae-b5e5-8856e88030eb', 'naver', '5087525839', 'user_5087525839', '이름714',
    '닉네임714', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/61.jpg', True, 33,
    12, '714번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/714', True, 'JPA, Spring, Spring Boot',
    '2024-07-19 02:27:21', '2024-12-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9d7d946a-bd34-4dab-b041-bfb628bb3566', 'google', '4559504006', 'sub', '이름715',
    '닉네임715', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_976.jpg', False, 36,
    12, '715번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/715', True, 'iOS 앱 개발, UI 디자인, Flutter',
    '2025-05-09 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '84427d2d-5824-4b6d-bed8-db20a6bbcc97', 'kakao', '9245469008', 'user_9245469008', '이름716',
    '닉네임716', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/79.jpg', True, 35,
    3, '716번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/716', True, '피아노 기초, 리듬 맞추기, 기타 기초',
    '2024-08-10 02:27:21', '2024-09-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e9795fed-7bb8-43c4-9bb7-289b024bed42', 'google', '1101813576', 'sub', '이름717',
    '닉네임717', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/99.jpg', False, 6,
    6, '717번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/717', False, '기타, 작곡 기초, 악보 읽기',
    '2025-02-04 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1ec8b35d-27b0-4f19-95cc-6326b693af71', 'kakao', '5844357468', 'user_5844357468', '이름718',
    '닉네임718', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/91.jpg', True, 36,
    9, '718번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/718', True, 'Swift, Firebase, Kotlin',
    '2024-09-24 02:27:21', '2025-03-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ca52ba29-2428-426e-8ce7-56fe0a3777be', 'google', '1422472236', 'sub', '이름719',
    '닉네임719', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/18.jpg', True, 34,
    12, '719번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/719', False, '악보 읽기, 리듬 연습, 기타, 작곡 기초',
    '2024-12-01 02:27:21', '2025-01-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4ae29544-4ae5-4937-a49e-b9a54879368f', 'kakao', '1673502550', 'user_1673502550', '이름720',
    '닉네임720', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/86.jpg', False, 37,
    5, '720번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/720', True, '영어 회화, 비즈니스 영어, 리스닝 연습',
    '2025-03-16 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '28a2e231-bf54-4a85-aa3f-3834e5caf81b', 'google', '2287316214', 'sub', '이름721',
    '닉네임721', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_135.jpg', False, 7,
    3, '721번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/721', False, '브랜딩, Illustrator, 시각 디자인, Photoshop',
    '2024-12-03 02:27:21', '2025-01-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c08dcf8d-b5d1-46d3-99d4-61816b5cc0bd', 'naver', '3979279893', 'user_3979279893', '이름722',
    '닉네임722', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_103.jpg', True, 8,
    1, '722번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/722', False, '비즈니스 영어, 영어 회화, TOEIC, 리스닝 연습',
    '2024-09-28 02:27:21', '2025-04-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7d8f0714-db32-437b-a7b3-cb975aab4ab1', 'google', '6559510201', 'sub', '이름723',
    '닉네임723', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/4.jpg', False, 2,
    5, '723번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/723', True, '근육 만들기, 운동 기록, 기초 운동법',
    '2024-05-20 02:27:21', '2024-06-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bcfb023d-92e5-4da2-a8e8-be356dc7bf32', 'google', '2917916279', 'sub', '이름724',
    '닉네임724', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/13.jpg', False, 1,
    5, '724번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/724', True, '사용자 흐름, 프로토타입, 디자인 시스템, 버튼 디자인',
    '2024-10-28 02:27:21', '2024-11-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '88906236-f579-4823-8b99-c3d6950c6103', 'naver', '2412033782', 'user_2412033782', '이름725',
    '닉네임725', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_373.jpg', False, 3,
    3, '725번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/725', True, '운동 루틴 계획, 근육 증대, 트레이닝 피드백, 체중 감량',
    '2025-01-10 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '03f3ac1e-e141-4fa7-82dc-ed754d5b3dd1', 'google', '2095420048', 'sub', '이름726',
    '닉네임726', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/97.jpg', True, 34,
    15, '726번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/726', False, '사용자 흐름, 버튼 디자인, 프로토타입, 디자인 시스템',
    '2024-05-14 02:27:21', '2024-06-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c59809c1-2dae-4372-a6e8-b6e35157415f', 'kakao', '3654284966', 'user_3654284966', '이름727',
    '닉네임727', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/56.jpg', False, 37,
    9, '727번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/727', False, 'Spring, JPA, Spring Boot',
    '2025-04-06 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '76fef2e3-7f60-4f12-8966-fbf37b94bba1', 'kakao', '4884653656', 'user_4884653656', '이름728',
    '닉네임728', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/20.jpg', True, 7,
    3, '728번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/728', True, '기타, 리듬 연습, 악보 읽기, 작곡 기초',
    '2024-09-10 02:27:21', '2025-01-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9cb19122-b6a5-4d74-9f96-57e3f992c2d0', 'google', '1564627325', 'sub', '이름729',
    '닉네임729', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_792.jpg', True, 7,
    1, '729번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/729', True, '어휘 학습, 영작 연습, 영어 문법',
    '2024-10-13 02:27:21', '2025-02-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cfb9d97a-2a43-46ae-a59e-6569e649cdbc', 'naver', '1418295179', 'user_1418295179', '이름730',
    '닉네임730', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/1.jpg', False, 6,
    16, '730번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/730', False, '악보 읽기, 기타, 리듬 연습',
    '2024-12-16 02:27:21', '2024-12-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b52278fb-5a64-4f6a-8548-bee04ca38761', 'naver', '3438034995', 'user_3438034995', '이름731',
    '닉네임731', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/79.jpg', True, 2,
    8, '731번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/731', False, '어휘 학습, 기초 회화, 영작 연습',
    '2024-11-29 02:27:21', '2025-03-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aebe30e8-9c2b-4e11-816a-d6f61b775a99', 'kakao', '3858207668', 'user_3858207668', '이름732',
    '닉네임732', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/82.jpg', False, 33,
    11, '732번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/732', False, '기본 공식, 수학기초, 수학문제 풀이, 중등수학',
    '2024-10-20 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26fc8e0c-7242-450a-902f-9d131eeffe66', 'kakao', '1441870549', 'user_1441870549', '이름733',
    '닉네임733', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/40.jpg', False, 5,
    4, '733번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/733', False, '기타, 리듬 연습, 악보 읽기',
    '2025-02-21 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '398f11d7-ca16-4b34-957d-81f7fdf54f0b', 'naver', '3164225052', 'user_3164225052', '이름734',
    '닉네임734', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/37.jpg', True, 6,
    13, '734번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/734', True, '체중 감량, 운동 루틴 계획, 트레이닝 피드백',
    '2024-06-11 02:27:21', '2024-10-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c673d7d4-bc9d-4813-8dd1-da319b722e8d', 'kakao', '4971559501', 'user_4971559501', '이름735',
    '닉네임735', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/56.jpg', False, 36,
    19, '735번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/735', False, 'Spring Security, Spring, JPA',
    '2025-04-07 02:27:21', '2025-04-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b1a4d4b8-7966-4c09-a206-b6051a336c5b', 'google', '3443520982', 'sub', '이름736',
    '닉네임736', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/64.jpg', False, 32,
    17, '736번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/736', True, 'Photoshop, 브랜딩, Illustrator',
    '2025-03-01 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6de818dc-2dc9-409e-83bc-ee07a3a4bb38', 'naver', '3344435235', 'user_3344435235', '이름737',
    '닉네임737', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/50.jpg', True, 38,
    4, '737번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/737', False, 'Swift, React Native, Kotlin',
    '2024-12-01 02:27:21', '2025-03-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '16965572-2387-49b9-bb31-9b7cc8d26e31', 'kakao', '6873016261', 'user_6873016261', '이름738',
    '닉네임738', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/38.jpg', False, 33,
    10, '738번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/738', False, '피아노 기초, 기본 코드, 기타 기초, 리듬 맞추기',
    '2025-01-05 02:27:21', '2025-04-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0e6fb1fa-30ff-4162-8bc5-26aee38626b1', 'naver', '6802442883', 'user_6802442883', '이름739',
    '닉네임739', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/5.jpg', False, 37,
    8, '739번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/739', True, '수학적 모델링, 선형대수학, 미적분, 확률',
    '2024-07-11 02:27:21', '2024-07-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f5bdfc79-f608-4dec-9a3e-d404d89aae50', 'kakao', '5297909738', 'user_5297909738', '이름740',
    '닉네임740', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/78.jpg', True, 1,
    10, '740번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/740', True, '중등수학, 수학기초, 수학문제 풀이',
    '2024-08-30 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2c3eab06-14a2-4c00-b1f7-67748b1ce75d', 'kakao', '5454062053', 'user_5454062053', '이름741',
    '닉네임741', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', True, 36,
    6, '741번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/741', True, '포스터 디자인, 디지털 일러스트, 타이포그래피, 아이콘 디자인',
    '2025-02-22 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0bbbe7e7-90f5-41a7-9db7-2f973d90a06d', 'naver', '9705198142', 'user_9705198142', '이름742',
    '닉네임742', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/16.jpg', False, 3,
    2, '742번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/742', True, '기본 공식, 수학문제 풀이, 수학기초, 중등수학',
    '2024-06-16 02:27:21', '2024-11-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '30fafa3c-8d0a-4bf6-9542-8a036df9f368', 'google', '3460024113', 'sub', '이름743',
    '닉네임743', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/24.jpg', True, 31,
    10, '743번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/743', True, '리스닝 연습, 영어 회화, 비즈니스 영어, TOEIC',
    '2025-01-08 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd14ec7d1-380b-49ec-957a-ddc25276fe5e', 'naver', '6522385674', 'user_6522385674', '이름744',
    '닉네임744', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/1.jpg', False, 7,
    2, '744번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/744', False, 'Figma, UI 설계, UX 리서치, 와이어프레임',
    '2024-07-22 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b8a001a4-2c08-4036-b1d9-68ae98cb938d', 'google', '9142467506', 'sub', '이름745',
    '닉네임745', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/24.jpg', True, 7,
    1, '745번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/745', False, 'UI 설계, Figma, 와이어프레임, UX 리서치',
    '2025-02-06 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2eada81d-678b-4ffc-bac0-62a2ba260eb1', 'kakao', '9253937673', 'user_9253937673', '이름746',
    '닉네임746', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_161.jpg', False, 2,
    4, '746번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/746', True, '기본 코드, 리듬 맞추기, 기타 기초',
    '2024-11-24 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '76a5c4f8-267b-4aaf-abf8-cea17c930ace', 'kakao', '6763778618', 'user_6763778618', '이름747',
    '닉네임747', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_881.jpg', True, 35,
    14, '747번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/747', True, '사용자 흐름, 버튼 디자인, 프로토타입, 디자인 시스템',
    '2024-11-15 02:27:21', '2025-02-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8b6edc89-74cc-4fa9-b526-180e678b0bb3', 'google', '4543487987', 'sub', '이름748',
    '닉네임748', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/35.jpg', True, 3,
    3, '748번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/748', True, 'UI 디자인, Flutter, iOS 앱 개발',
    '2024-07-28 02:27:21', '2024-12-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a8629289-39c1-4453-baa1-b9af3bcf44b5', 'kakao', '3500497123', 'user_3500497123', '이름749',
    '닉네임749', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/94.jpg', False, 1,
    23, '749번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/749', True, '선형대수학, 미적분, 확률',
    '2025-05-01 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e023972e-3546-47af-8522-92b64e5ac39a', 'kakao', '3380716972', 'user_3380716972', '이름750',
    '닉네임750', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/99.jpg', True, 33,
    7, '750번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/750', True, '기본 코드, 리듬 맞추기, 피아노 기초',
    '2024-10-31 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6117cb4a-87ea-43ef-b0d7-e1d3f5f781d2', 'naver', '4815687875', 'user_4815687875', '이름751',
    '닉네임751', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/77.jpg', False, 5,
    3, '751번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/751', True, 'Kotlin, Swift, Firebase',
    '2025-01-26 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e82ce41c-365a-4ca1-98f3-6d7e6d79a83c', 'naver', '3531059396', 'user_3531059396', '이름752',
    '닉네임752', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/72.jpg', True, 32,
    12, '752번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/752', True, '디지털 일러스트, 타이포그래피, 아이콘 디자인',
    '2024-11-27 02:27:21', '2024-12-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd91f1d31-7123-43c9-b05d-e559c6ff7cd6', 'naver', '7193417409', 'user_7193417409', '이름753',
    '닉네임753', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_744.jpg', True, 32,
    16, '753번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/753', True, '운동 루틴 계획, 트레이닝 피드백, 근육 증대',
    '2024-10-16 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd9de86f2-7918-4ea8-b9ca-0f78b23e9bab', 'kakao', '3099384873', 'user_3099384873', '이름754',
    '닉네임754', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/20.jpg', True, 39,
    4, '754번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/754', True, '근육 증대, 트레이닝 피드백, 체중 감량, 운동 루틴 계획',
    '2024-10-13 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '86c6b658-462a-407b-821c-698cb9f56054', 'google', '3407804517', 'sub', '이름755',
    '닉네임755', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_230.jpg', True, 6,
    10, '755번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/755', False, 'CSS, HTML, React, JavaScript',
    '2024-05-11 02:27:21', '2024-11-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '785c31c2-deb5-4e98-96c6-ab0185b42375', 'naver', '4247177683', 'user_4247177683', '이름756',
    '닉네임756', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/85.jpg', True, 34,
    7, '756번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/756', True, '기초 회화, 영어 문법, 어휘 학습, 영작 연습',
    '2025-03-04 02:27:21', '2025-03-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '59a82cbd-5299-4117-ac31-71d81f692fe3', 'naver', '4483418968', 'user_4483418968', '이름757',
    '닉네임757', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_859.jpg', False, 1,
    17, '757번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/757', False, 'Illustrator, 브랜딩, 시각 디자인',
    '2025-04-17 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0afb13fc-423c-4118-9de6-a19ec9669083', 'kakao', '6001899347', 'user_6001899347', '이름758',
    '닉네임758', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/21.jpg', True, 31,
    17, '758번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/758', True, 'JPA, Spring Security, Spring Boot',
    '2025-01-06 02:27:21', '2025-01-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c222dc7a-f5e3-45fc-9c91-e8eb98f05dd9', 'google', '8783144960', 'sub', '이름759',
    '닉네임759', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/14.jpg', True, 5,
    4, '759번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/759', True, '확률, 수학적 모델링, 선형대수학',
    '2024-08-19 02:27:21', '2025-03-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ae6101c6-0ba4-4a8e-b902-a790f31683bc', 'naver', '8644867189', 'user_8644867189', '이름760',
    '닉네임760', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/37.jpg', False, 38,
    3, '760번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/760', True, '디자인 시스템, 버튼 디자인, 프로토타입, 사용자 흐름',
    '2024-11-11 02:27:21', '2024-11-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bac2d4a2-5ead-46dd-8ef4-f86a86951037', 'naver', '1550229888', 'user_1550229888', '이름761',
    '닉네임761', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/45.jpg', True, 38,
    5, '761번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/761', True, 'Kotlin, React Native, Swift, Firebase',
    '2024-10-19 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c260e4ee-308f-449c-96b8-0a802de36afa', 'google', '8029312743', 'sub', '이름762',
    '닉네임762', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/7.jpg', False, 31,
    29, '762번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/762', False, '수학기초, 중등수학, 수학문제 풀이',
    '2024-06-26 02:27:21', '2024-08-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1d89b070-795c-48bb-86ee-486de96f06c8', 'kakao', '4878581723', 'user_4878581723', '이름763',
    '닉네임763', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/81.jpg', False, 31,
    27, '763번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/763', False, '트레이닝 피드백, 운동 루틴 계획, 체중 감량, 근육 증대',
    '2024-11-05 02:27:21', '2024-11-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fa004157-2756-478b-ae87-0f4a03fd4f08', 'google', '6613688538', 'sub', '이름764',
    '닉네임764', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/40.jpg', False, 31,
    30, '764번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/764', True, '디자인 시스템, 사용자 흐름, 버튼 디자인, 프로토타입',
    '2025-01-11 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c2d256c9-c8d6-41b5-883c-1c4d8a353b14', 'google', '4602368718', 'sub', '이름765',
    '닉네임765', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/54.jpg', False, 5,
    4, '765번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/765', True, '리듬 연습, 기타, 작곡 기초',
    '2024-06-27 02:27:21', '2025-01-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cb394739-c803-4082-a0eb-c72271d77fd0', 'naver', '5290921087', 'user_5290921087', '이름766',
    '닉네임766', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/97.jpg', True, 35,
    4, '766번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/766', False, '기초 회화, 영작 연습, 어휘 학습',
    '2024-07-21 02:27:21', '2024-10-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e1b55340-17af-4c9a-8340-09f70901ca40', 'kakao', '7664672825', 'user_7664672825', '이름767',
    '닉네임767', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/45.jpg', False, 5,
    4, '767번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/767', False, '확률, 선형대수학, 미적분',
    '2024-07-23 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3e27af37-c5c3-433a-baef-2cae771ce0f5', 'google', '9733584183', 'sub', '이름768',
    '닉네임768', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/72.jpg', True, 7,
    5, '768번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/768', False, '브랜딩, Photoshop, Illustrator',
    '2024-09-01 02:27:21', '2024-12-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '92c24247-ab7f-4403-b249-9c5d2ad51c66', 'naver', '7101745320', 'user_7101745320', '이름769',
    '닉네임769', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/67.jpg', False, 5,
    5, '769번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/769', False, '영어 문법, 어휘 학습, 기초 회화',
    '2024-12-09 02:27:21', '2025-02-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e2d51c76-39d4-41bb-8870-2b3c02f1810f', 'google', '7362688806', 'sub', '이름770',
    '닉네임770', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/35.jpg', False, 7,
    1, '770번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/770', True, '아이콘 디자인, 타이포그래피, 포스터 디자인',
    '2024-05-12 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'de24ea26-6c02-494b-91b3-6c2570edcaea', 'kakao', '1896134835', 'user_1896134835', '이름771',
    '닉네임771', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_477.jpg', True, 36,
    1, '771번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/771', False, 'Figma, UI 설계, UX 리서치',
    '2024-07-27 02:27:21', '2025-01-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '766c3444-8fe6-44e8-9aed-bd5c6e321e4b', 'naver', '9350823024', 'user_9350823024', '이름772',
    '닉네임772', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/72.jpg', True, 36,
    18, '772번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/772', False, 'UI 디자인, Flutter, iOS 앱 개발, Android Studio',
    '2024-11-15 02:27:21', '2024-11-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0cd54449-fe43-4569-992d-ed0a76c46f0c', 'google', '4881447648', 'sub', '이름773',
    '닉네임773', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/38.jpg', False, 34,
    16, '773번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/773', False, 'HTML, CSS, JavaScript',
    '2024-09-25 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a08526e4-0414-4a4b-91f2-dfa49ff757f4', 'google', '4341485351', 'sub', '이름774',
    '닉네임774', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/18.jpg', True, 7,
    3, '774번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/774', True, '피아노 기초, 기본 코드, 기타 기초',
    '2024-08-09 02:27:21', '2024-12-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e77c92f0-fcdb-4b78-a86d-9cfce0c81b78', 'naver', '6922400752', 'user_6922400752', '이름775',
    '닉네임775', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_610.jpg', True, 7,
    1, '775번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/775', False, 'Firebase, Swift, React Native, Kotlin',
    '2025-04-12 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bb922ae5-2229-4bcf-8b1c-e133fa3fb33f', 'google', '6477465367', 'sub', '이름776',
    '닉네임776', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/79.jpg', True, 38,
    8, '776번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/776', True, '기타 기초, 피아노 기초, 기본 코드',
    '2024-06-20 02:27:21', '2024-09-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0e24361a-6f78-41bd-85e3-e17068fc56df', 'naver', '3572838615', 'user_3572838615', '이름777',
    '닉네임777', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_288.jpg', False, 4,
    2, '777번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/777', False, '기본 코드, 기타 기초, 피아노 기초, 리듬 맞추기',
    '2024-09-16 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '94943037-c7c2-4c48-b6ec-5ae983c1ead0', 'naver', '5348321690', 'user_5348321690', '이름778',
    '닉네임778', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/97.jpg', False, 34,
    2, '778번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/778', False, '미적분, 확률, 선형대수학, 수학적 모델링',
    '2024-07-08 02:27:21', '2024-12-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e9f422e4-c181-443f-9bf6-ec4f363b300e', 'naver', '3989513878', 'user_3989513878', '이름779',
    '닉네임779', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_103.jpg', False, 33,
    8, '779번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/779', True, 'Illustrator, Photoshop, 시각 디자인, 브랜딩',
    '2025-01-04 02:27:21', '2025-02-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5bbc1daa-6935-400d-a1b7-9ebf4343d4f0', 'naver', '2129650940', 'user_2129650940', '이름780',
    '닉네임780', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/9.jpg', True, 2,
    4, '780번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/780', False, 'UX 리서치, Figma, 와이어프레임',
    '2024-11-22 02:27:21', '2025-01-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'abab8f37-0731-414a-bb6a-d66ed9f16575', 'kakao', '4740085832', 'user_4740085832', '이름781',
    '닉네임781', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/31.jpg', False, 34,
    6, '781번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/781', True, 'Spring, Spring Boot, JPA, Spring Security',
    '2024-06-08 02:27:21', '2024-06-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1242d51a-8e1d-4547-8c1f-981592b9425d', 'naver', '6471813215', 'user_6471813215', '이름782',
    '닉네임782', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/48.jpg', False, 37,
    10, '782번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/782', False, '중등수학, 기본 공식, 수학기초',
    '2024-06-24 02:27:21', '2024-10-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed00edb7-5673-45da-80c8-95af6b603f43', 'kakao', '9067149084', 'user_9067149084', '이름783',
    '닉네임783', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_243.jpg', False, 5,
    2, '783번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/783', True, '운동 기록, 체중 감량 운동, 근육 만들기, 기초 운동법',
    '2024-10-06 02:27:21', '2024-10-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e8820b1d-de13-4603-869e-14565b84cfc7', 'kakao', '7581784494', 'user_7581784494', '이름784',
    '닉네임784', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_889.jpg', True, 32,
    11, '784번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/784', True, '브랜딩, Photoshop, Illustrator',
    '2024-08-27 02:27:21', '2025-03-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '22a11334-0bb5-419f-aca8-7a76df230fb1', 'kakao', '9678427557', 'user_9678427557', '이름785',
    '닉네임785', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/2.jpg', False, 8,
    1, '785번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/785', False, 'Android Studio, iOS 앱 개발, UI 디자인, Flutter',
    '2025-02-26 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '48b720b4-0c63-48d1-b948-4648a7e9cfa2', 'google', '3701305711', 'sub', '이름786',
    '닉네임786', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/83.jpg', True, 6,
    7, '786번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/786', True, '선형대수학, 확률, 미적분, 수학적 모델링',
    '2024-05-12 02:27:21', '2024-07-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9d542802-cd71-47d3-a542-9b37e0348260', 'naver', '3304970584', 'user_3304970584', '이름787',
    '닉네임787', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_150.jpg', True, 38,
    18, '787번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/787', True, '선형대수학, 미적분, 확률, 수학적 모델링',
    '2024-09-03 02:27:21', '2024-09-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '097f9c6d-af8d-4ac4-8c87-7981bcef47d0', 'kakao', '2658634454', 'user_2658634454', '이름788',
    '닉네임788', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/51.jpg', False, 34,
    7, '788번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/788', False, '비즈니스 영어, 리스닝 연습, 영어 회화, TOEIC',
    '2024-08-05 02:27:21', '2024-10-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '45d25294-e975-4b2f-aa29-b20249e6c0c9', 'google', '3318660887', 'sub', '이름789',
    '닉네임789', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/6.jpg', False, 1,
    8, '789번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/789', False, '기초 운동법, 운동 기록, 체중 감량 운동, 근육 만들기',
    '2024-09-24 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9f97e489-46f3-47ca-ba20-fbdb8878a91b', 'naver', '7556290363', 'user_7556290363', '이름790',
    '닉네임790', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/58.jpg', False, 1,
    21, '790번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/790', True, '수학적 모델링, 확률, 선형대수학, 미적분',
    '2024-07-31 02:27:21', '2025-01-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0bc0c0e9-5e8a-479a-a3e0-a1b720f97d02', 'google', '3494824295', 'sub', '이름791',
    '닉네임791', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/96.jpg', True, 38,
    9, '791번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/791', False, '선형대수학, 미적분, 수학적 모델링, 확률',
    '2024-12-23 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6ef7e052-e360-4499-a0d4-0c6c501a86a4', 'naver', '3675169450', 'user_3675169450', '이름792',
    '닉네임792', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_210.jpg', False, 3,
    3, '792번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/792', False, '사용자 흐름, 프로토타입, 디자인 시스템',
    '2024-08-28 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '516e047e-4576-4a5f-bdab-e6c051dcedef', 'naver', '6336480623', 'user_6336480623', '이름793',
    '닉네임793', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_176.jpg', True, 36,
    4, '793번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/793', True, 'Spring Boot, JPA, Spring',
    '2024-10-06 02:27:21', '2025-03-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '03807cb4-4497-47e5-bc63-ce68e984698f', 'google', '2418696717', 'sub', '이름794',
    '닉네임794', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/32.jpg', False, 6,
    6, '794번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/794', True, 'UI 디자인, Flutter, iOS 앱 개발',
    '2024-06-20 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6e2319df-78da-454b-996c-ba5ca345cd9c', 'google', '4461451122', 'sub', '이름795',
    '닉네임795', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/47.jpg', False, 8,
    1, '795번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/795', True, '영어 회화, 비즈니스 영어, 리스닝 연습',
    '2024-12-06 02:27:21', '2025-02-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '50e6f69c-36aa-4920-a171-010c52af544f', 'kakao', '1569624663', 'user_1569624663', '이름796',
    '닉네임796', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/35.jpg', True, 32,
    1, '796번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/796', True, 'CSS, JavaScript, HTML, React',
    '2024-05-21 02:27:21', '2025-02-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6b2f1408-7d63-40fe-ad10-8315c8c6de3f', 'google', '6614044118', 'sub', '이름797',
    '닉네임797', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/61.jpg', True, 4,
    1, '797번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/797', False, '악보 읽기, 작곡 기초, 리듬 연습, 기타',
    '2025-02-09 02:27:21', '2025-02-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0f46efe8-5854-4b7a-a2eb-479f2bfc05db', 'google', '8819059550', 'sub', '이름798',
    '닉네임798', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/83.jpg', False, 37,
    12, '798번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/798', True, '타이포그래피, 디지털 일러스트, 아이콘 디자인, 포스터 디자인',
    '2025-02-06 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d9e79df-b44a-4656-b2f1-7d311150cd25', 'kakao', '4178676446', 'user_4178676446', '이름799',
    '닉네임799', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_568.jpg', False, 4,
    3, '799번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/799', False, 'Kotlin, Swift, React Native',
    '2024-10-29 02:27:21', '2025-02-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd8baf5ec-b34f-4f9e-8f11-5119ff38924e', 'google', '8609237620', 'sub', '이름800',
    '닉네임800', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/51.jpg', False, 36,
    12, '800번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/800', False, '기초 회화, 영어 문법, 어휘 학습',
    '2025-03-07 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '03db56b9-c0c3-4a47-b1df-2449fa608a2a', 'naver', '2774362199', 'user_2774362199', '이름801',
    '닉네임801', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/43.jpg', False, 6,
    3, '801번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/801', True, 'JavaScript, React, CSS',
    '2025-05-10 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f8db3736-f3d6-409e-83d8-83f6a31ea84c', 'google', '6774088804', 'sub', '이름802',
    '닉네임802', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_589.jpg', False, 2,
    8, '802번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/802', True, 'Spring, Spring Boot, JPA, Spring Security',
    '2024-09-17 02:27:21', '2024-11-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a682d85e-5ce2-4180-bf06-8cbf7180bae9', 'google', '4671436505', 'sub', '이름803',
    '닉네임803', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_865.jpg', True, 6,
    14, '803번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/803', True, '운동 루틴 계획, 트레이닝 피드백, 체중 감량',
    '2024-10-26 02:27:21', '2025-01-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f379c38e-0aec-4e52-83e7-4c0e039abeb0', 'kakao', '9225210968', 'user_9225210968', '이름804',
    '닉네임804', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/47.jpg', False, 5,
    1, '804번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/804', False, 'TOEIC, 리스닝 연습, 영어 회화',
    '2024-09-13 02:27:21', '2024-11-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dee0451b-1dc7-4f98-9c44-3318d082bcb5', 'google', '5772749312', 'sub', '이름805',
    '닉네임805', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/94.jpg', True, 32,
    14, '805번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/805', False, 'TOEIC, 비즈니스 영어, 리스닝 연습, 영어 회화',
    '2024-11-05 02:27:21', '2025-03-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bf04acb3-3fe4-4615-8b57-b92aed66d603', 'kakao', '2199226670', 'user_2199226670', '이름806',
    '닉네임806', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/63.jpg', True, 6,
    6, '806번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/806', False, '기초 운동법, 근육 만들기, 운동 기록',
    '2024-10-20 02:27:21', '2025-04-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '349de0b5-c4fb-44ea-a211-4971b5837dd4', 'naver', '2448811370', 'user_2448811370', '이름807',
    '닉네임807', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_364.jpg', True, 3,
    4, '807번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/807', False, '근육 증대, 운동 루틴 계획, 트레이닝 피드백, 체중 감량',
    '2024-06-20 02:27:21', '2024-07-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9ce5827a-edf6-4c87-9c89-1b059fddbb84', 'kakao', '4603288790', 'user_4603288790', '이름808',
    '닉네임808', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/24.jpg', True, 3,
    2, '808번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/808', False, 'Photoshop, Illustrator, 브랜딩, 시각 디자인',
    '2025-03-31 02:27:21', '2025-04-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd67114eb-da0b-4b44-a374-80e2888094c1', 'google', '8173548275', 'sub', '이름809',
    '닉네임809', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_914.jpg', False, 31,
    27, '809번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/809', False, '리듬 맞추기, 피아노 기초, 기본 코드',
    '2024-06-19 02:27:21', '2024-11-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e384e397-74c4-429b-b48e-225b02346227', 'naver', '9237707893', 'user_9237707893', '이름810',
    '닉네임810', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_560.jpg', True, 7,
    2, '810번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/810', False, '중등수학, 수학문제 풀이, 수학기초, 기본 공식',
    '2024-07-05 02:27:21', '2024-09-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '51d4cd1e-e453-48d6-998e-172c2b2707a7', 'kakao', '1852936563', 'user_1852936563', '이름811',
    '닉네임811', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/48.jpg', True, 33,
    11, '811번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/811', False, 'Kotlin, Firebase, React Native',
    '2024-08-13 02:27:21', '2024-10-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9e6ee774-f266-4980-82f1-dc0ec164ab43', 'google', '4502047039', 'sub', '이름812',
    '닉네임812', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_841.jpg', False, 4,
    7, '812번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/812', False, '작곡 기초, 악보 읽기, 리듬 연습, 기타',
    '2025-04-14 02:27:21', '2025-05-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f1b9249e-fd91-4c11-9019-11993dc58366', 'kakao', '6866140162', 'user_6866140162', '이름813',
    '닉네임813', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/54.jpg', False, 39,
    1, '813번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/813', True, 'JPA, Spring Boot, Spring, Spring Security',
    '2025-05-03 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4d62a782-7c8e-4faa-8511-7862cc8aeca4', 'kakao', '1229913761', 'user_1229913761', '이름814',
    '닉네임814', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/2.jpg', True, 32,
    11, '814번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/814', True, '시각 디자인, Illustrator, 브랜딩, Photoshop',
    '2024-06-21 02:27:21', '2024-09-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ab8140d4-c903-4cb5-83ea-468ae08befb1', 'naver', '9805591379', 'user_9805591379', '이름815',
    '닉네임815', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/19.jpg', False, 31,
    2, '815번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/815', True, '와이어프레임, Figma, UX 리서치',
    '2024-11-16 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0b732f00-fde1-4565-9240-9fa4d9898608', 'google', '6381487474', 'sub', '이름816',
    '닉네임816', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_171.jpg', False, 1,
    19, '816번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/816', False, 'JPA, Spring Security, Spring Boot, Spring',
    '2025-04-23 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e024827e-9a45-4212-8ea0-cb90914a9ed2', 'naver', '1476067760', 'user_1476067760', '이름817',
    '닉네임817', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/31.jpg', True, 34,
    9, '817번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/817', True, '악보 읽기, 작곡 기초, 리듬 연습, 기타',
    '2024-12-02 02:27:21', '2024-12-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1ae376f3-ae52-40e3-840e-39d50890a9a4', 'kakao', '1165471934', 'user_1165471934', '이름818',
    '닉네임818', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/98.jpg', False, 8,
    1, '818번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/818', True, 'Figma, 와이어프레임, UI 설계',
    '2024-05-26 02:27:21', '2025-04-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '010086d9-2d29-4bf7-be08-9ea5412d820b', 'kakao', '7875628252', 'user_7875628252', '이름819',
    '닉네임819', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_381.jpg', False, 8,
    1, '819번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/819', True, '중등수학, 수학기초, 수학문제 풀이, 기본 공식',
    '2024-05-22 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '234b32c5-02da-4002-aa18-0bb2826ed7b8', 'google', '1068997587', 'sub', '이름820',
    '닉네임820', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/87.jpg', True, 33,
    10, '820번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/820', False, 'React Native, Swift, Firebase, Kotlin',
    '2024-08-28 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a573efbe-8255-40a9-a2cc-2207294149f4', 'naver', '9081589433', 'user_9081589433', '이름821',
    '닉네임821', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/78.jpg', True, 36,
    21, '821번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/821', True, '트레이닝 피드백, 체중 감량, 운동 루틴 계획',
    '2024-07-04 02:27:21', '2025-03-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f022ae90-1106-4a69-89da-40076d9b530c', 'kakao', '7222166622', 'user_7222166622', '이름822',
    '닉네임822', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/52.jpg', True, 7,
    4, '822번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/822', False, '타이포그래피, 포스터 디자인, 디지털 일러스트, 아이콘 디자인',
    '2024-08-28 02:27:21', '2024-10-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '617e05f1-ba37-46cd-a997-52f57cced79f', 'kakao', '1745133258', 'user_1745133258', '이름823',
    '닉네임823', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/40.jpg', False, 2,
    8, '823번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/823', False, '체중 감량 운동, 기초 운동법, 근육 만들기, 운동 기록',
    '2025-04-24 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '378f67f0-dcb1-4308-98e6-d9ed3eec4577', 'kakao', '9640777850', 'user_9640777850', '이름824',
    '닉네임824', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/49.jpg', False, 38,
    9, '824번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/824', False, 'Swift, Kotlin, React Native, Firebase',
    '2025-02-21 02:27:21', '2025-04-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '60c8e14a-770c-4b2a-a11a-1faf65f8e507', 'kakao', '2681482749', 'user_2681482749', '이름825',
    '닉네임825', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_848.jpg', False, 4,
    8, '825번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/825', False, '근육 만들기, 운동 기록, 기초 운동법',
    '2025-04-09 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b33930e5-badc-4443-be8b-2fba23f57d53', 'kakao', '5207213300', 'user_5207213300', '이름826',
    '닉네임826', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg', False, 6,
    7, '826번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/826', False, 'UI 디자인, Android Studio, Flutter, iOS 앱 개발',
    '2024-07-19 02:27:21', '2024-08-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ba994cd8-84b2-4c52-93e9-763cc0dd72a0', 'google', '9449314402', 'sub', '이름827',
    '닉네임827', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_132.jpg', False, 37,
    8, '827번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/827', True, 'React Native, Swift, Firebase',
    '2024-07-20 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '98fbb7b7-d73c-4732-9fa1-04a71fbbeced', 'google', '7185880842', 'sub', '이름828',
    '닉네임828', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/91.jpg', False, 38,
    10, '828번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/828', True, 'Spring, Spring Security, JPA',
    '2024-05-25 02:27:21', '2025-04-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e5eeba95-c553-4e07-8e5d-fc7ea858bc6f', 'kakao', '8854427804', 'user_8854427804', '이름829',
    '닉네임829', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/90.jpg', False, 37,
    2, '829번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/829', True, '영어 문법, 어휘 학습, 영작 연습, 기초 회화',
    '2025-01-25 02:27:21', '2025-02-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '02dc8abd-0c70-4eb7-8d65-a5f99a24ba45', 'google', '8748560957', 'sub', '이름830',
    '닉네임830', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/8.jpg', False, 33,
    2, '830번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/830', False, '수학적 모델링, 확률, 미적분',
    '2025-04-11 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '62a4cbba-0ca9-4b2c-9feb-086d4215128f', 'google', '3216361587', 'sub', '이름831',
    '닉네임831', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_378.jpg', False, 33,
    3, '831번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/831', True, 'Spring Boot, Spring, JPA, Spring Security',
    '2024-09-17 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a1cae343-924b-4df7-b0a8-52e7640a5832', 'naver', '9276982388', 'user_9276982388', '이름832',
    '닉네임832', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/43.jpg', True, 33,
    8, '832번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/832', True, '기초 회화, 영어 문법, 어휘 학습',
    '2024-08-06 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e179c47e-1ee3-4a1c-a5a7-518803b7f02f', 'google', '1115428898', 'sub', '이름833',
    '닉네임833', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/77.jpg', False, 3,
    2, '833번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/833', False, '포스터 디자인, 타이포그래피, 아이콘 디자인, 디지털 일러스트',
    '2025-02-26 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'abbb80fc-8f9d-4d46-a691-6c576343efba', 'kakao', '6367349582', 'user_6367349582', '이름834',
    '닉네임834', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/44.jpg', False, 2,
    1, '834번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/834', False, '영작 연습, 어휘 학습, 기초 회화, 영어 문법',
    '2024-09-11 02:27:21', '2025-04-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '68eb3c2e-888f-400c-90fe-26a04a5735e7', 'naver', '9309667473', 'user_9309667473', '이름835',
    '닉네임835', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/4.jpg', False, 39,
    1, '835번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/835', False, '확률, 수학적 모델링, 선형대수학, 미적분',
    '2025-04-03 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'acfc781b-11bb-4f72-babb-4ccd50e5abca', 'naver', '2654080505', 'user_2654080505', '이름836',
    '닉네임836', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/38.jpg', False, 2,
    5, '836번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/836', False, '체중 감량, 근육 증대, 트레이닝 피드백, 운동 루틴 계획',
    '2024-11-06 02:27:21', '2025-02-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9ffaa1ea-f355-49e3-8940-768dd36173f6', 'naver', '5880082571', 'user_5880082571', '이름837',
    '닉네임837', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/67.jpg', False, 33,
    11, '837번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/837', True, '체중 감량 운동, 운동 기록, 기초 운동법, 근육 만들기',
    '2025-03-26 02:27:21', '2025-03-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '542df8d0-8d51-48e5-824e-5770ab2dc5a8', 'kakao', '1995602695', 'user_1995602695', '이름838',
    '닉네임838', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_539.jpg', False, 4,
    6, '838번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/838', False, 'UI 디자인, Android Studio, Flutter, iOS 앱 개발',
    '2025-03-09 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1de113f4-972e-42df-97b0-58172e102522', 'google', '6003019988', 'sub', '이름839',
    '닉네임839', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_240.jpg', True, 39,
    4, '839번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/839', False, 'JavaScript, HTML, CSS, React',
    '2024-06-21 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '515f7c36-f5f7-4d31-821e-4a04a70ef45b', 'kakao', '1191241984', 'user_1191241984', '이름840',
    '닉네임840', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_309.jpg', False, 1,
    22, '840번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/840', False, '기타, 리듬 연습, 악보 읽기, 작곡 기초',
    '2025-04-02 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '54c14559-c663-4ecd-8211-3eab18c31b2e', 'kakao', '5590584558', 'user_5590584558', '이름841',
    '닉네임841', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/42.jpg', True, 33,
    4, '841번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/841', False, 'Flutter, Android Studio, UI 디자인',
    '2024-05-20 02:27:21', '2024-12-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '596d76d1-5cdd-495c-ac46-d84d0fa18866', 'kakao', '5234165508', 'user_5234165508', '이름842',
    '닉네임842', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/48.jpg', True, 34,
    11, '842번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/842', False, '기타 기초, 피아노 기초, 리듬 맞추기',
    '2024-07-23 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c603c202-2510-416c-bf4e-9877f4b0b8a9', 'google', '1580104543', 'sub', '이름843',
    '닉네임843', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/3.jpg', False, 34,
    4, '843번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/843', False, '체중 감량 운동, 기초 운동법, 운동 기록',
    '2024-07-02 02:27:21', '2025-02-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '582fd6ab-b8f9-4c55-b885-e843f9348a6b', 'google', '9897558947', 'sub', '이름844',
    '닉네임844', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/5.jpg', True, 33,
    3, '844번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/844', False, 'Illustrator, 시각 디자인, Photoshop',
    '2025-01-01 02:27:21', '2025-02-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '50b24d68-bae1-40a0-a4c5-8213bfb9ed40', 'kakao', '6868127521', 'user_6868127521', '이름845',
    '닉네임845', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/93.jpg', False, 3,
    4, '845번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/845', True, '수학문제 풀이, 중등수학, 수학기초',
    '2025-02-06 02:27:21', '2025-03-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fb2b64c8-b047-44f4-b9f2-93bc83d43119', 'naver', '6597241548', 'user_6597241548', '이름846',
    '닉네임846', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/59.jpg', True, 31,
    1, '846번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/846', False, 'HTML, JavaScript, CSS',
    '2024-12-16 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '30660b49-0c0c-47fc-a6c4-4cb429cddf14', 'naver', '7435300147', 'user_7435300147', '이름847',
    '닉네임847', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/56.jpg', True, 33,
    10, '847번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/847', True, 'UX 리서치, Figma, UI 설계',
    '2024-07-20 02:27:21', '2024-10-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26a6947c-c135-42b1-a858-1627ee73b830', 'google', '1109191946', 'sub', '이름848',
    '닉네임848', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/23.jpg', True, 3,
    5, '848번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/848', False, '근육 만들기, 기초 운동법, 운동 기록, 체중 감량 운동',
    '2024-08-19 02:27:21', '2025-02-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8a54814f-932f-48b3-8d66-4d96c75675c4', 'google', '7762132558', 'sub', '이름849',
    '닉네임849', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/12.jpg', False, 5,
    4, '849번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/849', True, '영작 연습, 어휘 학습, 기초 회화, 영어 문법',
    '2025-02-11 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f8d46730-cf39-4c70-9385-055891cd1a35', 'google', '7728707425', 'sub', '이름850',
    '닉네임850', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/76.jpg', False, 3,
    2, '850번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/850', True, 'HTML, JavaScript, React',
    '2025-02-25 02:27:21', '2025-04-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3a2f6997-32ad-40e8-b780-56463e14d4a1', 'naver', '9783213013', 'user_9783213013', '이름851',
    '닉네임851', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/55.jpg', False, 32,
    9, '851번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/851', False, '미적분, 확률, 선형대수학, 수학적 모델링',
    '2024-12-08 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '741d2e24-ad73-49db-b3d0-cb68564dc6b1', 'naver', '1047671049', 'user_1047671049', '이름852',
    '닉네임852', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/63.jpg', True, 38,
    8, '852번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/852', False, '기타, 리듬 연습, 악보 읽기',
    '2024-06-10 02:27:21', '2024-08-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8ac27216-ff60-4b12-8092-e4b588d85562', 'naver', '2351836747', 'user_2351836747', '이름853',
    '닉네임853', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/31.jpg', False, 31,
    27, '853번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/853', False, 'React, JavaScript, CSS',
    '2024-09-20 02:27:21', '2024-12-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '974286db-a087-4eb9-bd02-1ab2cb70d18f', 'kakao', '8454883156', 'user_8454883156', '이름854',
    '닉네임854', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_157.jpg', False, 33,
    11, '854번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/854', False, '운동 기록, 체중 감량 운동, 기초 운동법',
    '2024-11-05 02:27:21', '2024-11-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f1db5a2f-75f9-498f-a7bb-a74912a8bc2c', 'kakao', '9948397958', 'user_9948397958', '이름855',
    '닉네임855', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/66.jpg', False, 38,
    4, '855번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/855', False, '타이포그래피, 아이콘 디자인, 포스터 디자인, 디지털 일러스트',
    '2024-10-25 02:27:21', '2024-10-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8cd24d11-9a6a-4fad-94c9-4c468a28f4e7', 'google', '4519463003', 'sub', '이름856',
    '닉네임856', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/78.jpg', False, 2,
    9, '856번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/856', True, '운동 기록, 근육 만들기, 기초 운동법, 체중 감량 운동',
    '2024-09-14 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '66bb2da1-c39b-473f-8ccf-d3dd862dc52e', 'kakao', '1195856484', 'user_1195856484', '이름857',
    '닉네임857', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/94.jpg', False, 2,
    6, '857번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/857', True, '포스터 디자인, 아이콘 디자인, 타이포그래피, 디지털 일러스트',
    '2024-05-23 02:27:21', '2025-03-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f9509239-19ba-479d-95b5-076931c5d6f9', 'google', '8365133476', 'sub', '이름858',
    '닉네임858', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/56.jpg', False, 36,
    14, '858번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/858', False, '근육 증대, 운동 루틴 계획, 체중 감량, 트레이닝 피드백',
    '2024-06-15 02:27:21', '2025-03-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '838dff5f-98a9-4318-b22e-ee95bef00731', 'kakao', '4174611922', 'user_4174611922', '이름859',
    '닉네임859', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/74.jpg', True, 31,
    7, '859번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/859', True, 'React Native, Kotlin, Swift, Firebase',
    '2025-01-25 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5481dc14-00f7-43e3-91e1-9ad23f1169d5', 'google', '2238460663', 'sub', '이름860',
    '닉네임860', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_158.jpg', True, 7,
    4, '860번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/860', True, '작곡 기초, 기타, 리듬 연습, 악보 읽기',
    '2024-07-16 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1d48c1ff-1f4a-43dd-a198-d157ed943a21', 'naver', '4079273861', 'user_4079273861', '이름861',
    '닉네임861', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_472.jpg', False, 36,
    19, '861번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/861', True, 'Spring, Spring Security, Spring Boot, JPA',
    '2024-11-30 02:27:21', '2025-01-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'fd58667e-a815-4bf8-93b9-4b5bb13f5c56', 'naver', '3032407634', 'user_3032407634', '이름862',
    '닉네임862', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/88.jpg', False, 33,
    7, '862번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/862', False, '기타, 리듬 연습, 악보 읽기',
    '2024-08-02 02:27:21', '2025-04-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '12819186-4221-4c3b-abd8-fd36814c6b0e', 'google', '5467125394', 'sub', '이름863',
    '닉네임863', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_848.jpg', True, 38,
    18, '863번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/863', True, '브랜딩, Photoshop, 시각 디자인, Illustrator',
    '2024-10-09 02:27:21', '2025-02-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aad5ac10-8569-485b-9c3d-9689dc53e727', 'google', '1981324174', 'sub', '이름864',
    '닉네임864', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_224.jpg', False, 8,
    1, '864번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/864', False, 'iOS 앱 개발, Flutter, Android Studio',
    '2025-04-10 02:27:21', '2025-04-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '79dbf4ec-223a-4cc4-944e-3847e6075222', 'kakao', '5049892794', 'user_5049892794', '이름865',
    '닉네임865', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_139.jpg', True, 38,
    24, '865번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/865', False, 'React, HTML, CSS, JavaScript',
    '2025-05-07 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e7ca0bca-fc9e-4a8f-9ff8-cc168148c2a8', 'kakao', '7100268658', 'user_7100268658', '이름866',
    '닉네임866', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/36.jpg', True, 2,
    3, '866번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/866', True, '아이콘 디자인, 디지털 일러스트, 포스터 디자인',
    '2024-10-23 02:27:21', '2025-03-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f0674f0a-e287-4965-beb5-caa2f4443ccd', 'naver', '7296284166', 'user_7296284166', '이름867',
    '닉네임867', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/8.jpg', False, 33,
    9, '867번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/867', True, 'Flutter, iOS 앱 개발, Android Studio, UI 디자인',
    '2024-08-13 02:27:21', '2024-12-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2e41d5dd-eb6c-429d-bf78-59f52a54b83b', 'google', '7215269100', 'sub', '이름868',
    '닉네임868', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/98.jpg', False, 39,
    2, '868번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/868', False, '버튼 디자인, 프로토타입, 디자인 시스템',
    '2025-04-01 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e81eac1f-05ac-4557-ac7d-8d29f87c7874', 'google', '5045959677', 'sub', '이름869',
    '닉네임869', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/53.jpg', True, 36,
    10, '869번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/869', True, 'CSS, HTML, JavaScript, React',
    '2024-12-25 02:27:21', '2025-03-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c7d903ee-4d77-4098-8c78-6734ad6abd46', 'naver', '2639680152', 'user_2639680152', '이름870',
    '닉네임870', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/14.jpg', False, 36,
    20, '870번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/870', False, 'JPA, Spring, Spring Boot, Spring Security',
    '2024-08-03 02:27:21', '2025-02-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3d48d81a-8882-4a89-8ea5-608aab9cbb57', 'naver', '4517376317', 'user_4517376317', '이름871',
    '닉네임871', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_516.jpg', False, 3,
    1, '871번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/871', True, '영어 회화, TOEIC, 리스닝 연습',
    '2024-07-20 02:27:21', '2025-01-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6760b536-3b18-4de3-b2bd-fe8c48222377', 'google', '3731319446', 'sub', '이름872',
    '닉네임872', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_783.jpg', False, 37,
    3, '872번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/872', True, '운동 기록, 체중 감량 운동, 근육 만들기',
    '2025-02-08 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '55ea214b-e534-4206-a6d3-988655c82e69', 'kakao', '2888338264', 'user_2888338264', '이름873',
    '닉네임873', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_916.jpg', True, 4,
    1, '873번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/873', False, 'Android Studio, iOS 앱 개발, Flutter',
    '2024-11-09 02:27:21', '2025-03-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3ba97041-6853-4464-b796-b575948b2eeb', 'kakao', '5187990425', 'user_5187990425', '이름874',
    '닉네임874', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_449.jpg', False, 38,
    23, '874번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/874', False, 'JPA, Spring, Spring Security, Spring Boot',
    '2024-10-02 02:27:21', '2024-10-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '11a9ca7a-d1f5-466b-9e85-cb618bad8c90', 'kakao', '8548032748', 'user_8548032748', '이름875',
    '닉네임875', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/91.jpg', True, 8,
    1, '875번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/875', True, '악보 읽기, 리듬 연습, 작곡 기초',
    '2024-10-20 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '936d9742-4cbc-4933-aa04-2dc7acbd8eb1', 'kakao', '1610163363', 'user_1610163363', '이름876',
    '닉네임876', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/71.jpg', False, 32,
    11, '876번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/876', True, 'Spring, Spring Security, JPA, Spring Boot',
    '2025-02-27 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7801f039-7d95-45c0-af80-2b6c42e04a3f', 'google', '2293682364', 'sub', '이름877',
    '닉네임877', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/44.jpg', True, 34,
    13, '877번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/877', False, '버튼 디자인, 사용자 흐름, 프로토타입',
    '2024-12-13 02:27:21', '2025-02-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '437396ab-9aaf-4fc9-9668-ebae8fd993d6', 'kakao', '9522977654', 'user_9522977654', '이름878',
    '닉네임878', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/8.jpg', True, 35,
    12, '878번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/878', True, 'JPA, Spring Security, Spring',
    '2024-06-24 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2336eee4-72a3-46f4-b7af-541ff4e0f6ba', 'kakao', '7411128215', 'user_7411128215', '이름879',
    '닉네임879', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/38.jpg', False, 8,
    1, '879번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/879', True, '확률, 선형대수학, 수학적 모델링, 미적분',
    '2024-08-26 02:27:21', '2025-01-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8d1a431b-f927-452b-b83a-6dabf884be64', 'kakao', '9341710620', 'user_9341710620', '이름880',
    '닉네임880', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_819.jpg', False, 36,
    10, '880번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/880', False, 'Spring Security, Spring, JPA',
    '2025-03-13 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7328c39f-31ce-48b9-b81e-423c00e1162a', 'google', '3348949549', 'sub', '이름881',
    '닉네임881', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/79.jpg', False, 4,
    5, '881번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/881', False, 'iOS 앱 개발, UI 디자인, Android Studio',
    '2024-10-02 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd4ce08e5-71e8-4ec4-8df7-a86945e5413a', 'naver', '2343946999', 'user_2343946999', '이름882',
    '닉네임882', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_700.jpg', True, 36,
    20, '882번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/882', True, 'Kotlin, Swift, React Native',
    '2024-09-09 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6f7cf9c9-77ca-4c3a-9dff-0b20c8f3290f', 'kakao', '2118965031', 'user_2118965031', '이름883',
    '닉네임883', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/28.jpg', False, 4,
    9, '883번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/883', False, '포스터 디자인, 아이콘 디자인, 타이포그래피',
    '2025-01-22 02:27:21', '2025-03-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b293d78e-b5f9-4f3b-b19c-c6438da9574a', 'google', '8939294123', 'sub', '이름884',
    '닉네임884', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_964.jpg', True, 39,
    2, '884번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/884', False, '운동 루틴 계획, 트레이닝 피드백, 근육 증대',
    '2025-02-13 02:27:21', '2025-04-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '08decb77-ceee-46db-8400-2c1588344361', 'google', '4543631159', 'sub', '이름885',
    '닉네임885', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/4.jpg', False, 32,
    14, '885번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/885', True, '체중 감량 운동, 운동 기록, 기초 운동법, 근육 만들기',
    '2025-03-07 02:27:21', '2025-03-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '835bf06a-ec39-4baa-a193-a5302100b5bb', 'naver', '6902358267', 'user_6902358267', '이름886',
    '닉네임886', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/57.jpg', True, 34,
    4, '886번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/886', True, '체중 감량 운동, 기초 운동법, 근육 만들기',
    '2025-04-23 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '747a08d5-1236-4b5b-94cd-d789e0075600', 'google', '7542468944', 'sub', '이름887',
    '닉네임887', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_315.jpg', True, 36,
    1, '887번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/887', False, '기본 코드, 기타 기초, 피아노 기초',
    '2024-07-22 02:27:21', '2025-03-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2c9088bb-361e-4b0d-9270-09d9f556108f', 'naver', '9829569223', 'user_9829569223', '이름888',
    '닉네임888', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_135.jpg', True, 35,
    4, '888번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/888', True, 'Spring Boot, Spring Security, Spring, JPA',
    '2024-10-24 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7f1fc9d9-c3b4-4bee-b37e-a0edad03628d', 'google', '8476131185', 'sub', '이름889',
    '닉네임889', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_450.jpg', False, 31,
    28, '889번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/889', True, '선형대수학, 수학적 모델링, 확률, 미적분',
    '2024-11-06 02:27:21', '2024-12-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '41df19ed-e9af-4587-a4d1-31ece199d6d3', 'google', '7830418260', 'sub', '이름890',
    '닉네임890', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/40.jpg', False, 39,
    1, '890번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/890', True, '아이콘 디자인, 타이포그래피, 포스터 디자인',
    '2024-05-11 02:27:21', '2024-08-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'dce7c61e-ff3e-4b48-8b4e-87b18e1b1519', 'kakao', '5014200734', 'user_5014200734', '이름891',
    '닉네임891', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_606.jpg', True, 38,
    24, '891번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/891', False, '기타, 작곡 기초, 악보 읽기',
    '2025-04-27 02:27:21', '2025-04-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '58b964a1-0f7f-439b-8b24-74f00298e216', 'google', '5129362053', 'sub', '이름892',
    '닉네임892', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/57.jpg', True, 1,
    24, '892번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/892', True, 'Figma, UX 리서치, 와이어프레임, UI 설계',
    '2025-01-22 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '872bc994-0e07-40c4-a679-7ae4a4b2e013', 'google', '7971292413', 'sub', '이름893',
    '닉네임893', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/96.jpg', True, 34,
    12, '893번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/893', False, 'TOEIC, 비즈니스 영어, 영어 회화',
    '2024-12-29 02:27:21', '2025-04-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '44a205e8-84da-464d-b7df-4abcdecfdfb5', 'kakao', '7854708214', 'user_7854708214', '이름894',
    '닉네임894', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_190.jpg', False, 7,
    3, '894번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/894', False, '기초 운동법, 근육 만들기, 운동 기록',
    '2024-08-10 02:27:21', '2025-04-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e7c349ac-5b01-4d03-88a2-ce88b9f5fdaf', 'kakao', '4563035853', 'user_4563035853', '이름895',
    '닉네임895', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_745.jpg', False, 2,
    9, '895번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/895', False, '확률, 선형대수학, 미적분',
    '2025-02-06 02:27:21', '2025-05-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '65ce9180-82ad-4cf3-876a-bac713ecfd7f', 'google', '2622666145', 'sub', '이름896',
    '닉네임896', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/74.jpg', False, 39,
    1, '896번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/896', False, '피아노 기초, 기본 코드, 기타 기초, 리듬 맞추기',
    '2024-08-23 02:27:21', '2024-09-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f5a9a407-3dd2-4be0-99a2-6b6b31700a1c', 'google', '2219801125', 'sub', '이름897',
    '닉네임897', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/6.jpg', True, 37,
    4, '897번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/897', True, '영어 회화, 리스닝 연습, TOEIC, 비즈니스 영어',
    '2024-07-21 02:27:21', '2024-12-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '27dbff17-1bc6-4a0e-a537-e7cef5cc4947', 'kakao', '1980618434', 'user_1980618434', '이름898',
    '닉네임898', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/73.jpg', True, 32,
    14, '898번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/898', True, '수학문제 풀이, 중등수학, 수학기초',
    '2024-08-23 02:27:21', '2024-08-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cbb9581e-0212-42f4-bd35-550fa2904b64', 'google', '8957512045', 'sub', '이름899',
    '닉네임899', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/8.jpg', True, 38,
    11, '899번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/899', False, 'HTML, React, CSS',
    '2025-01-23 02:27:21', '2025-05-03 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd8da59b3-35ad-4c40-9471-c5274725131b', 'google', '6435620813', 'sub', '이름900',
    '닉네임900', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/43.jpg', False, 8,
    1, '900번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/900', False, '아이콘 디자인, 디지털 일러스트, 타이포그래피',
    '2024-11-22 02:27:21', '2024-12-18 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '99bdb8e7-b308-49d9-af0a-322ea42ec8b5', 'google', '3438440058', 'sub', '이름901',
    '닉네임901', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/1.jpg', True, 39,
    1, '901번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/901', True, 'Spring Boot, Spring Security, JPA',
    '2024-07-24 02:27:21', '2025-01-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e034777c-b4a2-4ad8-9291-be92e4a7763e', 'naver', '4961825406', 'user_4961825406', '이름902',
    '닉네임902', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/44.jpg', False, 7,
    3, '902번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/902', True, '리스닝 연습, TOEIC, 비즈니스 영어, 영어 회화',
    '2025-05-04 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a6c335bb-1836-4388-a013-532b7434eb7a', 'google', '7087882068', 'sub', '이름903',
    '닉네임903', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/16.jpg', True, 34,
    8, '903번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/903', False, '리듬 연습, 작곡 기초, 악보 읽기, 기타',
    '2024-07-21 02:27:21', '2024-10-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'cc06d5a6-1cf8-496d-b772-3eda2d9d4cfc', 'naver', '4049578236', 'user_4049578236', '이름904',
    '닉네임904', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_660.jpg', True, 3,
    2, '904번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/904', True, 'React Native, Swift, Kotlin',
    '2025-02-24 02:27:21', '2025-02-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3c8093bd-8822-4235-8699-bbbafdd459cb', 'google', '4614013864', 'sub', '이름905',
    '닉네임905', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_603.jpg', False, 7,
    3, '905번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/905', False, '프로토타입, 디자인 시스템, 사용자 흐름, 버튼 디자인',
    '2024-06-18 02:27:21', '2024-09-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '94489dd3-0b02-427c-915a-436c7c68d875', 'google', '4156994656', 'sub', '이름906',
    '닉네임906', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/35.jpg', False, 1,
    6, '906번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/906', True, '기초 회화, 영작 연습, 영어 문법, 어휘 학습',
    '2025-03-10 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26320d5a-2fa5-45df-bc7b-2c5f835fafc8', 'google', '1588507726', 'sub', '이름907',
    '닉네임907', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_580.jpg', False, 6,
    3, '907번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/907', False, '시각 디자인, Illustrator, 브랜딩',
    '2024-10-21 02:27:21', '2024-12-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bf1187f8-cd09-47c5-84b2-0e04084ee3e1', 'kakao', '8091589575', 'user_8091589575', '이름908',
    '닉네임908', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_629.jpg', True, 8,
    1, '908번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/908', False, '미적분, 수학적 모델링, 확률, 선형대수학',
    '2024-08-23 02:27:21', '2024-09-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c4c7a7df-0444-4707-a342-963ecd46815f', 'naver', '4693331211', 'user_4693331211', '이름909',
    '닉네임909', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/39.jpg', True, 32,
    10, '909번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/909', False, '어휘 학습, 영작 연습, 영어 문법, 기초 회화',
    '2025-02-09 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f2de1d63-e9e5-4455-b38a-f3a239b5deff', 'google', '7344669174', 'sub', '이름910',
    '닉네임910', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_349.jpg', False, 8,
    1, '910번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/910', True, 'UI 설계, 와이어프레임, UX 리서치, Figma',
    '2024-12-12 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a88d85ac-74a7-4e28-841f-1049dd72464b', 'google', '9659432803', 'sub', '이름911',
    '닉네임911', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/29.jpg', False, 38,
    1, '911번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/911', True, 'Spring Security, JPA, Spring',
    '2024-11-29 02:27:21', '2025-03-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '418ecbe1-be6b-47a6-a2c8-b3c0f517cac3', 'kakao', '2035409296', 'user_2035409296', '이름912',
    '닉네임912', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/1.jpg', True, 8,
    1, '912번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/912', False, 'React, HTML, JavaScript',
    '2025-01-24 02:27:21', '2025-02-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ae53e8ab-5a49-44b3-95f8-5c0016a40124', 'google', '9637007813', 'sub', '이름913',
    '닉네임913', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/94.jpg', False, 36,
    18, '913번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/913', True, 'Spring, Spring Security, Spring Boot',
    '2024-07-10 02:27:21', '2024-12-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '4028f0e8-b0e9-46a7-b743-ad1d4f627129', 'naver', '3166867343', 'user_3166867343', '이름914',
    '닉네임914', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_583.jpg', True, 31,
    27, '914번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/914', True, '미적분, 선형대수학, 수학적 모델링',
    '2024-07-18 02:27:21', '2025-01-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1edc593d-573a-458f-a0ec-18d7aec65b07', 'google', '7835916499', 'sub', '이름915',
    '닉네임915', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/78.jpg', False, 35,
    22, '915번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/915', True, '수학문제 풀이, 기본 공식, 수학기초, 중등수학',
    '2024-06-09 02:27:21', '2024-06-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '84424e7a-9284-46bc-b152-441934d3fe38', 'kakao', '4401134398', 'user_4401134398', '이름916',
    '닉네임916', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_284.jpg', False, 34,
    16, '916번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/916', False, '운동 루틴 계획, 체중 감량, 트레이닝 피드백, 근육 증대',
    '2024-05-13 02:27:21', '2024-12-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a431bbd5-6515-4a8c-a133-344a995f080f', 'google', '1095924962', 'sub', '이름917',
    '닉네임917', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/17.jpg', False, 36,
    12, '917번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/917', False, '영어 문법, 어휘 학습, 기초 회화',
    '2025-01-03 02:27:21', '2025-01-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '35d36428-becb-45fe-abd3-d93d5fda7728', 'kakao', '7605766737', 'user_7605766737', '이름918',
    '닉네임918', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_765.jpg', False, 3,
    2, '918번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/918', False, '기초 회화, 어휘 학습, 영어 문법',
    '2025-02-21 02:27:21', '2025-04-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9680629a-bdd5-4648-9c6e-7f1cd2404045', 'naver', '7521208278', 'user_7521208278', '이름919',
    '닉네임919', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/46.jpg', True, 8,
    1, '919번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/919', True, 'UI 디자인, iOS 앱 개발, Flutter, Android Studio',
    '2024-06-04 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '33fff2fd-dbce-4876-aea9-9ff011f284f8', 'google', '3823296180', 'sub', '이름920',
    '닉네임920', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_306.jpg', True, 7,
    3, '920번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/920', False, '운동 루틴 계획, 체중 감량, 트레이닝 피드백',
    '2025-04-01 02:27:21', '2025-05-10 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f26dc931-4d02-4966-b525-34157d5e2771', 'google', '9696700108', 'sub', '이름921',
    '닉네임921', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/36.jpg', True, 6,
    6, '921번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/921', False, '확률, 수학적 모델링, 미적분, 선형대수학',
    '2024-09-13 02:27:21', '2024-10-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c18b44a8-8076-469e-aa44-981057063495', 'google', '9837694188', 'sub', '이름922',
    '닉네임922', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/50.jpg', False, 32,
    17, '922번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/922', False, '중등수학, 수학기초, 수학문제 풀이, 기본 공식',
    '2024-09-05 02:27:21', '2024-12-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '26b58cfa-1f7f-403f-944f-91d8864fd5e5', 'kakao', '5079302345', 'user_5079302345', '이름923',
    '닉네임923', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_208.jpg', True, 6,
    1, '923번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/923', False, 'React, CSS, HTML, JavaScript',
    '2024-08-24 02:27:21', '2024-11-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e885c2e9-6253-42cc-90cc-5a83883ffa7a', 'naver', '3488311162', 'user_3488311162', '이름924',
    '닉네임924', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_900.jpg', False, 33,
    7, '924번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/924', False, '수학문제 풀이, 수학기초, 중등수학, 기본 공식',
    '2024-08-19 02:27:21', '2025-03-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '58344cf9-d593-481b-ae8b-1cf43e860869', 'naver', '4352254406', 'user_4352254406', '이름925',
    '닉네임925', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_364.jpg', True, 3,
    2, '925번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/925', True, '트레이닝 피드백, 근육 증대, 체중 감량, 운동 루틴 계획',
    '2024-12-11 02:27:21', '2024-12-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3c10221c-bf51-40c8-a0f2-bf60829a6568', 'google', '5199092536', 'sub', '이름926',
    '닉네임926', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/68.jpg', False, 39,
    4, '926번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/926', True, '수학적 모델링, 미적분, 확률',
    '2024-09-20 02:27:21', '2025-01-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '36270784-c47e-406e-a8fe-9dc6c4ab756b', 'kakao', '5079868045', 'user_5079868045', '이름927',
    '닉네임927', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_493.jpg', False, 1,
    23, '927번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/927', True, '기타, 악보 읽기, 작곡 기초, 리듬 연습',
    '2024-08-20 02:27:21', '2024-12-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '46742af4-10ab-476f-9e02-6d7c2c875b01', 'naver', '1342843112', 'user_1342843112', '이름928',
    '닉네임928', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/47.jpg', False, 39,
    1, '928번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/928', False, 'UX 리서치, 와이어프레임, Figma, UI 설계',
    '2025-04-19 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'eabd0184-4096-456d-b552-ca38a8937f96', 'naver', '5699839483', 'user_5699839483', '이름929',
    '닉네임929', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/96.jpg', True, 35,
    6, '929번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/929', False, 'Flutter, Android Studio, UI 디자인',
    '2024-06-04 02:27:21', '2024-07-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bc0eb83a-5481-441a-8100-97a69fdcd3a2', 'google', '5081946026', 'sub', '이름930',
    '닉네임930', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_524.jpg', True, 4,
    4, '930번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/930', True, '기타 기초, 피아노 기초, 리듬 맞추기, 기본 코드',
    '2024-06-21 02:27:21', '2024-08-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8fe5e1d0-a8e2-42c8-96c7-ad4b6bd83b8a', 'google', '2916661612', 'sub', '이름931',
    '닉네임931', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/94.jpg', True, 37,
    10, '931번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/931', True, 'JPA, Spring Security, Spring, Spring Boot',
    '2025-03-29 02:27:21', '2025-05-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '264928af-f5f5-45c7-8624-d5bb20fa473a', 'naver', '6206121071', 'user_6206121071', '이름932',
    '닉네임932', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/45.jpg', False, 31,
    22, '932번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/932', True, '아이콘 디자인, 디지털 일러스트, 포스터 디자인',
    '2024-09-06 02:27:21', '2024-09-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd52ec21d-44a4-4112-a31f-f498a7317269', 'google', '1151590675', 'sub', '이름933',
    '닉네임933', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/94.jpg', True, 31,
    8, '933번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/933', False, 'iOS 앱 개발, UI 디자인, Android Studio, Flutter',
    '2024-11-17 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '968a6839-1871-43bc-9a0d-5550785b7626', 'naver', '9226883311', 'user_9226883311', '이름934',
    '닉네임934', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/7.jpg', False, 31,
    29, '934번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/934', False, 'JavaScript, React, HTML, CSS',
    '2025-03-21 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '163c85bf-59cd-49d7-b047-3ac326b14f44', 'naver', '7759529194', 'user_7759529194', '이름935',
    '닉네임935', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/99.jpg', False, 6,
    2, '935번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/935', False, 'UI 설계, Figma, 와이어프레임',
    '2024-07-22 02:27:21', '2025-01-22 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c4c4ebd4-8c59-476f-a3af-8e2d076e40c2', 'kakao', '6493484224', 'user_6493484224', '이름936',
    '닉네임936', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/86.jpg', False, 39,
    3, '936번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/936', False, 'Figma, UI 설계, 와이어프레임',
    '2025-02-02 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '525f5cce-8a67-4b5d-b748-e29216252108', 'naver', '9838203781', 'user_9838203781', '이름937',
    '닉네임937', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/85.jpg', False, 37,
    6, '937번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/937', False, '운동 기록, 근육 만들기, 체중 감량 운동, 기초 운동법',
    '2024-07-18 02:27:21', '2024-12-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '24124876-9520-4a39-b80e-3f48838e251a', 'google', '6588018869', 'sub', '이름938',
    '닉네임938', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/20.jpg', True, 35,
    17, '938번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/938', True, '악보 읽기, 기타, 리듬 연습',
    '2024-06-16 02:27:21', '2024-10-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1ae0d1b3-4d22-48de-8202-b8b206fbc854', 'kakao', '9626446167', 'user_9626446167', '이름939',
    '닉네임939', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/36.jpg', False, 32,
    13, '939번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/939', False, '근육 증대, 운동 루틴 계획, 체중 감량',
    '2025-02-17 02:27:21', '2025-02-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '95bd68b9-39a0-4ed4-99da-42d91c351453', 'kakao', '8966384697', 'user_8966384697', '이름940',
    '닉네임940', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/76.jpg', True, 34,
    1, '940번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/940', False, 'Kotlin, Firebase, React Native, Swift',
    '2025-05-07 02:27:21', '2025-05-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d6656a3-0d74-43e5-9de2-c9d89ef37bed', 'google', '4073729397', 'sub', '이름941',
    '닉네임941', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/37.jpg', True, 36,
    4, '941번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/941', True, '피아노 기초, 리듬 맞추기, 기타 기초, 기본 코드',
    '2025-05-07 02:27:21', '2025-05-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '88a6de49-5c33-4396-b1ba-1be58adaec2d', 'google', '4025293951', 'sub', '이름942',
    '닉네임942', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/45.jpg', True, 4,
    1, '942번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/942', True, '체중 감량 운동, 근육 만들기, 기초 운동법',
    '2025-01-01 02:27:21', '2025-02-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5c44bc02-5838-4f0e-913c-cd2e6e37045e', 'kakao', '7894756176', 'user_7894756176', '이름943',
    '닉네임943', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/13.jpg', False, 37,
    13, '943번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/943', True, '리듬 맞추기, 기타 기초, 기본 코드',
    '2024-07-05 02:27:21', '2025-02-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8682e303-dfef-47d8-9014-b0fb288880f3', 'naver', '5382079008', 'user_5382079008', '이름944',
    '닉네임944', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_904.jpg', True, 32,
    17, '944번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/944', False, '운동 루틴 계획, 근육 증대, 체중 감량, 트레이닝 피드백',
    '2025-02-07 02:27:21', '2025-04-12 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'f3d3b760-0b72-4627-ab3a-1ceb87799585', 'kakao', '2671057772', 'user_2671057772', '이름945',
    '닉네임945', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/68.jpg', False, 2,
    9, '945번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/945', False, '기초 회화, 영어 문법, 어휘 학습',
    '2025-05-08 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e5b67219-faf3-4e6b-aa83-ed0ec60059d3', 'kakao', '2389671793', 'user_2389671793', '이름946',
    '닉네임946', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/36.jpg', True, 32,
    11, '946번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/946', False, '리듬 맞추기, 기본 코드, 피아노 기초, 기타 기초',
    '2024-08-03 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '11edbeb1-91b3-4ad4-8279-944a237639dd', 'naver', '2089912118', 'user_2089912118', '이름947',
    '닉네임947', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/8.jpg', True, 35,
    14, '947번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/947', True, '리듬 연습, 기타, 작곡 기초, 악보 읽기',
    '2024-05-25 02:27:21', '2025-03-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0fc2defa-a6c9-41b2-a138-43862f242a9f', 'naver', '5687909504', 'user_5687909504', '이름948',
    '닉네임948', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/2.jpg', False, 7,
    2, '948번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/948', True, '근육 만들기, 체중 감량 운동, 기초 운동법, 운동 기록',
    '2025-04-19 02:27:21', '2025-04-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a5eb240b-df66-4015-a2f6-ac4f69cec289', 'kakao', '7342013371', 'user_7342013371', '이름949',
    '닉네임949', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/39.jpg', True, 32,
    12, '949번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/949', True, '기초 회화, 어휘 학습, 영어 문법, 영작 연습',
    '2024-12-18 02:27:21', '2024-12-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3c16ecba-af5f-4bc0-abb2-476e8ff785a6', 'kakao', '5426235298', 'user_5426235298', '이름950',
    '닉네임950', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_841.jpg', False, 4,
    1, '950번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/950', False, 'TOEIC, 영어 회화, 비즈니스 영어, 리스닝 연습',
    '2024-07-10 02:27:21', '2024-08-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'ed3b6616-3903-48b4-8b7b-44a497cf29e1', 'naver', '2746640042', 'user_2746640042', '이름951',
    '닉네임951', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_420.jpg', False, 32,
    3, '951번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/951', True, '기본 코드, 피아노 기초, 리듬 맞추기, 기타 기초',
    '2024-09-01 02:27:21', '2025-01-23 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '723c30c0-f61e-46e7-baa0-b415561ffc20', 'google', '6500222310', 'sub', '이름952',
    '닉네임952', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/79.jpg', False, 36,
    21, '952번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/952', False, '영어 회화, TOEIC, 리스닝 연습, 비즈니스 영어',
    '2025-04-25 02:27:21', '2025-05-06 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9507c7b1-f82e-412b-862e-df8febe996ba', 'google', '1543875823', 'sub', '이름953',
    '닉네임953', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/5.jpg', True, 32,
    18, '953번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/953', True, '어휘 학습, 영어 문법, 영작 연습, 기초 회화',
    '2025-04-29 02:27:21', '2025-05-01 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '25931247-c50f-448c-9a07-e66d9e06cf8c', 'google', '9277308322', 'sub', '이름954',
    '닉네임954', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/3.jpg', True, 37,
    8, '954번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/954', False, 'Spring Security, Spring Boot, JPA',
    '2025-03-31 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0b028c14-df31-4629-9fe0-f51382c2a8d1', 'naver', '5952572611', 'user_5952572611', '이름955',
    '닉네임955', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/44.jpg', False, 32,
    2, '955번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/955', False, 'Swift, Kotlin, React Native',
    '2024-12-21 02:27:21', '2025-03-20 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3257f2c1-aa22-4eab-8ea6-545b45898433', 'google', '7036515081', 'sub', '이름956',
    '닉네임956', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/83.jpg', True, 8,
    1, '956번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/956', False, 'React Native, Swift, Firebase',
    '2025-01-09 02:27:21', '2025-04-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '19bfadae-5a96-43e0-8568-4a21f7933b7f', 'google', '6175771159', 'sub', '이름957',
    '닉네임957', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/85.jpg', True, 39,
    2, '957번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/957', False, '기초 회화, 영작 연습, 어휘 학습',
    '2025-04-30 02:27:21', '2025-05-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0bd23dfd-dadd-4107-a8b2-eaa9cab19412', 'naver', '3442868022', 'user_3442868022', '이름958',
    '닉네임958', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/91.jpg', True, 31,
    18, '958번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/958', True, '악보 읽기, 작곡 기초, 기타',
    '2024-06-30 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '1b849124-3696-4915-b0c9-4a428b764c60', 'google', '5960868162', 'sub', '이름959',
    '닉네임959', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/60.jpg', True, 7,
    1, '959번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/959', True, '기타 기초, 리듬 맞추기, 피아노 기초, 기본 코드',
    '2024-12-14 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '7077d69d-8891-45f2-8300-78dedeeedaf8', 'google', '5844670245', 'sub', '이름960',
    '닉네임960', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/15.jpg', True, 3,
    5, '960번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/960', True, '디자인 시스템, 사용자 흐름, 프로토타입, 버튼 디자인',
    '2024-05-24 02:27:21', '2024-08-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'd36af90b-6a29-487e-9a90-b3a9978701b8', 'google', '7434769321', 'sub', '이름961',
    '닉네임961', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_163.jpg', True, 38,
    9, '961번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/961', True, '악보 읽기, 리듬 연습, 작곡 기초',
    '2024-05-31 02:27:21', '2024-09-26 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3053ca18-b795-4047-821c-fc6eb3ea4178', 'google', '5451517906', 'sub', '이름962',
    '닉네임962', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_973.jpg', False, 7,
    2, '962번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/962', False, 'CSS, JavaScript, React, HTML',
    '2024-09-06 02:27:21', '2024-09-17 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '55e3a508-1b4c-437c-a678-31a13d849605', 'google', '6945020705', 'sub', '이름963',
    '닉네임963', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_317.jpg', True, 32,
    3, '963번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'ALL', 'https://example.com/963', False, '영작 연습, 기초 회화, 어휘 학습',
    '2024-08-28 02:27:21', '2025-03-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '718c4925-214d-4b31-bfa1-851fa573718d', 'naver', '3162244122', 'user_3162244122', '이름964',
    '닉네임964', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_713.jpg', False, 2,
    3, '964번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/964', True, 'Swift, Firebase, React Native, Kotlin',
    '2025-02-22 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'df80f842-f5b9-4918-9057-d042fb0bc097', 'google', '1784880358', 'sub', '이름965',
    '닉네임965', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_272.jpg', True, 1,
    19, '965번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/965', False, 'Kotlin, Swift, Firebase, React Native',
    '2024-08-03 02:27:21', '2025-01-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e205b06d-0424-409b-9832-cb7a819b23d5', 'kakao', '1892194952', 'user_1892194952', '이름966',
    '닉네임966', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/25.jpg', True, 6,
    4, '966번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/966', False, '수학기초, 기본 공식, 중등수학, 수학문제 풀이',
    '2024-06-17 02:27:21', '2025-03-15 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8fc0fb1f-177c-41f1-ad1f-d35526144d29', 'google', '6536986779', 'sub', '이름967',
    '닉네임967', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/81.jpg', True, 5,
    4, '967번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/967', True, '기타, 악보 읽기, 리듬 연습',
    '2025-03-13 02:27:21', '2025-04-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '691fe9b6-e518-48df-a176-9d0dad62798a', 'google', '7688600818', 'sub', '이름968',
    '닉네임968', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/69.jpg', False, 34,
    9, '968번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/968', False, 'JPA, Spring Security, Spring Boot',
    '2024-08-14 02:27:21', '2024-12-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'aee485e5-46d4-4804-9899-e1c5d0fc2fc5', 'kakao', '1230593530', 'user_1230593530', '이름969',
    '닉네임969', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/32.jpg', False, 33,
    9, '969번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/969', False, '포스터 디자인, 디지털 일러스트, 아이콘 디자인, 타이포그래피',
    '2025-05-04 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2bdc1fce-c73e-467c-8ee6-61a365f6b1b1', 'naver', '3063117114', 'user_3063117114', '이름970',
    '닉네임970', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/56.jpg', True, 32,
    12, '970번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/970', True, '프로토타입, 사용자 흐름, 디자인 시스템, 버튼 디자인',
    '2024-12-05 02:27:21', '2025-01-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '456010cd-34a8-4053-b1ca-43efc90b3108', 'kakao', '8683590484', 'user_8683590484', '이름971',
    '닉네임971', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/23.jpg', True, 39,
    4, '971번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/971', False, '어휘 학습, 영작 연습, 영어 문법',
    '2025-03-10 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2a2528c9-864f-470e-8717-a3a4acaa433f', 'kakao', '3499275742', 'user_3499275742', '이름972',
    '닉네임972', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_529.jpg', False, 5,
    3, '972번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING',
    'ONLINE', 'https://example.com/972', False, '중등수학, 수학문제 풀이, 수학기초',
    '2024-12-22 02:27:21', '2025-04-30 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5a1b3060-10fb-4f27-8c64-cf2e92472507', 'google', '9744119328', 'sub', '이름973',
    '닉네임973', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_415.jpg', False, 6,
    16, '973번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/973', True, '수학문제 풀이, 수학기초, 기본 공식',
    '2025-01-03 02:27:21', '2025-01-09 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5a25b4f6-bba3-4bf3-a687-59930d8371c6', 'naver', '2847493550', 'user_2847493550', '이름974',
    '닉네임974', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_386.jpg', True, 1,
    19, '974번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/974', False, '기초 운동법, 근육 만들기, 운동 기록',
    '2024-12-03 02:27:21', '2025-01-05 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '419efdfa-c8da-46cd-8e59-d691ce42c14a', 'naver', '1130803920', 'user_1130803920', '이름975',
    '닉네임975', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/9.jpg', True, 32,
    9, '975번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_EVENING',
    'ONLINE', 'https://example.com/975', False, 'TOEIC, 리스닝 연습, 영어 회화, 비즈니스 영어',
    '2024-09-19 02:27:21', '2024-10-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '0d0a12ce-ae22-408a-9112-dff13f873929', 'naver', '5126452280', 'user_5126452280', '이름976',
    '닉네임976', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/42.jpg', False, 5,
    3, '976번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/976', True, 'Kotlin, React Native, Swift',
    '2024-09-21 02:27:21', '2024-11-04 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'a38d01b6-bc6d-402b-8c5b-e83621301143', 'kakao', '9927989108', 'user_9927989108', '이름977',
    '닉네임977', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/1.jpg', False, 34,
    16, '977번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/977', False, '작곡 기초, 악보 읽기, 리듬 연습, 기타',
    '2025-05-03 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b7346dbd-29f9-4990-9311-0372f4621776', 'google', '6699036079', 'sub', '이름978',
    '닉네임978', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/23.jpg', True, 37,
    14, '978번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/978', False, '어휘 학습, 영작 연습, 기초 회화',
    '2024-09-19 02:27:21', '2024-12-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '233b6939-4d47-4eb2-b516-17f98cca5d90', 'naver', '2211886316', 'user_2211886316', '이름979',
    '닉네임979', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/84.jpg', True, 8,
    1, '979번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'OFFLINE', 'https://example.com/979', False, '사용자 흐름, 프로토타입, 버튼 디자인, 디자인 시스템',
    '2025-01-04 02:27:21', '2025-01-31 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2ab7608c-30fb-402e-ab28-17628cbd7aeb', 'naver', '9658528534', 'user_9658528534', '이름980',
    '닉네임980', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/85.jpg', True, 4,
    1, '980번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'ALL', 'https://example.com/980', False, '어휘 학습, 영작 연습, 기초 회화',
    '2024-07-25 02:27:21', '2025-03-27 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '53a62529-252d-45d0-9f1b-062b37b8c17f', 'kakao', '4313168075', 'user_4313168075', '이름981',
    '닉네임981', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_968.jpg', True, 32,
    8, '981번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/981', True, '프로토타입, 사용자 흐름, 디자인 시스템',
    '2024-12-28 02:27:21', '2025-03-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e250b459-bbb4-4651-9343-28068e46bb5c', 'kakao', '2269906880', 'user_2269906880', '이름982',
    '닉네임982', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/3.jpg', True, 8,
    1, '982번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/982', True, 'HTML, React, CSS',
    '2024-06-21 02:27:21', '2024-09-16 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '8598306e-8d6c-4d23-a396-4e3b157652d0', 'naver', '1608483433', 'user_1608483433', '이름983',
    '닉네임983', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_417.jpg', False, 1,
    18, '983번째 더미 소개글입니다.', 'APP_DEV', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/983', True, 'Swift, Kotlin, Firebase',
    '2025-02-21 02:27:21', '2025-04-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b7232947-e50a-4c4b-8c0c-75be8eb212fd', 'kakao', '2242767005', 'user_2242767005', '이름984',
    '닉네임984', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_365.jpg', True, 2,
    5, '984번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'ALL', 'https://example.com/984', True, 'Spring Boot, Spring Security, Spring',
    '2024-07-13 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '6eae254b-c02b-4c3c-af36-bdcb88f9506c', 'kakao', '8237836310', 'user_8237836310', '이름985',
    '닉네임985', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_594.jpg', False, 37,
    13, '985번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON',
    'OFFLINE', 'https://example.com/985', True, 'React, JavaScript, CSS, HTML',
    '2024-11-16 02:27:21', '2025-03-13 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b04227ee-f893-4121-8554-998cb24bd6aa', 'google', '3124748869', 'sub', '이름986',
    '닉네임986', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/45.jpg', True, 5,
    1, '986번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_AFTERNOON',
    'ONLINE', 'https://example.com/986', True, '기초 운동법, 체중 감량 운동, 운동 기록',
    '2024-08-09 02:27:21', '2024-11-25 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '2af385fe-88f4-457d-b90f-5a4d11713dda', 'naver', '1882772857', 'user_1882772857', '이름987',
    '닉네임987', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/15.jpg', False, 38,
    6, '987번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/987', True, '시각 디자인, 브랜딩, Photoshop',
    '2024-08-31 02:27:21', '2024-12-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c106a1da-c8e6-4f69-ad10-59ba1c3a8202', 'google', '8740890165', 'sub', '이름988',
    '닉네임988', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/74.jpg', True, 37,
    14, '988번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_AFTERNOON',
    'OFFLINE', 'https://example.com/988', True, '기초 회화, 영작 연습, 영어 문법',
    '2024-10-04 02:27:21', '2025-05-11 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bbb475c7-3786-4f8e-a203-b4203e637fcd', 'naver', '3222192636', 'user_3222192636', '이름989',
    '닉네임989', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/10.jpg', False, 38,
    22, '989번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/989', True, 'UI 설계, Figma, UX 리서치, 와이어프레임',
    '2024-06-04 02:27:21', '2025-01-08 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'e51dcd8f-2a6b-417c-8d07-6ee3fab91a81', 'naver', '6923395075', 'user_6923395075', '이름990',
    '닉네임990', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/54.jpg', False, 31,
    11, '990번째 더미 소개글입니다.', 'APP_DEV', 'WEEKEND_EVENING',
    'ALL', 'https://example.com/990', False, 'Flutter, UI 디자인, iOS 앱 개발',
    '2024-12-14 02:27:21', '2024-12-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'b9c8d3d1-a894-4102-9465-c36a04f959fe', 'naver', '1663462272', 'user_1663462272', '이름991',
    '닉네임991', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/6.jpg', False, 5,
    2, '991번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_EVENING',
    'OFFLINE', 'https://example.com/991', False, '트레이닝 피드백, 체중 감량, 근육 증대',
    '2024-08-20 02:27:21', '2024-09-14 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '45be5cf2-8cb0-412a-8e28-b4c5e838a428', 'naver', '9830743454', 'user_9830743454', '이름992',
    '닉네임992', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/67.jpg', False, 36,
    4, '992번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKEND_MORNING',
    'ALL', 'https://example.com/992', True, 'React, CSS, HTML, JavaScript',
    '2024-11-26 02:27:21', '2025-04-24 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '18d004ab-eacf-4c77-b7e6-56c6602320ce', 'kakao', '7923038098', 'user_7923038098', '이름993',
    '닉네임993', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/62.jpg', True, 2,
    1, '993번째 더미 소개글입니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/993', False, 'Illustrator, Photoshop, 시각 디자인',
    '2024-08-23 02:27:21', '2024-11-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'bf9f5313-61b0-4a97-817d-57332a51a1c4', 'naver', '6215551078', 'user_6215551078', '이름994',
    '닉네임994', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_301.jpg', False, 31,
    20, '994번째 더미 소개글입니다.', 'FITNESS_YOGA', 'WEEKDAY_MORNING',
    'ONLINE', 'https://example.com/994', False, '운동 기록, 체중 감량 운동, 기초 운동법',
    '2025-03-30 02:27:21', '2025-04-02 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5c33ba37-ba79-4e9d-b288-55a5c7fd7703', 'kakao', '4459123354', 'user_4459123354', '이름995',
    '닉네임995', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/18.jpg', True, 36,
    1, '995번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/995', True, 'TOEIC, 리스닝 연습, 비즈니스 영어',
    '2025-02-03 02:27:21', '2025-03-29 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3b537ab9-7ed7-48d3-911e-92fa5f7c8c13', 'naver', '6844120094', 'user_6844120094', '이름996',
    '닉네임996', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_816.jpg', True, 2,
    4, '996번째 더미 소개글입니다.', 'WEB_DEV', 'WEEKDAY_EVENING',
    'ALL', 'https://example.com/996', True, 'JPA, Spring Boot, Spring, Spring Security',
    '2025-03-21 02:27:21', '2025-03-21 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '3af95269-1c30-4c02-a3a1-bbf47081885e', 'naver', '2559936425', 'user_2559936425', '이름997',
    '닉네임997', 'ROLE_MENTEE', 'http://k.kakaocdn.net/dn/image_952.jpg', True, 35,
    1, '997번째 더미 소개글입니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING',
    'OFFLINE', 'https://example.com/997', True, '디자인 시스템, 버튼 디자인, 사용자 흐름, 프로토타입',
    '2024-05-21 02:27:21', '2025-04-07 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    'c442e1f2-d97e-4c95-97de-65f84700e6e8', 'google', '6062497403', 'sub', '이름998',
    '닉네임998', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/45.jpg', False, 3,
    5, '998번째 더미 소개글입니다.', 'EDUCATION_MATH', 'WEEKEND_EVENING',
    'ONLINE', 'https://example.com/998', False, '중등수학, 수학문제 풀이, 수학기초, 기본 공식',
    '2024-07-15 02:27:21', '2025-04-19 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '5d7eda3a-7593-4c9a-9b11-72c92c783e9b', 'kakao', '9849770697', 'user_9849770697', '이름999',
    '닉네임999', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/28.jpg', False, 34,
    5, '999번째 더미 소개글입니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING',
    'OFFLINE', 'https://example.com/999', True, '영작 연습, 영어 문법, 기초 회화',
    '2025-01-15 02:27:21', '2025-04-28 02:27:21'
);


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
    '9cd58147-2545-486e-8dea-ca54b348bad2', 'google', '3693231845', 'sub', '이름1000',
    '닉네임1000', 'ROLE_MENTOR', 'http://k.kakaocdn.net/dn/image_301.jpg', True, 32,
    10, '1000번째 더미 소개글입니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON',
    'ONLINE', 'https://example.com/1000', False, '작곡 기초, 리듬 연습, 악보 읽기',
    '2024-07-24 02:27:21', '2025-01-16 02:27:21'
);

