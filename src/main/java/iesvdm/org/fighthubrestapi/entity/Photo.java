package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    private String entity_type;
    private String url;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime upload_date;
    // Rel
    @ManyToOne
    @JoinColumn(name = "user_id")
    @JsonIgnore
    @ToString.Exclude
    private User user;

    // *** METHODS ***
    // Método para establecer la fecha de subida automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.upload_date = LocalDateTime.now();
    }
}
