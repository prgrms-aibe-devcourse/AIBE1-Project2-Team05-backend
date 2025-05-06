package com.team05.linkup.domain.community.application;

import io.supabase.StorageClient;
import io.supabase.api.IStorageFileAPI;
import io.supabase.data.file.FilePublicUrlResponse;
import io.supabase.data.file.FileSignedUrlResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;

@Service
@RequiredArgsConstructor
@Transactional
public class CommunityImageService {

    private final StorageClient storageClient;

    @Value("${supabase.bucket}")
    private String bucket;

    /* ───────────── 업로드 ───────────── */
    public List<String> uploadImages(String userId, List<MultipartFile> files) {
        IStorageFileAPI fileApi = storageClient.from(bucket);
        List<String> paths = new ArrayList<>();

        for (MultipartFile file : files) {
            String objectPath = "%s/%s-%s".formatted(
                    userId,
                    UUID.randomUUID(),
                    file.getOriginalFilename());

            try {
                fileApi.upload(objectPath, file.getResource().getFile()).get();
                paths.add(objectPath);

            } catch (InterruptedException ie) {
                Thread.currentThread().interrupt();
                throw new RuntimeException("Interrupted during Supabase upload", ie);

            } catch (ExecutionException | IOException e) {
                throw new RuntimeException("Supabase upload failed: " + objectPath, e);
            }
        }
        return paths;
    }

    /* ───────────── URL 반환 ───────────── */

    /** 버킷이 public 일 때 직접 접근 URL */
    public String getPublicUrl(String objectPath) {
        FilePublicUrlResponse res = storageClient
                .from(bucket)
                .getPublicUrl(objectPath, null, null);

        return res.getPublicUrl();          // String
    }

    /** 비공개 버킷 → 만료 시간(초) 지정 서명 URL */
    public String getSignedUrl(String objectPath, int expiresSec) {
        try {
            FileSignedUrlResponse res = storageClient
                    .from(bucket)
                    .getSignedUrl(objectPath, expiresSec, null, null)
                    .get();                          // CompletableFuture → Response

            return res.getSignedUrl();               // String

        } catch (InterruptedException ie) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("Interrupted while generating signed URL", ie);

        } catch (ExecutionException e) {
            throw new RuntimeException("Signed URL generation failed: " + objectPath, e);
        }
    }
}
