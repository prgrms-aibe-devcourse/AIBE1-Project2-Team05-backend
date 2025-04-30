package com.team05.linkup.common.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "로그인", description = "로그인시 리타이렉트 되는 화면")
@RestController
public class HomeController {

    @GetMapping("/")
    @Operation(summary = "로그인 후 ok가 보이면 됩니다")
    public String home() {
        return "ok";
    }
}