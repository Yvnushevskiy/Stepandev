package org.stepandev.razjebalovo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.stepandev.razjebalovo.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, String> {
    UserEntity findByUsername(String username);
}
