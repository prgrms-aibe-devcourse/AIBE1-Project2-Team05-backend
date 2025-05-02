package com.team05.linkup.common.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;


@Configuration
@ConfigurationProperties(prefix = "api.key")
@Getter
@Setter
public class ApikeyConfig {
    private String gemini;

}

