package com.team05.linkup.domain.user.util;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Random;

@Component
@RequiredArgsConstructor
public class RandomNicknameGenerator {
    private static final String[] ADJECTIVES = {
            "행복한", "용감한", "신나는", "귀여운", "멋진", "우아한", "빛나는", "자유로운"
    };

    private static final String[] NOUNS = {
            "호랑이", "토끼", "펭귄", "사자", "여우", "고양이", "강아지", "독수리", "거뷱아", "팬더",
            "원숭이"
    };

    private final Random random;

    public RandomNicknameGenerator() {
        this.random = new Random();
    }

    public String generateNickname() {
        String adjective = ADJECTIVES[random.nextInt(ADJECTIVES.length)];
        String noun = NOUNS[random.nextInt(NOUNS.length)];
        int number = random.nextInt(1000);

        return adjective + noun + number;
    }
}
