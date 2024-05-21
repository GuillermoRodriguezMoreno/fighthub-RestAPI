package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import iesvdm.org.fighthubrestapi.model.E_Status;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Pattern;
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
        // Id
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @EqualsAndHashCode.Include
        private Long id;
        // Status
        @Enumerated(EnumType.STRING)
        private E_Status status;
        // ResponseDate
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        @Column(columnDefinition = "TIMESTAMP")
        private LocalDateTime responseDate;
        // RequestDate
        @NotNull(message = "The request date cannot be null")
        @PastOrPresent(message = "The request date must be in the past or present")
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        @Column(columnDefinition = "TIMESTAMP")
        private LocalDateTime requestDate;

        // *** RELATIONSHIPS ***
        // *********************
        // Sender
        @ManyToOne
        @JoinColumn(name = "sender_fighter_id", nullable = false)
        private Fighter sender;
        // Receiver
        @ManyToOne
        @JoinColumn(name = "receiver_fighter_id", nullable = false)
        private Fighter receiver;
}
