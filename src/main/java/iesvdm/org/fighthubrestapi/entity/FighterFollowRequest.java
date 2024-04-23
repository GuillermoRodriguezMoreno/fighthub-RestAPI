package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class FighterFollowRequest {

        // *** PROPS ***
        // *************

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @EqualsAndHashCode.Include
        private Long id;
        private String status;
        private String response;
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        private LocalDateTime responseDate;
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        private LocalDateTime requestDate;
        // Rel
        @ManyToOne
        @JoinColumn(name = "sender_fighter_id", nullable = false)
        private Fighter sender;
        @ManyToOne
        @JoinColumn(name = "receiver_fighter_id", nullable = false)
        private Fighter receiver;
}
