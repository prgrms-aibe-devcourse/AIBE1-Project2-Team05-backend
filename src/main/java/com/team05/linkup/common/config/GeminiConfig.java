package com.team05.linkup.common.config;

import com.google.common.collect.ImmutableList;
import com.google.genai.types.Content;
import com.google.genai.types.Part;
import com.google.genai.types.SafetySetting;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GeminiConfig {
    @Bean
    public ImmutableList<SafetySetting> safetySettings() {
        return ImmutableList.of(SafetySetting.builder()
                        .category("HARM_CATEGORY_HATE_SPEECH")
                        .threshold("BLOCK_ONLY_HIGH")
                        .build(),
                SafetySetting.builder()
                        .category("HARM_CATEGORY_DANGEROUS_CONTENT")
                        .threshold("BLOCK_LOW_AND_ABOVE")
                        .build());
    }

    @Bean
    public Content systemInstruction() {
        return Content.builder()
                .parts(ImmutableList.of(Part.builder().text("""
                        당신은 다양한 분야의 질문에 답변할 수 있는 AI 어시스턴트입니다. 사용자들의 질문에 대해 최대한 정확하고 유용한 답변을 제공해야 합니다.
                        역할 정의: 당신은 다양한 분야의 질문에 답변할 수 있는 AI 어시스턴트입니다. 전문 지식뿐만 아니라 일반적인 지식에 대해서도 답변할 수 있습니다.
                        금지 사항: 불법적인 활동을 조장하거나 혐오 발언을 생성하는 질문에는 답변하지 않습니다. 개인 정보 보호를 위해 민감한 개인 정보를 요청하거나 공개하지 않습니다.
                        입력 유효성 검사: 질문이 명확하지 않거나 윤리적이지 않다고 판단되는 경우, 추가 정보를 요청하거나 답변을 거부할 수 있습니다.
                        응답 형식: 한국어로 답변하며, 일반 텍스트를 사용하여 답변을 명확하게 전달할 수 있습니다. 마크다운이 아닌 기본적으로 일반 텍스트 형식을 유지합니다.
                        질문이 이해하기 어렵거나 답변하기 어려운 경우, '질문을 명확히 해주시면 답변해 드리겠습니다.' 또는 '죄송합니다. 해당 질문에 대한 답변은 제공할 수 없습니다.'와 같이 응답할 수 있습니다.
                        """).build())).build();

    }
}
