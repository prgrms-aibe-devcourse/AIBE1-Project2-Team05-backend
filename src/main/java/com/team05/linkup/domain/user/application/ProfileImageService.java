package com.team05.linkup.domain.user.application;

import io.supabase.StorageClient;
import io.supabase.api.IStorageFileAPI;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProfileImageService {

    private final StorageClient storageClient;

    @Value("${supabase.profile-image-bucket}")
    private String profileImageBucket;

    @Value("${supabase.storage-url}")   // ../storage/v1/
    private String url;

    /**
     * 🔹 프로필 이미지 업로드
     * - 경로: userId/uuid-파일명
     * - MIME, 용량 검사
     * - Supabase 업로드 완료까지 대기
     * - 업로드된 이미지의 public URL 반환
     */
    public String uploadProfileImage(String userId, MultipartFile file) {
        log.info("🚀 Supabase upload 시작");
        String contentType = file.getContentType();
        if (contentType == null || !contentType.matches("image/(jpeg|png|gif|webp|svg\\+xml)")) {
            throw new IllegalArgumentException("허용되지 않는 이미지 형식입니다.");
        }
            log.info("contentType = " + contentType);

        if (file.getSize() > 10 * 1024 * 1024) {
            throw new IllegalArgumentException("파일 크기는 10MB 이하만 허용됩니다.");
        }
        log.info("file.getSize() = " + file.getSize());

        IStorageFileAPI fileApi = storageClient.from(profileImageBucket);
        log.info("fileApi.toString() = " + fileApi.toString());
        String objectPath = "%s/%s-%s".formatted(
                userId,
                UUID.randomUUID(),
                file.getOriginalFilename()
        );
        log.info("✅ objectPath = ", objectPath);

        File tempFile = null;
        try {
            tempFile = File.createTempFile("profile-", "-" + file.getOriginalFilename());
            log.info("tempFile.getAbsolutePath = " + tempFile.getAbsolutePath());
            file.transferTo(tempFile);
            log.info("file.getOriginalFilename() = " + file.getOriginalFilename());

            fileApi.upload(objectPath, tempFile).get(); // 동기 처리

            log.info("✅ Supabase 업로드 요청 완료 - objectPath = {}", objectPath);

        } catch (Exception e) {
            log.error("❌ Supabase 업로드 실패", e);
            throw new RuntimeException("Supabase 업로드 실패", e);
        } finally {
            if (tempFile != null && tempFile.exists()) {
                boolean deleted = tempFile.delete();
                log.info("🧹 임시 파일 삭제: {}", deleted);
            }
        }

        return String.format("%s"+"object/public/%s/%s", url, profileImageBucket, objectPath);
    }

}