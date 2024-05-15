package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.serializer.UserSerializer;
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
@JsonSerialize(using = UserSerializer.class)
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
    @Column(columnDefinition = "TIMESTAMP")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm")
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
    @NotNull(message = "The register date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm")
    private LocalDateTime registerDate;
    // Deleted
    @Column(columnDefinition = "BOOLEAN DEFAULT false")
    private boolean deleted;

    // *** RELATIONSHIPS ***
    // *********************
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
    @ToString.Exclude
    @Column(columnDefinition = "default 'FIGHTER'")
    private Set<Role> roles = new HashSet<>();
    // Photos
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    // EventReviews
    @OneToMany(mappedBy = "user", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<EventReview> eventReviews = new HashSet<>();

    // *** CONSTRUCTORS ***
    // ********************
    public User(String username, String email, String password) {
        this.userName = username;
        this.email = email;
        this.password = password;
    }
}
