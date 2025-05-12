package com.team05.linkup.domain.mentoring.util;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@Getter
public class NgrokApiUrl {

    @Value("${api.url}")
    private String apiUrl;
}
