INSERT INTO area (areacode, area_name) VALUES (1, '서울');
INSERT INTO area (areacode, area_name) VALUES (2, '부산');
INSERT INTO area (areacode, area_name) VALUES (3, '인천');
INSERT INTO area (areacode, area_name) VALUES (4, '대전');
INSERT INTO area (areacode, area_name) VALUES (5, '광주');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (1, 1, '강남구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (1, 2, '서초구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (1, 3, '송파구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (1, 4, '마포구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (1, 5, '성동구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (2, 1, '해운대구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (2, 2, '수영구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (2, 3, '부산진구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (3, 1, '연수구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (3, 2, '부평구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (3, 3, '남동구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (4, 1, '유성구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (4, 2, '서구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (5, 1, '북구');
INSERT INTO sigungu (areacode, sigungucode, sigunguname) VALUES (5, 2, '서구');

INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '8eeac781-abba-4ba8-ab33-58d694e832bd', 'kakao', '4660846158', 'user_4660846158',
             '이혜진', '도전하는창작자218', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/73.jpg',
             false, 3, 2,
             '브랜딩 중심의 디자인/그래픽 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING', 'ALL',
             'https://t.me/jiminryu_682', false, 'Photoshop, 타이포그래피, Illustrator, 브랜딩, 그래픽디자인',
             '2025-04-13 01:48:40', '2025-04-13 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '76115e5e-000e-4b2e-89f0-318c9f45e1e3', 'kakao', '8886215084', 'user_8886215084',
             '김수빈', '성장하는코더279', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/29.jpg',
             false, 5, 1,
             '재즈 중심의 음악/피아노 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'MUSIC_PIANO', 'WEEKEND_EVENING', 'ONLINE',
             'https://open.kakao.com/o/80919a', true, '작곡, 음악이론, 피아노교육, 재즈',
             '2025-05-02 01:48:40', '2025-05-02 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'e28786d8-6bf3-4433-bebb-33eaf85f5c13', 'naver', '8391660001', 'user_8391660001',
             '김동현', '열정적인코더170', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/27.jpg',
             false, 3, 1,
             '프로그래밍/앱개발에 관심이 많은 멘티입니다. 6년 경력이 있으며, Swift 분야에 전문성이 있습니다.', 'APP_DEV', 'WEEKDAY_EVENING', 'OFFLINE',
             'https://discord.gg/f46028', false, 'Swift, Kotlin, Android',
             '2025-04-05 01:48:40', '2025-04-05 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '3927212d-d4bc-4dde-9ddc-af218b3c1813', 'google', '6289540655', 'user_6289540655',
             '조옥자', '꿈꾸는코더474', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/21.jpg',
             false, 4, 1,
             '4년차 디자인/그래픽 멘티로 활동 중입니다. 일러스트레이션 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON', 'ALL',
             'https://discord.gg/n41220', false, '타이포그래피, 브랜딩, 그래픽디자인, Photoshop, 일러스트레이션',
             '2025-04-13 01:48:40', '2025-04-13 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '4df08109-a024-4dc8-af31-63dd0add6232', 'google', '3865243985', 'user_3865243985',
             '윤정숙', '활기찬코더753', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/68.jpg',
             false, 5, 1,
             '디자인/UX/UI 분야에서 활동하고 있는 멘티입니다. 어도비XD을 주로 다루고 있습니다.', 'DESIGN_UX_UI', 'WEEKDAY_EVENING', 'OFFLINE',
             'https://open.kakao.com/o/22340z', false, '스케치, 어도비XD, 피그마, 사용자경험, 디자인시스템',
             '2025-04-11 01:48:40', '2025-04-11 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '27dd8a48-1975-4bea-ad13-36556436319f', 'google', '7202800256', 'user_7202800256',
             '박승현', '활기찬코더995', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/62.jpg',
             false, 2, 3,
             '그래픽디자인 중심의 디자인/그래픽 멘토입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON', 'ALL',
             'https://open.kakao.com/o/18259g', false, 'Illustrator, Photoshop, 브랜딩, 타이포그래피, 일러스트레이션',
             '2025-04-20 01:48:40', '2025-04-20 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '3bafe9bc-b39b-43f3-8101-64173e02e2aa', 'google', '4141153082', 'user_4141153082',
             '이지은', '성장하는선생님553', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/56.jpg',
             false, 2, 2,
             '운동/요가 분야에서 활동하고 있는 멘티입니다. 요가강사을 주로 다루고 있습니다.', 'FITNESS_YOGA', 'WEEKEND_MORNING', 'ONLINE',
             'https://discord.gg/o75791', true, '요가, 스트레칭, 요가강사',
             '2025-05-02 01:48:40', '2025-05-02 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '1529ba82-609c-4af7-a788-4ef668bd7e40', 'google', '4226098582', 'user_4226098582',
             '문도윤', '열정적인선생님786', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/46.jpg',
             false, 1, 5,
             '2년차 디자인/UX/UI 멘토로 활동 중입니다. 디자인시스템 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_UX_UI', 'WEEKEND_MORNING', 'OFFLINE',
             'https://discord.gg/n85041', false, '피그마, 사용자경험, UX/UI',
             '2025-04-08 01:48:40', '2025-04-08 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'b712512d-acc1-4a82-85fa-9aee0390871b', 'kakao', '2287501839', 'user_2287501839',
             '이미경', '똑똑한창작자433', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/87.jpg',
             false, 4, 2,
             '교육/수학를 전공하고 현업에서 1년간 일하고 있습니다. 통계학 분야에서 멘토링 해드립니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING', 'ONLINE',
             'https://discord.gg/r94834', false, '수학교육, 선형대수, 수학',
             '2025-04-07 01:48:40', '2025-04-07 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'e535d410-3b81-4f6f-b89b-95f25de53496', 'kakao', '3756653036', 'user_3756653036',
             '박지훈', '꿈꾸는선생님433', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/75.jpg',
             false, 5, 1,
             '디자인/UX/UI 분야에서 활동하고 있는 멘토입니다. 피그마을 주로 다루고 있습니다.', 'DESIGN_UX_UI', 'WEEKEND_MORNING', 'ONLINE',
             'https://discord.gg/x44880', true, '스케치, 어도비XD, 피그마, 사용자경험',
             '2025-04-14 01:48:40', '2025-04-14 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '6d8ee79f-0bd4-43ec-af52-31806457c28b', 'google', '5660957507', 'user_5660957507',
             '강정숙', '똑똑한기획자113', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/10.jpg',
             false, 1, 3,
             '수학교육 중심의 교육/수학 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON', 'ONLINE',
             'https://discord.gg/p11150', false, '수학문제풀이, 미적분, 통계학',
             '2025-04-08 01:48:40', '2025-04-08 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'da680ae7-2628-4c94-a4ff-f4de1eba50e7', 'naver', '3278107521', 'user_3278107521',
             '김현준', '활기찬학생524', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/76.jpg',
             false, 3, 2,
             '프로그래밍/웹개발 분야에서 활동하고 있는 멘토입니다. CSS을 주로 다루고 있습니다.', 'WEB_DEV', 'WEEKEND_AFTERNOON', 'ALL',
             'mailto:ieunyeong@example.com', false, '풀스택, 백엔드, 프론트엔드, React',
             '2025-04-23 01:48:40', '2025-04-23 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '012b7d7b-bf97-44f1-98b2-a6d12e4419d4', 'kakao', '2313899911', 'user_2313899911',
             '김경희', '활기찬기획자400', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/5.jpg',
             false, 3, 1,
             '1년차 디자인/그래픽 멘토로 활동 중입니다. 그래픽디자인 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING', 'ALL',
             'https://t.me/minjun89_689', true, '브랜딩, Illustrator, Photoshop',
             '2025-04-18 01:48:40', '2025-04-18 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '0f3ce535-1347-4adc-8893-b2f0dc8f13df', 'kakao', '6678637071', 'user_6678637071',
             '강현준', '도전하는프로그래머822', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/47.jpg',
             false, 3, 3,
             '음악/피아노를 전공하고 현업에서 7년간 일하고 있습니다. 클래식 분야에서 멘토링 해드립니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING', 'ONLINE',
             'mailto:yeongmi92@example.org', false, '클래식, 피아노, 작곡',
             '2025-04-29 01:48:40', '2025-04-29 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'ce3f0a09-732b-48ba-a3d7-4681cefdba29', 'kakao', '4403656968', 'user_4403656968',
             '김서윤', '꿈꾸는코더385', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/11.jpg',
             false, 3, 1,
             '디자인/UX/UI에 관심이 많은 멘티입니다. 7년 경력이 있으며, 어도비XD 분야에 전문성이 있습니다.', 'DESIGN_UX_UI', 'WEEKDAY_AFTERNOON', 'ONLINE',
             'https://open.kakao.com/o/64520r', false, '인터랙션디자인, 스케치, 디자인시스템, 사용자경험',
             '2025-04-09 01:48:40', '2025-04-09 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '6c33409c-ca00-4129-8d5b-8eade714c805', 'naver', '2557107874', 'user_2557107874',
             '황정식', '창의적인멘토556', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/39.jpg',
             false, 4, 2,
             '음악/피아노를 전공하고 현업에서 9년간 일하고 있습니다. 음악이론 분야에서 멘토링 해드립니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON', 'ONLINE',
             'mailto:siubag@example.org', false, '피아노, 클래식, 피아노교육, 재즈, 작곡',
             '2025-05-01 01:48:40', '2025-05-01 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '3a210a76-be9a-4575-b2ae-bd5f4ac88a6e', 'naver', '2083521291', 'user_2083521291',
             '배영수', '행복한선생님967', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/62.jpg',
             false, 1, 5,
             '디자인/그래픽를 전공하고 현업에서 10년간 일하고 있습니다. 그래픽디자인 분야에서 멘토링 해드립니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_AFTERNOON', 'ALL',
             'mailto:subin32@example.org', false, '타이포그래피, Illustrator, Photoshop, 일러스트레이션',
             '2025-04-05 01:48:40', '2025-04-05 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '9b7a6f70-10d6-4673-8bde-c94090fa7ff6', 'naver', '9008898783', 'user_9008898783',
             '심지영', '열정적인엔지니어528', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/33.jpg',
             false, 1, 4,
             'HTML 중심의 프로그래밍/웹개발 멘토입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'WEB_DEV', 'WEEKDAY_EVENING', 'ONLINE',
             'https://open.kakao.com/o/14211i', false, 'Node.js, Vue, 백엔드, Django',
             '2025-04-19 01:48:40', '2025-04-19 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '55886205-98a8-4102-9c2c-6df8c471246e', 'google', '1060042940', 'user_1060042940',
             '구경자', '즐거운창작자990', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/41.jpg',
             false, 4, 1,
             '디자인/그래픽 분야에서 활동하고 있는 멘토입니다. 타이포그래피을 주로 다루고 있습니다.', 'DESIGN_GRAPHIC', 'WEEKEND_EVENING', 'ONLINE',
             'https://discord.gg/i31174', false, 'Illustrator, 타이포그래피, 일러스트레이션, 그래픽디자인, Photoshop',
             '2025-04-10 01:48:40', '2025-04-10 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '260bb907-fbbe-4d81-8b42-b435c8462fc5', 'kakao', '1270712018', 'user_1270712018',
             '김시우', '꿈꾸는창작자703', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/84.jpg',
             false, 4, 1,
             '디자인/그래픽에 관심이 많은 멘티입니다. 6년 경력이 있으며, 브랜딩 분야에 전문성이 있습니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING', 'ONLINE',
             'https://t.me/rbag_652', true, '일러스트레이션, 타이포그래피, Photoshop, 브랜딩',
             '2025-04-04 01:48:40', '2025-04-04 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '4d172f51-e064-4d4b-b5d5-059c99323606', 'google', '1099543828', 'user_1099543828',
             '이진호', '열정적인개발자657', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/84.jpg',
             false, 3, 1,
             '운동/요가 분야에서 활동하고 있는 멘티입니다. 스트레칭을 주로 다루고 있습니다.', 'FITNESS_YOGA', 'WEEKEND_EVENING', 'ONLINE',
             'https://open.kakao.com/o/86683d', false, '요가포즈, 필라테스, 요가, 요가강사, 명상',
             '2025-04-09 01:48:40', '2025-04-09 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '3d27dcd4-6c5f-41f6-a384-20bcb98415af', 'google', '6446473899', 'user_6446473899',
             '서경자', '활기찬디자이너501', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/74.jpg',
             false, 3, 3,
             '8년차 디자인/그래픽 멘토로 활동 중입니다. Photoshop 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING', 'OFFLINE',
             'https://discord.gg/a20721', false, '브랜딩, 일러스트레이션, 타이포그래피',
             '2025-04-04 01:48:40', '2025-04-04 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '62673e38-64da-4d78-a619-1f07ebfc45b9', 'naver', '2542912619', 'user_2542912619',
             '이정식', '행복한기획자304', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/50.jpg',
             false, 5, 1,
             '일러스트레이션 중심의 디자인/그래픽 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'DESIGN_GRAPHIC', 'WEEKEND_AFTERNOON', 'ONLINE',
             'https://open.kakao.com/o/18207w', false, '타이포그래피, 브랜딩, Illustrator, 그래픽디자인, Photoshop',
             '2025-04-24 01:48:40', '2025-04-24 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'b64074de-bbf9-480b-8672-b7343efb1ed0', 'naver', '9878688001', 'user_9878688001',
             '김수민', '창의적인기획자913', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/1.jpg',
             false, 3, 2,
             '7년차 디자인/UX/UI 멘토로 활동 중입니다. UX/UI 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_UX_UI', 'WEEKEND_MORNING', 'ALL',
             'https://discord.gg/f20598', true, '피그마, 사용자경험, UX/UI, 어도비XD, 인터랙션디자인',
             '2025-04-30 01:48:40', '2025-04-30 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'e6bd7245-88ad-43e4-9893-63dc082ca9f4', 'naver', '9216523033', 'user_9216523033',
             '김승민', '열정적인엔지니어397', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/54.jpg',
             false, 2, 2,
             '수학문제풀이 중심의 교육/수학 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'EDUCATION_MATH', 'WEEKEND_MORNING', 'ALL',
             'https://t.me/isumin_276', false, '미적분, 수학교육, 수학문제풀이',
             '2025-04-07 01:48:40', '2025-04-07 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '599fff14-068f-46ec-b4c0-4b8feacc3e21', 'naver', '2360756277', 'user_2360756277',
             '최지후', '친절한엔지니어345', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/69.jpg',
             false, 4, 2,
             '음악/피아노 분야에서 활동하고 있는 멘티입니다. 음악이론을 주로 다루고 있습니다.', 'MUSIC_PIANO', 'WEEKDAY_MORNING', 'OFFLINE',
             'https://t.me/jinugim_543', false, '클래식, 음악이론, 피아노',
             '2025-04-10 01:48:40', '2025-04-10 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'd0b05f31-508e-42f4-b5ef-c1c6742585dd', 'google', '5129812131', 'user_5129812131',
             '윤동현', '열정적인프로그래머134', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/37.jpg',
             false, 1, 2,
             '프로그래밍/앱개발에 관심이 많은 멘토입니다. 8년 경력이 있으며, Swift 분야에 전문성이 있습니다.', 'APP_DEV', 'WEEKEND_MORNING', 'ONLINE',
             'https://open.kakao.com/o/17711h', true, 'iOS, 앱개발, Android, 하이브리드앱',
             '2025-04-28 01:48:40', '2025-04-28 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'd2601cae-4c71-4914-ab88-2cbe2aea168d', 'kakao', '2171625401', 'user_2171625401',
             '최현지', '꿈꾸는학생904', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/61.jpg',
             false, 3, 1,
             '교육/영어를 전공하고 현업에서 6년간 일하고 있습니다. 영작문 분야에서 멘토링 해드립니다.', 'EDUCATION_ENGLISH', 'WEEKEND_EVENING', 'ALL',
             'https://open.kakao.com/o/22925t', true, '영어회화, 토플, 영문법, 토익',
             '2025-04-15 01:48:40', '2025-04-15 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'bd30bf59-48d0-4fa3-a3ba-2388ae048a42', 'naver', '5757853474', 'user_5757853474',
             '김준서', '똑똑한디자이너519', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/42.jpg',
             false, 1, 4,
             '인터랙션디자인 중심의 디자인/UX/UI 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'DESIGN_UX_UI', 'WEEKEND_EVENING', 'ALL',
             'https://t.me/fi_117', false, '스케치, 피그마, 사용자경험',
             '2025-04-04 01:48:40', '2025-04-04 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'e866de8a-4a04-422f-9f7f-653ca2273cc2', 'google', '6401771790', 'user_6401771790',
             '이현우', '꿈꾸는개발자289', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/38.jpg',
             false, 3, 1,
             '미적분 중심의 교육/수학 멘토입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'EDUCATION_MATH', 'WEEKEND_AFTERNOON', 'ONLINE',
             'https://discord.gg/u18529', false, '통계학, 미적분, 수학교육, 수학문제풀이, 선형대수',
             '2025-05-01 01:48:40', '2025-05-01 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '43694914-e9e8-4deb-8c3d-764bf84bafd3', 'naver', '2421170358', 'user_2421170358',
             '이숙자', '친절한개발자229', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/36.jpg',
             false, 1, 4,
             '음악/피아노에 관심이 많은 멘티입니다. 8년 경력이 있으며, 작곡 분야에 전문성이 있습니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING', 'ONLINE',
             'mailto:sangceol45@example.net', true, '재즈, 작곡, 음악이론',
             '2025-04-29 01:48:40', '2025-04-29 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'c752f6be-b48b-4c76-bf64-bb6e227136ba', 'kakao', '8639460154', 'user_8639460154',
             '윤종수', '친절한프로그래머11', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/22.jpg',
             false, 3, 1,
             '10년차 프로그래밍/웹개발 멘티로 활동 중입니다. Vue 관련 질문이나 도움이 필요하시면 연락주세요.', 'WEB_DEV', 'WEEKEND_AFTERNOON', 'ALL',
             'https://t.me/zbae_513', false, 'Spring, 백엔드, Vue, Node.js, JavaScript',
             '2025-04-06 01:48:40', '2025-04-06 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '31816be1-a30c-455f-9a6d-595192fff065', 'google', '7630567724', 'user_7630567724',
             '이현주', '즐거운선생님918', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/94.jpg',
             false, 2, 2,
             '교육/영어 분야에서 활동하고 있는 멘티입니다. 토플을 주로 다루고 있습니다.', 'EDUCATION_ENGLISH', 'WEEKEND_MORNING', 'ALL',
             'https://open.kakao.com/o/69817g', true, '토플, 영작문, 영어교육, 영문법',
             '2025-05-03 01:48:40', '2025-05-03 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'b65b02bd-4818-4872-9184-78c258c7960a', 'kakao', '7518336102', 'user_7518336102',
             '윤승현', '똑똑한디자이너324', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/2.jpg',
             false, 1, 2,
             '음악/피아노를 전공하고 현업에서 8년간 일하고 있습니다. 재즈 분야에서 멘토링 해드립니다.', 'MUSIC_PIANO', 'WEEKEND_MORNING', 'OFFLINE',
             'https://discord.gg/w36992', false, '음악이론, 피아노교육, 작곡, 피아노',
             '2025-05-03 01:48:40', '2025-05-03 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '5511f72a-efcd-419f-80e9-b23072ff8786', 'kakao', '7667396271', 'user_7667396271',
             '황현우', '똑똑한프로그래머355', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/56.jpg',
             false, 5, 2,
             '디자인/그래픽를 전공하고 현업에서 2년간 일하고 있습니다. Photoshop 분야에서 멘토링 해드립니다.', 'DESIGN_GRAPHIC', 'WEEKDAY_EVENING', 'OFFLINE',
             'https://open.kakao.com/o/81910z', true, 'Photoshop, 그래픽디자인, 일러스트레이션',
             '2025-04-12 01:48:40', '2025-04-12 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'fa78cd0d-9121-4149-93ac-31a012fdb634', 'naver', '4880888037', 'user_4880888037',
             '권성민', '창의적인엔지니어808', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/18.jpg',
             false, 3, 1,
             '디자인/UX/UI 분야에서 활동하고 있는 멘티입니다. 디자인시스템을 주로 다루고 있습니다.', 'DESIGN_UX_UI', 'WEEKEND_AFTERNOON', 'ALL',
             'https://open.kakao.com/o/97927d', false, '스케치, 디자인시스템, 인터랙션디자인, 어도비XD, UX/UI',
             '2025-04-23 01:48:40', '2025-04-23 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '5b80a666-c59e-47d0-b902-4b9b86b369ef', 'naver', '6128488992', 'user_6128488992',
             '고우진', '꿈꾸는코더851', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/30.jpg',
             false, 4, 2,
             'Node.js 중심의 프로그래밍/웹개발 멘토입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'WEB_DEV', 'WEEKDAY_AFTERNOON', 'ALL',
             'https://open.kakao.com/o/52193z', false, 'Django, 웹개발, CSS, 백엔드',
             '2025-04-06 01:48:40', '2025-04-06 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '95f380f1-9782-476e-9004-2b85c540e5bb', 'kakao', '7892575028', 'user_7892575028',
             '김예은', '즐거운창작자49', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/87.jpg',
             false, 4, 2,
             '10년차 프로그래밍/웹개발 멘티로 활동 중입니다. 풀스택 관련 질문이나 도움이 필요하시면 연락주세요.', 'WEB_DEV', 'WEEKDAY_AFTERNOON', 'ALL',
             'https://discord.gg/q98355', false, 'React, CSS, 백엔드, Node.js, Spring',
             '2025-04-09 01:48:40', '2025-04-09 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '03344ba7-0ac2-4346-a4d4-295585d02f4d', 'naver', '7849509557', 'user_7849509557',
             '김재호', '똑똑한엔지니어585', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/48.jpg',
             false, 4, 2,
             'React 중심의 프로그래밍/웹개발 멘티입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'WEB_DEV', 'WEEKEND_MORNING', 'OFFLINE',
             'mailto:yeeun78@example.com', false, 'Vue, Node.js, 프론트엔드, HTML',
             '2025-04-29 01:48:40', '2025-04-29 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'e128e8e0-d9f6-4c29-bf47-e07e69a5d6c0', 'google', '7746951635', 'user_7746951635',
             '강명자', '행복한디자이너848', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/2.jpg',
             false, 5, 1,
             '10년차 디자인/UX/UI 멘토로 활동 중입니다. 사용자경험 관련 질문이나 도움이 필요하시면 연락주세요.', 'DESIGN_UX_UI', 'WEEKEND_MORNING', 'ONLINE',
             'https://discord.gg/y83818', false, '스케치, 디자인시스템, UX/UI, 어도비XD, 피그마',
             '2025-04-04 01:48:40', '2025-04-04 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'd52b7a41-274f-4675-97ca-2453dbd34143', 'google', '1618466417', 'user_1618466417',
             '송은경', '열정적인코더955', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/51.jpg',
             false, 3, 3,
             '디자인/UX/UI에 관심이 많은 멘티입니다. 4년 경력이 있으며, 사용자경험 분야에 전문성이 있습니다.', 'DESIGN_UX_UI', 'WEEKDAY_MORNING', 'OFFLINE',
             'https://t.me/gbag_797', true, '디자인시스템, 사용자경험, 피그마',
             '2025-04-22 01:48:40', '2025-04-22 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'c62d5396-c31b-4f13-b32a-b45aac59110e', 'kakao', '3825118376', 'user_3825118376',
             '이옥순', '행복한디자이너52', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/87.jpg',
             false, 5, 2,
             'Photoshop 중심의 디자인/그래픽 멘토입니다. 함께 성장하고 배우는 시간이 되었으면 합니다.', 'DESIGN_GRAPHIC', 'WEEKEND_MORNING', 'ONLINE',
             'https://open.kakao.com/o/23922c', true, '그래픽디자인, Photoshop, 일러스트레이션',
             '2025-04-16 01:48:40', '2025-04-16 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '8adaf70b-9a73-4fa1-8255-1718b53b2a91', 'google', '7497296315', 'user_7497296315',
             '박민서', '즐거운창작자42', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/65.jpg',
             false, 4, 2,
             '프로그래밍/앱개발를 전공하고 현업에서 2년간 일하고 있습니다. 모바일 분야에서 멘토링 해드립니다.', 'APP_DEV', 'WEEKDAY_AFTERNOON', 'ONLINE',
             'https://discord.gg/e68402', false, '앱개발, Swift, Android, Kotlin',
             '2025-04-28 01:48:40', '2025-04-28 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'f6a83368-cbb0-4c15-ad0c-06b3bc99d4df', 'google', '3320647726', 'user_3320647726',
             '강미경', '열정적인엔지니어516', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/51.jpg',
             false, 5, 2,
             '음악/피아노 분야에서 활동하고 있는 멘토입니다. 피아노을 주로 다루고 있습니다.', 'MUSIC_PIANO', 'WEEKEND_AFTERNOON', 'ALL',
             'mailto:myeongsugbag@example.net', false, '클래식, 음악이론, 피아노교육',
             '2025-04-29 01:48:40', '2025-04-29 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '7245d80a-36a7-4599-bf4d-874fa6487f77', 'google', '5015414717', 'user_5015414717',
             '손보람', '성장하는디자이너602', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/men/62.jpg',
             false, 2, 3,
             '교육/수학에 관심이 많은 멘토입니다. 7년 경력이 있으며, 통계학 분야에 전문성이 있습니다.', 'EDUCATION_MATH', 'WEEKDAY_AFTERNOON', 'OFFLINE',
             'https://open.kakao.com/o/91130e', true, '수학, 수학교육, 선형대수, 미적분, 통계학',
             '2025-04-04 01:48:40', '2025-04-04 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'b84241b2-2931-4c3c-921f-8f0ce91992fe', 'kakao', '2038635793', 'user_2038635793',
             '박영철', '활기찬멘토251', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/56.jpg',
             false, 3, 2,
             '9년차 프로그래밍/웹개발 멘티로 활동 중입니다. HTML 관련 질문이나 도움이 필요하시면 연락주세요.', 'WEB_DEV', 'WEEKDAY_MORNING', 'OFFLINE',
             'mailto:gimhyeonu@example.org', false, 'Node.js, 백엔드, Django',
             '2025-04-24 01:48:40', '2025-04-24 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'b297335a-486d-4ee6-822f-cff793116592', 'naver', '5312909050', 'user_5312909050',
             '조춘자', '즐거운엔지니어437', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/men/24.jpg',
             false, 4, 1,
             '프로그래밍/앱개발에 관심이 많은 멘티입니다. 6년 경력이 있으며, iOS 분야에 전문성이 있습니다.', 'APP_DEV', 'WEEKEND_EVENING', 'ONLINE',
             'https://open.kakao.com/o/41704d', false, 'Android, 모바일, 하이브리드앱, Swift, 앱개발',
             '2025-04-24 01:48:40', '2025-04-24 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             'd9150e41-2c8a-48fe-a94a-28f360c19ffb', 'naver', '9659327957', 'user_9659327957',
             '손민서', '똑똑한멘토101', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/35.jpg',
             false, 3, 2,
             '프로그래밍/웹개발 분야에서 활동하고 있는 멘토입니다. 풀스택을 주로 다루고 있습니다.', 'WEB_DEV', 'WEEKEND_MORNING', 'OFFLINE',
             'mailto:sumingim@example.org', true, 'Vue, 웹개발, 풀스택',
             '2025-05-03 01:48:40', '2025-05-03 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '72af1101-3881-4f05-b008-be06f2cb4035', 'google', '4118603686', 'user_4118603686',
             '김옥순', '행복한멘토74', 'ROLE_MENTEE', 'https://randomuser.me/api/portraits/women/62.jpg',
             false, 3, 2,
             '10년차 프로그래밍/앱개발 멘티로 활동 중입니다. Swift 관련 질문이나 도움이 필요하시면 연락주세요.', 'APP_DEV', 'WEEKEND_AFTERNOON', 'ALL',
             'https://t.me/mmin_493', true, '모바일, Flutter, Kotlin, iOS, Swift',
             '2025-04-16 01:48:40', '2025-04-16 01:48:40'
         );


INSERT INTO user (
    id, provider, provider_id, user_name_attribute, name, nickname, role,
    profile_image_url, account_disable, area, sigungu_code, introduction,
    interest, activity_time, activity_type, contact_link, match_status,
    profile_tag, created_at, updated_at
) VALUES (
             '7e5593c2-2a44-4cb9-ad03-8ebf6e5626d5', 'google', '3424899888', 'user_3424899888',
             '박지연', '창의적인코더444', 'ROLE_MENTOR', 'https://randomuser.me/api/portraits/women/79.jpg',
             false, 1, 3,
             '프로그래밍/앱개발에 관심이 많은 멘토입니다. 2년 경력이 있으며, iOS 분야에 전문성이 있습니다.', 'APP_DEV', 'WEEKEND_AFTERNOON', 'ALL',
             'mailto:baggeonu@example.com', false, 'React Native, 하이브리드앱, Flutter',
             '2025-04-13 01:48:40', '2025-04-13 01:48:40'
         );
