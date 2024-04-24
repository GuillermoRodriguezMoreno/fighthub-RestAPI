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
    // Entity_type
    @Pattern(regexp = "FIGHTER|CLUB|EVENT", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Entity type must be 'FIGHTER', 'CLUB' or 'EVENT'")
    private String entity_type;
    // Url
    @NotBlank
    private String url;
    @NotNull(message = "The upload date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime upload_date;

    // *** RELATIONSHIPS ***

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
        this.upload_date = LocalDateTime.now();
    }
}
