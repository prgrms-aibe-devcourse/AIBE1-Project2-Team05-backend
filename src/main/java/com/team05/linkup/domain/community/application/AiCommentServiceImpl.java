//package com.team05.linkup.domain.community.application;
//
//import com.team05.linkup.common.config.ApikeyConfig;
//import com.team05.linkup.common.config.GeminiConfig;
//import com.team05.linkup.domain.community.domain.Community;
//import com.team05.linkup.domain.community.domain.CommunityCategory;
//import com.team05.linkup.domain.community.infrastructure.AiCommentRepository;
//import com.team05.linkup.domain.community.infrastructure.CommunityRepository;
//import jakarta.transaction.Transactional;
//import lombok.RequiredArgsConstructor;
//import org.springframework.stereotype.Service;
//
//@Service
//@RequiredArgsConstructor
//public class AiCommentServiceImpl implements AiCommentService{
//    private final AiCommentRepository aiCommentRepository;
//    private final CommunityRepository communityRepository;
//    private final ApikeyConfig apikeyConfig;
//    private final GeminiConfig geminiConfig;
//
//    @Override
//    @Transactional
//    public Community generateComment(Community community) {
//        try {
//            Community saved = communityRepository.save(community);
//            if (CommunityCategory.QUESTION.equals(community.getCategory())) {
//                String url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=";
//                String newurl = url + apikeyConfig.getGeminiKey();
//
//            }
//        }
//
//
//        return null;
//    }
//}
