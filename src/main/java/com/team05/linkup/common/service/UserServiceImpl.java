//package com.team05.linkup.common.service;
//
//import com.team05.linkup.common.repository.UserRepository;
//import com.team05.linkup.domain.User;
//import lombok.RequiredArgsConstructor;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.time.ZonedDateTime;
//import java.util.Optional;
//
//@Service
//@RequiredArgsConstructor
//@Transactional
//public class UserServiceImpl implements UserService {
//    private final UserRepository userRepository;
//    private static final Logger logger = LogManager.getLogger(UserServiceImpl.class.getName());
//
//    @Override
//    public void updateOrSaveUser(String providerId) throws Exception {
//        try {
//            ZonedDateTime now = ZonedDateTime.now();
//            Optional<User> user = userRepository.u(providerId);
//            if (user.isPresent()) {
//
//            }
//        } catch (Exception e) {
//            logger.error("updateOrSaveUser error: {}", e.getMessage());
//            throw new Exception("during updateOrSaveUser error: "+ e.getMessage());
//        }
//    }
//}
