package org.stepandev.razjebalovo.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "authority_entity")
public class AuthorityEntity {
    @Id
    private Long id;
    private String authority;

    @ManyToOne
    @JoinColumn(name = "user_id") // Указывает на столбец с внешним ключом
    private UserEntity user;
}
