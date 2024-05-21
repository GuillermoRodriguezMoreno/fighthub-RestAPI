package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.serializer.ClubMembershipRequestSerializer;
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
@JsonSerialize(using = ClubMembershipRequestSerializer.class)
public class ClubMembershipRequest {

    // *** PROPS ***
    // *************
    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // Status
    @Enumerated(EnumType.STRING)
    private E_Status status;
    // RequestDate
    @NotNull(message = "The date cannot be null")
    @PastOrPresent(message = "The date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime requestDate;
    // ResponseDate
    @Column(columnDefinition = "TIMESTAMP")
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
