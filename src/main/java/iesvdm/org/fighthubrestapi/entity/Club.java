package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.serializer.ClubSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@JsonSerialize(using = ClubSerializer.class)
public class Club {

    // *** PROPS ***
    // *************
    // ID
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
    // Phone
    private String phone;
    // Email
    @NotBlank
    @Email
    @Column(unique = true)
    private String email;
    // RegisterDate
    @NotNull(message = "The register date cannot be null")
    @PastOrPresent(message = "The register date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm")
    private LocalDateTime registerDate;
    // Description
    @NotBlank(message = "The description cannot be blank")
    @Size(min = 10, max = 255, message = "The description must be between 10 and 255 characters long")
    private String description;
    // Deleted
    @Column(columnDefinition = "BOOLEAN DEFAULT false")
    private boolean deleted;

    //  *** RELATIONSHIPS ***
    // **********************
    // ProfilePhoto
    @OneToOne()
    @JoinColumn(name = "profile_photo_id")
    private Photo profilePhoto;
    // President
    @OneToOne()
    @JoinColumn(name = "president_id")
    private Fighter president;
    // EventsParticipated
    @ManyToMany(mappedBy = "clubsParticipating", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<Event> eventsParticipated = new HashSet<>();
    // Fighters
    @OneToMany(mappedBy = "club", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
    // EventsOrganized
    @OneToMany(mappedBy = "organizer", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Event> eventsOrganized = new HashSet<>();
    // Photos
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    // Reviews
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<ClubReview> reviews = new HashSet<>();
    // ClubMembershipRequests
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<ClubMembershipRequest> clubMembershipRequests = new HashSet<>();
    // FightInscriptionRequestsSent
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<FightInscriptionRequest> fightInscriptionRequestsSent = new HashSet<>();
}
