package org.stepandev.razjebalovo.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.stepandev.razjebalovo.entity.AuthorityEntity;
import org.stepandev.razjebalovo.repository.AuthorityRepository;
import org.stepandev.razjebalovo.repository.UserRepository;
import org.stepandev.razjebalovo.entity.UserEntity;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;
    private final AuthorityRepository authorityRepository;

    public CustomUserDetailsService(UserRepository userRepository, AuthorityRepository authorityRepository) {
        this.userRepository = userRepository;
        this.authorityRepository = authorityRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findByUsername(username);

        if (userEntity == null) {
            throw new UsernameNotFoundException("User not found");
        }

        List<AuthorityEntity> authorities = authorityRepository.findByUserUsername(userEntity.getUsername());

        return org.springframework.security.core.userdetails.User.withUsername(userEntity.getUsername())
                .password(userEntity.getPassword())
                .authorities(authorities.stream()
                        .map(AuthorityEntity::getAuthority)
                        .collect(Collectors.toList()).toArray(new String[0]))
                .accountExpired(false)
                .accountLocked(false)
                .credentialsExpired(false)
                .disabled(!userEntity.isActive())
                .build();
    }
}
