package com.team05.linkup.common.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Component;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Optional;

@Component
public class ApiUtils {
    private static final Logger logger = LogManager.getLogger(ApiUtils.class);

    private static final HttpClient client = HttpClient.newBuilder()
//            .connectTimeout(Duration.ofSeconds(10))
            .build();

    private final ObjectMapper objectMapper = new ObjectMapper();

    public <T> Optional<T> getApiResponse(String apiUrl, String method, Object requestDto, Class<T> responseType) {
        try {
            if (apiUrl == null || method == null) {
                throw new IllegalArgumentException("API URL 또는 HTTP Method가 null입니다.");
            }

            String requestBody = requestDto == null ? "" : objectMapper.writeValueAsString(requestDto); // 여기서 DTO를 JSON으로 직렬화

            HttpRequest.Builder requestBuilder = HttpRequest.newBuilder()
                    .uri(URI.create(apiUrl))
//                    .timeout(Duration.ofSeconds(10))
                    .header("Accept", "application/json")
                    .header("Content-Type", "application/json");

            switch (method.toUpperCase()) {
                case "POST" -> requestBuilder.POST(HttpRequest.BodyPublishers.ofString(requestBody));
                case "PUT" -> requestBuilder.PUT(HttpRequest.BodyPublishers.ofString(requestBody));
                case "DELETE" -> requestBuilder.DELETE();
                case "GET" -> requestBuilder.GET();
                default -> throw new UnsupportedOperationException("지원하지 않는 HTTP 메서드입니다: " + method);
            }

            HttpRequest request = requestBuilder.build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            if (response.statusCode() >= 400) {
                logger.warn("API 호출 실패. 상태 코드: {}, 응답: {}", response.statusCode(), response.body());
                return Optional.empty();
            }

            T parsedObject = objectMapper.readValue(response.body(), responseType);
            return Optional.of(parsedObject);
        } catch (Exception e) {
            logger.error("API 호출 중 예외 발생: {}", e.getMessage(), e);
            return Optional.empty();
        }
    }

}
