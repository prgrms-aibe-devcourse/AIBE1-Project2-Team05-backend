package com.team05.linkup.domain.user.infrastructure;

import com.team05.linkup.domain.user.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, String> {

    //닉네임으로 Profile을 찾는 메서드
    Optional<User> findByNickname(String nickname);
}