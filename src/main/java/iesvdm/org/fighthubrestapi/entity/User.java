package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

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
    // *************

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long user_id;
    private String user_name;
    @JsonFormat(pattern = "dd-MM-yyyy",  shape = JsonFormat.Shape.STRING)
    private LocalDateTime birth_date;
    private String email;
    private String password;
    private String role;
    private String entity_type;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime register_date;
    // Rel
    @OneToOne()
    @JoinColumn(name = "profile_photo_id", referencedColumnName = "photo_id")
    private Photo profile_photo;
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();

    // *** METHODS ***
    // ***************

    // Método para establecer la fecha de registro automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.register_date = LocalDateTime.now();
    }
}
