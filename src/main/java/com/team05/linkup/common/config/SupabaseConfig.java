package com.team05.linkup.common.config;

import io.supabase.StorageClient;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
@RequiredArgsConstructor
public class SupabaseConfig {

    @Value("${supabase.storage-url}")
    private String storageUrl;      // ← application.yml 에서 주입

    @Value("${supabase.service-key}")
    private String serviceKey;      // ← 반드시 service_role 키

    /** StorageClient Bean */
    @Bean
    public StorageClient storageClient() {
        // ★ URL 끝에 / 없으면 추가
        String normalized = storageUrl.endsWith("/") ? storageUrl : storageUrl + "/";
        return new StorageClient(serviceKey, normalized);   // (apiKey, url)
    }
}