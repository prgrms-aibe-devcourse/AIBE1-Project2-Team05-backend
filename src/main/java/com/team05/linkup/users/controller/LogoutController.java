package com.team05.linkup.users.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Tag(name = "로그아웃")
public class LogoutController {
    @PostMapping("/logout")
    @Operation(summary = "로그아웃", description = "로그아웃화면")
    public String logout() {
        return "Logout";
    }
}
