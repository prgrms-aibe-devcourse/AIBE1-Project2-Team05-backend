package com.team05.linkup.domain.community.application;

import io.supabase.StorageClient;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Service
@RequiredArgsConstructor
@Transactional
@Slf4j
public class CommunityImageService {

    private final StorageClient storageClient;

    @Value("${supabase.bucket}")
    private String bucket;

    public List<String> uploadImages(List<MultipartFile> images, String userId) {
        log.info("Uploading {} file(s) → {}", images.size(), bucket);

        return images.stream()
                .map(img -> uploadOne(img, userId))
                .toList();
    }

    private String uploadOne(MultipartFile image, String userId) {

        String original = image.getOriginalFilename();
        String objectPath = "%s/%s-%s".formatted(userId, UUID.randomUUID(), original);

        File tmp = null;
        try {
            tmp = File.createTempFile("upload-", "-" + original);
            image.transferTo(tmp);

            storageClient.from(bucket)
                    .upload(objectPath, tmp)      // async
                    .get(10, TimeUnit.SECONDS);   // 타임아웃

            String url = storageClient.from(bucket)
                    .getPublicUrl(objectPath, null, null)
                    .getPublicUrl();

            log.info("✔ {} → {}", original, url);
            return url;

        } catch (ExecutionException | InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Supabase upload failed", e.getCause());

        } catch (TimeoutException te) {
            throw new IllegalStateException("Supabase upload timed-out", te);

        } catch (IOException ioe) {
            throw new IllegalStateException("Temp-file I/O error", ioe);

        } finally {
            if (tmp != null && tmp.delete()) {
                log.debug("tmp deleted");
            }
        }
    }

    /* 비공개 버킷 */
    public String getSignedUrl(String objectPath, int expireSec) {
        try {
            return storageClient.from(bucket)
                    .getSignedUrl(objectPath, expireSec, null, null)
                    .get()
                    .getSignedUrl();
        } catch (InterruptedException ie) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("Interrupted", ie);
        } catch (ExecutionException ee) {
            throw new RuntimeException("Signed-url fail", ee.getCause());
        }
    }
}

