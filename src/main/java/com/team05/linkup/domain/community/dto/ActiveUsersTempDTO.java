package com.team05.linkup.domain.community.dto;

/**
 * JPQL 쿼리 결과를 받아 서비스 내부에서 사용하기 위한 임시 데이터 홀더 레코드입니다.
 * 사용자 기본 정보와 기간 내 활동 수(게시글, 댓글)를 담습니다.
 *
 * @param userId          사용자 ID (UUID 문자열)
 * @param nickname        사용자 닉네임
 * @param profileImageUrl 사용자 프로필 이미지 URL
 * @param postCount       지정된 기간 내 사용자가 작성한 게시글 수
 * @param commentCount    지정된 기간 내 사용자가 작성한 댓글 수
 */
public record ActiveUsersTempDTO(String userId, String nickname, String profileImageUrl, long postCount,
                                 long commentCount) { }