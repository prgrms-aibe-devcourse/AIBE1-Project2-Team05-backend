package com.team05.linkup.domain.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Interest {
    WEB_DEV("프로그래밍/웹개발"),
    APP_DEV("프로그래밍/앱개발"),
    DESIGN_UX_UI("디자인/UX/UI"),
    DESIGN_GRAPHIC("디자인/그래픽"),
    EDUCATION_MATH("교육/수학"),
    EDUCATION_ENGLISH("교육/영어"),
    MUSIC_PIANO("음악/피아노"),
    FITNESS_YOGA("운동/요가");

    private final String displayName;
}
