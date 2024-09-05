package org.stepandev.razjebalovo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.stepandev.razjebalovo.entity.AuthorityEntity;

import java.util.List;

public interface AuthorityRepository extends JpaRepository<AuthorityEntity, Long> {
    List<AuthorityEntity> findByUserUsername(String username);  // Метод поиска ролей по имени пользователя
}
