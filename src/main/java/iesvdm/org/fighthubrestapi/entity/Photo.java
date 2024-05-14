package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Pattern;
import lombok.*;

import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Photo {

    // *** PROPS ***
    // *************
    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // EntityType
    @Pattern(regexp = "FIGHTER|CLUB|EVENT|USER", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Entity type must be 'FIGHTER', 'CLUB', 'USER' or 'EVENT'")
    private String EntityType;
    // Url
    @NotBlank(message = "The url cannot be blank")
    private String url;
    @NotNull(message = "The upload date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime uploadDate;

    // *** RELATIONSHIPS ***
    // *********************
    // User
    @ManyToOne
    @JoinColumn(name = "user_id")
    @JsonIgnore
    @ToString.Exclude
    private User user;

    // *** METHODS ***
    // ***************
    // Método para establecer la fecha de subida automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.uploadDate = LocalDateTime.now();
    }
}
