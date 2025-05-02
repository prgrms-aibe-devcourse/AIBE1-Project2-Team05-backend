package com.team05.linkup.domain.mentoring.util;

import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Component
public class RecommendationLogic {
    public List<AiMatchingResponseDTO.Result> weightedRandomSample(List<AiMatchingResponseDTO.Result> items, int sampleSize) {
        Random rand = new Random();
        List<AiMatchingResponseDTO.Result> sampled = new ArrayList<>();
        double totalWeight = items.stream().mapToDouble(AiMatchingResponseDTO.Result::similarity).sum();

        for (int i = 0; i < sampleSize && !items.isEmpty(); i++) {
            double r = rand.nextDouble() * totalWeight;
            double cumulative = 0.0;

            for (int j = 0; j < items.size(); j++) {
                AiMatchingResponseDTO.Result item = items.get(j);
                cumulative += item.similarity();

                if (cumulative >= r) {
                    sampled.add(item);
                    totalWeight -= item.similarity();
                    items.remove(j);
                    break;
                }
            }
        }
        return sampled;
    }
}
