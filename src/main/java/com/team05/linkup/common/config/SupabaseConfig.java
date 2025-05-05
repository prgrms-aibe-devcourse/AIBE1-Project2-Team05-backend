package com.team05.linkup.common.config;

import io.supabase.StorageClient;                // ✅ 추가
import org.springframework.beans.factory.annotation.Value; // ✅ 추가
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SupabaseConfig {
    @Bean
    public StorageClient storageClient(@Value("${supabase.url}") String url,
                                       @Value("${supabase.service-key}") String key) {
        return new StorageClient(key, url);          // storage-java SDK
    }
}
