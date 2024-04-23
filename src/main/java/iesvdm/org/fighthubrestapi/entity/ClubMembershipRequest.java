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
public class ClubMembershipRequest {

    // *** PROPS ***
    // *************

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    private String status;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime requestDate;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime responseDate;
    // Rel
    @ManyToOne
    @JoinColumn(name = "club_id", nullable = false)
    private Club club;
    @ManyToOne
    @JoinColumn(name = "fighter_id", nullable = false)
    private Fighter fighter;
}
