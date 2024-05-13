package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import org.hibernate.validator.constraints.Length;

import java.time.LocalDateTime;
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

    // ID
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // UserName
    @Size(min = 3, max = 20, message = "User name must be between 3 and 20 characters")
    @Column(unique = true)
    private String userName;
    // BirthDate
    @NotNull(message = "The birth date cannot be null")
    @Past(message = "The birth date must be in the past")
    @JsonFormat(pattern = "dd-MM-yyyy",  shape = JsonFormat.Shape.STRING)
    private LocalDateTime birthDate;
    // Email
    @NotBlank
    @Email
    @Column(unique = true)
    private String email;
    // Password
    @NotBlank
    @Size(min = 8, message = "Password must be at least 8 characters long")
    private String password;
    // RegisterDate
    @NotNull(message = "The upload date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime registerDate;

    // *** RELATIONSHIPS ***

    // ProfilePhoto
    @OneToOne()
    @JoinColumn(name = "profile_photo_id", referencedColumnName = "id")
    private Photo profilePhoto;
    // Role
    @ManyToMany()
    @JoinTable(
            name = "user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    @JsonIgnore
    @ToString.Exclude
    private Set<Role> roles = new HashSet<>();
    // Photos
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    // EventReviews
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    @ToString.Exclude
    private Set<EventReview> eventReviews = new HashSet<>();

    // *** CONSTRUCTORS ***
    // ********************
    public User(String username, String email, String password) {
        this.userName = username;
        this.email = email;
        this.password = password;
    }

    // *** METHODS ***
    // ***************

    // Método para establecer la fecha de registro automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.registerDate = LocalDateTime.now();
    }
}
