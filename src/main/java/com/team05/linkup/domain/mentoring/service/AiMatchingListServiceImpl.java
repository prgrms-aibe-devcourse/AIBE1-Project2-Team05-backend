package com.team05.linkup.domain.mentoring.service;

import com.team05.linkup.common.exception.UserNotfoundException;
import com.team05.linkup.common.util.ApiUtils;
import com.team05.linkup.domain.mentoring.dto.AiMatchingRequestDTO;
import com.team05.linkup.domain.mentoring.dto.AiMatchingResponseDTO;
import com.team05.linkup.domain.mentoring.util.RecommendationLogic;
import com.team05.linkup.domain.user.infrastructure.UserRepository;
import lombok.RequiredArgsConstructor;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AiMatchingListServiceImpl implements AiMatchingService {
    private static final Logger logger = LogManager.getLogger();
    private final UserRepository userRepository;
    private final ApiUtils apiUtils;
    private final RecommendationLogic recommendationLogic;

    @Override
    public AiMatchingResponseDTO matchMentor(String provider, String providerId) {
        try {
            String myProfileTag = userRepository.findProfileTagByProviderId(provider,providerId);
            List<Object[]> resultList = userRepository.findOtherProfileTagsByProviderId(provider,providerId);

            List<AiMatchingRequestDTO.OtherProfile> otherProfiles = resultList.stream().map(obj -> new AiMatchingRequestDTO.OtherProfile(
                                    (Integer) obj[0],
                                    (String) obj[1],
                                    (String) obj[2],
                                    (String) obj[3],
                                    (String) obj[4]
                            )).collect(Collectors.toList());

            AiMatchingRequestDTO requestDTO = new AiMatchingRequestDTO(myProfileTag, otherProfiles);
            String url = "http://localhost:5000/word-similarity";

            Optional<AiMatchingResponseDTO> responseOpt = apiUtils.getApiResponse(url, "POST", requestDTO, AiMatchingResponseDTO.class);

            AiMatchingResponseDTO response = responseOpt.orElseThrow(() ->
                    new UserNotfoundException("mentor is not found"));
            logger.debug("response: {}", response);
            List<AiMatchingResponseDTO.Result> sampled = recommendationLogic.weightedRandomSample(response.results(), 4);

            Collections.shuffle(sampled);

            return new AiMatchingResponseDTO(myProfileTag, sampled);

        } catch (UserNotfoundException e) {
            logger.error("user is not found: {}", e.getMessage());
            throw new UserNotfoundException("user is not found: " + e.getMessage());
        } catch (Exception e) {
            logger.error("Error in matchMentor: {}", e.getMessage());
            throw new RuntimeException("Error in matchMentor: " + e.getMessage(), e);
        }

    }
}
