package com.team05.linkup.domain.community.application;

import com.google.common.collect.ImmutableList;
import com.google.genai.Client;
import com.google.genai.types.Content;
import com.google.genai.types.GenerateContentConfig;
import com.google.genai.types.GenerateContentResponse;
import com.google.genai.types.SafetySetting;
import com.team05.linkup.common.config.ApikeyConfig;
import com.team05.linkup.common.config.GeminiConfig;
import jakarta.annotation.PostConstruct;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class GeminiServiceImpl implements GeminiService {
    private static final Logger logger = LogManager.getLogger(GeminiServiceImpl.class);
    private final GeminiConfig geminiConfig;
    private final ApikeyConfig apikeyConfig;
    private Client client;

    @PostConstruct
    public void init() {
        // 빈 초기화 후 client 생성
        this.client = Client.builder()
                .apiKey(apikeyConfig.getGemini())
                .build();
    }

    @Override
    public String getGeminiResponse(String text) throws Exception {
        try {
            // Sets the safety settings in the config.
            final ImmutableList<SafetySetting> safetySettings = geminiConfig.safetySettings();

            // Sets the system instruction in the config.
            final Content systemInstruction = geminiConfig.systemInstruction();

            GenerateContentConfig config =
                    GenerateContentConfig.builder()
                            .candidateCount(1)
                            .maxOutputTokens(2048)
                            .safetySettings(safetySettings)
                            .systemInstruction(systemInstruction)
                            .build();

            String model = "gemini-2.0-flash-001";

            GenerateContentResponse response = client.models.generateContent(model, text, config);


            logger.debug("{}", response.text());

            return response.text();

        } catch (Exception e) {
            logger.error("Error in getGeminiResponse: {}", e.getMessage());
            throw new Exception("Error in getGeminiResponse: " + e.getMessage(), e);
        }
    }
}
