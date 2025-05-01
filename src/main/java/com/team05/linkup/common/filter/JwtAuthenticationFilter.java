package com.team05.linkup.common.filter;


import com.team05.linkup.common.util.JwtUtils;
import io.jsonwebtoken.Claims;
import io.micrometer.common.lang.NonNullApi;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
@NonNullApi
public class JwtAuthenticationFilter extends OncePerRequestFilter {
    private static final Logger logger = LogManager.getLogger(JwtAuthenticationFilter.class);
    private final JwtUtils jwtUtils;
    private static final String REFRESH_TOKEN_PATH = "/v1/auth/refresh";

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {

        String token = jwtUtils.extractToken(request);
        String requestURI = request.getRequestURI();

        // Skip JWT validation for the refresh token endpoint
        if (requestURI.equals(REFRESH_TOKEN_PATH)) {
            logger.debug("Skipping JWT validation for refresh token endpoint");
            filterChain.doFilter(request, response);
            return;
        }

        if (StringUtils.hasText(token) && jwtUtils.validateToken(token)) {
            Claims claims = jwtUtils.parseToken(token);
            String providerId = claims.getSubject();
            String authorities = (String) claims.get("authorities");

            List<SimpleGrantedAuthority> grantedAuthorities = Arrays.stream(authorities.split(","))
                    .map(SimpleGrantedAuthority::new)
                    .collect(Collectors.toList());

            UsernamePasswordAuthenticationToken authentication =
                    new UsernamePasswordAuthenticationToken(providerId, token, grantedAuthorities);

            //이 인증 객체를 시큐리티 컨텍스트에 등록하면, 이후 컨트롤러 등에서 @AuthenticationPrincipal을 통해 유저 정보를 가져올 수 있음.
            SecurityContextHolder.getContext().setAuthentication(authentication);
        }

        //다음 필터 혹은 서블릿으로 요청을 넘김.
        filterChain.doFilter(request, response);
    }

}

