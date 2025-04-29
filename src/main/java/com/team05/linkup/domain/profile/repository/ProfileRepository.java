package com.team05.linkup.domain.profile.repository;

import com.team05.linkup.domain.User;
import org.springframework.context.annotation.Profile;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface ProfileRepository extends JpaRepository<User, String> {

    //닉네임으로 Profile을 찾는 메서드
    Optional<User> findByNickname(String nickname);
}