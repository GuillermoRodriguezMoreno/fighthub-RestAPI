package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
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
public class ClubMembershipRequest {

    // *** PROPS ***
    // *************

    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // Status
    @Pattern(regexp = "APPROVED|PENDING", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Status must be 'APPROVED' or 'PENDING'")
    private String status;
    // Response
    private boolean response;
    // RequestDate
    @NotNull(message = "The date cannot be null")
    @PastOrPresent(message = "The date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime requestDate;
    // ResponseDate
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime responseDate;

    // *** RELATIONSHIPS ***

    // Club
    @ManyToOne
    @JoinColumn(name = "club_id", nullable = false)
    private Club club;
    // Fighter
    @ManyToOne
    @JoinColumn(name = "fighter_id", nullable = false)
    private Fighter fighter;
}
