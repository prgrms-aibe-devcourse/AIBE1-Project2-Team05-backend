package com.team05.linkup.users.util;

import java.util.Random;

public class RandomNicknameGenerator {
    private static final String[] ADJECTIVES = {
            "행복한", "용감한", "신나는", "귀여운", "멋진", "우아한", "빛나는", "자유로운"
    };

    private static final String[] NOUNS = {
            "호랑이", "토끼", "펭귄", "사자", "여우", "고양이", "강아지", "독수리", "거뷱아", "팬더",
            "원숭이"
    };

    private static final Random RANDOM = new Random();

    private static final RandomNicknameGenerator INSTANCE = new RandomNicknameGenerator();

    private RandomNicknameGenerator() {}

    public static RandomNicknameGenerator getInstance() {
        return INSTANCE;
    }

    public String generateNickname() {
        String adjective = ADJECTIVES[RANDOM.nextInt(ADJECTIVES.length)];
        String noun = NOUNS[RANDOM.nextInt(NOUNS.length)];
        int number = RANDOM.nextInt(1000);

        return adjective + noun + number;
    }
}
