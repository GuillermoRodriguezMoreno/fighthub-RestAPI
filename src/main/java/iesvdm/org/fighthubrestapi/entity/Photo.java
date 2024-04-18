package iesvdm.org.fighthubrestapi.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Photo {
    // *** PROPS ***
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long photo_id;
    private String entity_type;
    private String url;
    private LocalDateTime upload_date;
    // Rel
    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    // *** METHODS ***
    // Método para establecer la fecha de subida automáticamente antes de persistir
    @PrePersist
    protected void onCreate() {
        this.upload_date = LocalDateTime.now();
    }
}
