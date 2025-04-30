package com.team05.linkup.common.config;

import com.team05.linkup.common.filter.JwtAuthenticationFilter;
import com.team05.linkup.common.filter.PreventDuplicateLoginFilter;
import com.team05.linkup.common.handler.CustomLogoutSuccessHandler;
import com.team05.linkup.common.handler.OAuth2AuthenticationSuccessHandler;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.access.expression.method.DefaultMethodSecurityExpressionHandler;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.oauth2.client.web.OAuth2AuthorizationRequestRedirectFilter;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.expression.WebExpressionAuthorizationManager;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

@Configuration
@EnableWebSecurity // 스프링 시큐리티 필터가 스프링 필터체인에 등록이 된다
@EnableMethodSecurity(securedEnabled = true, prePostEnabled = true)
@RequiredArgsConstructor
public class SecurityConfig {

    private final JwtAuthenticationFilter jwtAuthenticationFilter;
    private final PreventDuplicateLoginFilter preventDuplicateLoginFilter;
    private final OAuth2AuthenticationSuccessHandler oAuth2AuthenticationSuccessHandler;

    @Bean
    public DefaultMethodSecurityExpressionHandler methodSecurityExpressionHandler() {
        DefaultMethodSecurityExpressionHandler expressionHandler = new DefaultMethodSecurityExpressionHandler();
//        expressionHandler.setRoleHierarchy(roleHierarchy());
        return expressionHandler;
    }


    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, CustomLogoutSuccessHandler customLogoutSuccessHandler) throws Exception {
        http.
                cors(Customizer.withDefaults()) // ✅ CORS 활성화
                .csrf(AbstractHttpConfigurer::disable)
                .sessionManagement(session
                        -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS))

                .authorizeHttpRequests(authorizeRequests -> authorizeRequests
                        .requestMatchers("/").permitAll()
//                        .requestMatchers("/static/index.html").permitAll()
                        .requestMatchers("/index.html").permitAll()
                        .requestMatchers("/swagger-ui/**", "/v3/api-docs/**").permitAll()
                        .requestMatchers("/oauth2/authorization/google/**").permitAll()
                        .requestMatchers("/oauth2/authorization/kakao/**").permitAll()
                        .requestMatchers("/oauth2/authorization/naver/**").permitAll()
                        .requestMatchers("/login/oauth2/code/google/**").permitAll()
                        .requestMatchers("/login/oauth2/code/naver/**").permitAll()
                        .requestMatchers("/login/oauth2/code/kakao/**").permitAll()
                        .requestMatchers("/v1/users/**")
                        .access(new WebExpressionAuthorizationManager("!hasRole('TEMP')"))
                        .anyRequest().authenticated())
                .oauth2Login(oauth2 -> oauth2
                        .successHandler(oAuth2AuthenticationSuccessHandler)
                )
                .exceptionHandling(exceptions -> exceptions
                        .authenticationEntryPoint(new OAuth2AuthenticationEntryPoint())
                )
                .formLogin(form -> form
                        .loginProcessingUrl("/login")  // 로그인 요청 URL
                        .defaultSuccessUrl("/", true)  // 로그인 성공 후 리디렉션할 페이지 설정
                        .failureUrl("/?error=true")  // 로그인 실패 시 리디렉션할 페이지 설정
                        .permitAll()  // 로그인 페이지는 누구나 접근 가능
                )
                .logout(logout -> logout
                        .logoutUrl("/logout")
                        .logoutSuccessHandler(customLogoutSuccessHandler)
                        .invalidateHttpSession(true)
                        .deleteCookies("JSESSIONID", "jwt_token")
                        .permitAll()
                )
                .addFilterBefore(jwtAuthenticationFilter, UsernamePasswordAuthenticationFilter.class)
                .addFilterBefore(preventDuplicateLoginFilter, OAuth2AuthorizationRequestRedirectFilter.class);
        return http.build();
    }

    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration config = new CorsConfiguration();
        config.addAllowedOriginPattern("*"); // 프론트/Swagger UI가 어디서 호출되든 허용
        config.addAllowedMethod("*");
        config.addAllowedHeader("*");
        config.setAllowCredentials(true);

        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", config);
        return source;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

//    @Bean
//    public RoleHierarchy roleHierarchy() {
//        return RoleHierarchyImpl.fromHierarchy("""
//                    ROLE_ADMIN > ROLE_DB\s
//                    ROLE_DB > ROLE_USER
//                    ROLE_USER > ROLE_ANONYMOUS
//               \s""");
//    }


}
