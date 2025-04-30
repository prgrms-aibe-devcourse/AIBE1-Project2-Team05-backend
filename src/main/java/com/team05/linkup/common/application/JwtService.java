package com.team05.linkup.common.application;

import com.team05.linkup.common.exception.UserNotfoundException;
import org.springframework.security.core.Authentication;

public interface JwtService {
    String generateAccessToken(Authentication authentication) throws Exception;
    Authentication getAuthentication(String subject) throws UserNotfoundException; // 새로 추가된 메소드

}
