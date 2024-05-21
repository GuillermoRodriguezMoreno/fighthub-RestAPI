package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.serializer.FightInscriptionRequestSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
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
@JsonSerialize(using = FightInscriptionRequestSerializer.class)
public class FightInscriptionRequest {

    // *** PROPS ***
    // *************
    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    // Status
    @Enumerated(EnumType.STRING)
    private E_Status status;
    // Message
    @NotBlank(message = "The message cannot be blank")
    @Size(min = 10, max = 255, message = "The message must be between 10 and 255 characters long")
    private String message;
    // Response
    private String response;
    // ResponseDate
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime responseDate;
    // RequestDate
    @NotNull(message = "The request date cannot be null")
    @PastOrPresent(message = "The request date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime requestDate;

    // *** RELATIONSHIPS ***
    // Club
    @ManyToOne
    @JoinColumn(name = "club_id", nullable = false)
    private Club club;
    // Fighter
    @ManyToOne
    @JoinColumn(name = "fighter_id", nullable = false)
    private Fighter fighter;
    // Fight
    @ManyToOne
    @JoinColumn(name = "fight_id", nullable = false)
    private Fight fight;
    // Event
    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    private Event event;
}
