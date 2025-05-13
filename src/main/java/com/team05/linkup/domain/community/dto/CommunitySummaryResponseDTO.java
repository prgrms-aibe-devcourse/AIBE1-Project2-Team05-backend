package com.team05.linkup.domain.community.dto;

import com.team05.linkup.domain.community.domain.CommunityCategory;

import java.sql.Timestamp; // For handling Timestamp from native queries
import java.time.ZoneId;   // For ZonedDateTime conversion
import java.time.ZonedDateTime;
// import java.math.BigInteger; // If native query might return BigInteger for counts

/**
 * 커뮤니티 게시물의 요약 뷰를 나타내는 데이터 전송 객체(DTO).
 * 커뮤니티 엔터티의 모든 세부 정보가 필요하지 않은 목록 뷰에 사용됩니다.
 * 작성자의 별명, 댓글 수와 같은 계산된 데이터 또는 관련 데이터가 포함됩니다.
 *
 * @param id 커뮤니티 게시물의 고유 ID.
 * @param nickname 게시물을 만든 사용자의 별명.
 * @param title 커뮤니티 게시물의 제목.
 * @param category 커뮤니티 게시물의 카테고리.
 * @param createdAt 게시물이 작성된 날짜 및 시간.
 * @param viewCount 게시물이 받은 조회수.
 * @param likeCount 게시물이 받은 좋아요 수.
 * @param content 게시물 내용.
 * @param profileImageUrl 게시물을 만든 사용자의 프로필 이미지 URL.
 * @param commentCount 게시물과 연결된 총 댓글 수.
 */
public record CommunitySummaryResponseDTO(
        String id,
        String nickname,
        String title,
        CommunityCategory category,
        ZonedDateTime createdAt,
        Long viewCount,
        Long likeCount,
        String content,
        String profileImageUrl,
        Long commentCount
) {

    /**
     * Object 배열로부터 CommunitySummaryResponseDTO 인스턴스를 생성하는 정적 팩토리 메서드입니다.
     * 배열의 각 요소는 DTO의 필드에 해당하는 특정 순서와 타입을 가져야 합니다.
     *
     * @param obj Object 배열. 다음 순서와 타입을 가져야 합니다:
     * 
     * id (String)
     * nickname (String)
     * title (String)
     * category (String, CommunityCategory enum 이름)
     * createdAt (Timestamp 또는 ZonedDateTime)
     * viewCount (Number)
     * likeCount (Number)
     * content (String)
     * profileImageUrl (String)
     * commentCount (Number)
     *
     * @return 생성된 CommunitySummaryResponseDTO 인스턴스.
     * @throws IllegalArgumentException 입력 배열이 null이거나, 길이가 맞지 않거나, 필수 요소가 null이거나, 타입 변환에 실패한 경우.
     */
    public static CommunitySummaryResponseDTO fromObjectArray(Object[] obj) {
        if (obj == null || obj.length < 10) {
            throw new IllegalArgumentException("Input Object array must not be null and have at least 10 elements for CommunitySummaryResponseDTO.");
        }

        String id = (String) obj[0];
        String nickname = (String) obj[1];
        String title = (String) obj[2];

        String categoryString = (String) obj[3];
        CommunityCategory category;
        if (categoryString == null || categoryString.trim().isEmpty()) {
            throw new IllegalArgumentException("Category string cannot be null or empty.");
        }
        try {
            category = CommunityCategory.valueOf(categoryString.trim().toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Invalid or unsupported category string: " + categoryString, e);
        }

        ZonedDateTime createdAt;
        Object createdAtObj = obj[4];
        if (createdAtObj instanceof Timestamp) {
            createdAt = ((Timestamp) createdAtObj).toInstant().atZone(ZoneId.systemDefault());
        } else if (createdAtObj instanceof ZonedDateTime) {
            createdAt = (ZonedDateTime) createdAtObj;
        } else if (createdAtObj == null) {
            throw new IllegalArgumentException("createdAt cannot be null.");
        } else {
            throw new IllegalArgumentException("Unexpected type for createdAt: " + createdAtObj.getClass().getName());
        }

        Long viewCount = getLongValue(obj[5]);
        Long likeCount = getLongValue(obj[6]);
        String content = (String) obj[7];
        String profileImageUrl = (String) obj[8];
        Long commentCount = getLongValue(obj[9]);

        return new CommunitySummaryResponseDTO(
                id, nickname, title, category, createdAt,
                viewCount, likeCount, content, profileImageUrl, commentCount
        );
    }

    /**
     * Object를 Long으로 안전하게 변환하는 내부 헬퍼 메서드.
     * Number 인스턴스인 경우 longValue()를 반환하고, null이면 null을 반환합니다.
     * (필요에 따라 null 대신 0L을 반환하도록 수정 가능)
     *
     * @param numObj 변환할 객체.
     * @return Long 값 또는 null.
     * @throws ClassCastException Number 타입이 아닌 다른 타입이면서 null이 아닌 경우 (현재는 발생하지 않도록 처리).
     */
    private static Long getLongValue(Object numObj) {
        if (numObj == null) {
            return null; // 또는 0L (예: 조회수가 없는 경우 0으로 표시)
        }
        if (numObj instanceof Number) {
            return ((Number) numObj).longValue();
        }
        // JPA 네이티브 쿼리가 문자열 형태로 숫자를 반환하는 경우도 드물게 있을 수 있으나,
        // 보통 Number 타입(Integer, Long, BigInteger, BigDecimal 등)으로 반환됩니다.
        // 여기서는 Number 타입만 처리합니다.
        throw new IllegalArgumentException("Cannot convert to Long: Object is not a Number instance. Type: " + numObj.getClass().getName());
    }
}