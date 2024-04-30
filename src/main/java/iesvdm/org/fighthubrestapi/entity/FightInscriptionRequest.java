package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
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
public class FightInscriptionRequest {

    // toDo: Verify relationships with Club, Fighter, Event and Fight and keys


    // *** PROPS ***
    // *************

    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    // Status
    @Pattern(regexp = "APPROVED|PENDING|REJECTED", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Status must be 'APPROVED', 'REJECTED' or 'PENDING'")
    private String status;
    // Message
    @NotBlank(message = "The message cannot be blank")
    @Size(min = 10, max = 255, message = "The message must be between 10 and 255 characters long")
    private String message;
    // Response
    private boolean response;
    // ResponseDate
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime responseDate;
    // RequestDate
    @NotNull(message = "The request date cannot be null")
    @PastOrPresent(message = "The request date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
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
}