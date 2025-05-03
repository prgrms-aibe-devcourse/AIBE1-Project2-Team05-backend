package com.team05.linkup.domain.mentoring.api;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
public class TestController {
    @GetMapping("/auth-debug")
    public ResponseEntity<?> debugAuth(Authentication authentication) {
        Map<String, Object> info = new HashMap<>();
        info.put("authorities", authentication.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList()));
        return ResponseEntity.ok(info);
    }

}
