package com.team05.linkup.common.dto;


import com.fasterxml.jackson.annotation.JsonInclude;
import com.team05.linkup.common.enums.ResponseCode;
import lombok.Getter;

@Getter
public class ApiResponse<T> {

    private final int status; // HTTP 상태 코드
    private final String code; // ResponseCode의 이름 (e.g., "SUCCESS", "POST_NOT_FOUND")
    private final String message; // 응답 메시지

    @JsonInclude(JsonInclude.Include.NON_NULL) // data가 null이면 응답 JSON에서 제외
    private final T data; // 실제 응답 데이터

    // 성공 시 (데이터 포함)
    private ApiResponse(ResponseCode responseCode, T data) {
        this.status = responseCode.getStatus().value();
        this.code = responseCode.name();
        this.message = responseCode.getMessage(); // 기본 메시지 사용
        this.data = data;
    }

    // 성공 시 (데이터 없음)
    private ApiResponse(ResponseCode responseCode) {
        this.status = responseCode.getStatus().value();
        this.code = responseCode.name();
        this.message = responseCode.getMessage();
        this.data = null;
    }

    // 실패 시 (커스텀 메시지 가능)
    private ApiResponse(ResponseCode responseCode, String customMessage) {
        this.status = responseCode.getStatus().value();
        this.code = responseCode.name();
        this.message = customMessage; // 사용자 정의 메시지 사용
        this.data = null;
    }

    // === 정적 팩토리 메서드 ===

    // 성공 (데이터 포함)
    public static <T> ApiResponse<T> success(T data) {
        return new ApiResponse<>(ResponseCode.SUCCESS, data);
    }

    // 성공 (데이터 없음, 예: 삭제 성공)
    public static <T> ApiResponse<T> success() {
        return new ApiResponse<>(ResponseCode.SUCCESS);
    }

    // 성공 (CREATED 상태 코드 사용, 데이터 포함)
    public static <T> ApiResponse<T> created(T data) {
        return new ApiResponse<>(ResponseCode.CREATED, data);
    }

    // 실패 (기본 메시지 사용)
    public static <T> ApiResponse<T> error(ResponseCode responseCode) {
        return new ApiResponse<>(responseCode);
    }

    // 실패 (커스텀 메시지 사용)
    public static <T> ApiResponse<T> error(ResponseCode responseCode, String message) {
        return new ApiResponse<>(responseCode, message);
    }
}
