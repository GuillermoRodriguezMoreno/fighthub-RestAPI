package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
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
        @Pattern(regexp = "APPROVED|PENDING|REJECTED", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Status must be 'APPROVED' or 'PENDING'")
        private String status;
        // ResponseDate
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        private LocalDateTime responseDate;
        // RequestDate
        @NotNull(message = "The request date cannot be null")
        @PastOrPresent(message = "The request date must be in the past or present")
        @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
        private LocalDateTime requestDate;

        // *** RELATIONSHIPS ***

        // Sender
        @ManyToOne
        @JoinColumn(name = "sender_fighter_id", nullable = false)
        private Fighter sender;
        // Receiver
        @ManyToOne
        @JoinColumn(name = "receiver_fighter_id", nullable = false)
        private Fighter receiver;
}