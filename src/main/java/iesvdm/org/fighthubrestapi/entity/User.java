package iesvdm.org.fighthubrestapi.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Inheritance(strategy = InheritanceType.JOINED)
public class User {
    // *** PROPS ***
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long user_id;
    private String user_name;
    private Date date_of_birth;
    private String email;
    private String password;
    private String role;
    private LocalDateTime register_date;
    // rel
    @OneToMany(mappedBy = "user")
    private Set<Photo> fotos;
    @OneToOne()
    @JoinColumn(name = "profile_photo_id", referencedColumnName = "photo_id")
    private Photo fotoPerfil;

    // *** METHODS ***
    // Método para establecer la fecha de registro automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.register_date = LocalDateTime.now();
    }
}
