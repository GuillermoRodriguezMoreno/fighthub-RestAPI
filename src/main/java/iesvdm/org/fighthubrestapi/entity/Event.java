package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.Location;
import iesvdm.org.fighthubrestapi.serializer.EventSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@JsonSerialize(using = EventSerializer.class)
public class Event {

    // *** PROPS ***
    // *************

    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // Name
    @NotBlank(message = "The name cannot be empty")
    @Size(min = 2, max = 50, message = "The name must be between 2 and 50 characters long")
    private String name;
    // Address
    @NotNull(message = "The address cannot be null")
    private Address address;
    // Description
    @NotBlank(message = "The description cannot be blank")
    @Size(min = 10, max = 255, message = "The description must be between 10 and 255 characters long")
    private String description;
    // StartDate
    @NotNull(message = "The start date cannot be null")
    @Future(message = "The start date must be in the future")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime startDate;
    // OpenDate
    @NotNull(message = "The open date cannot be null")
    @Future(message = "The open date must be in the future")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime openDate;
    // EndDate
    @NotNull(message = "The end date cannot be null")
    @Future(message = "The end date must be in the future")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime endDate;

    // *** RELATIONSHIPS ***
    // *********************
    // Photo
    @OneToOne
    @JoinColumn(name = "photo_id")
    private Photo photo;
    // Organizer
    @ManyToOne()
    @JoinColumn(name = "club_id")
    private Club organizer;
    // FightersParticipating
    @ManyToMany()
    @JoinTable(
            name = "event_fighter",
            joinColumns = @JoinColumn(name = "event_id"),
            inverseJoinColumns = @JoinColumn(name = "fighter_id")
    )
    @ToString.Exclude
    private Set<Fighter> fightersParticipating = new HashSet<>();
    // ClubParticipating
    @ManyToMany()
    @JoinTable(
            name = "event_club",
            joinColumns = @JoinColumn(name = "event_id"),
            inverseJoinColumns = @JoinColumn(name = "club_id")
    )
    @ToString.Exclude
    private Set<Club> clubsParticipating = new HashSet<>();
    // Fights
    @OneToMany(mappedBy = "event", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Fight> fights = new HashSet<>();
    // Reviews
    @OneToMany(mappedBy = "event", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<EventReview> reviews = new HashSet<>();
    // fightInscriptionRequests
    @OneToMany(mappedBy = "event", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
