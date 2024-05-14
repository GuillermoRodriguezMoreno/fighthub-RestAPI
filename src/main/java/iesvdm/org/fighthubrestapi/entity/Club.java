package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.Location;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true, callSuper = true)
public class Club extends User{

    // *** PROPS ***
    // *************
    // Name
    @NotBlank(message = "The name cannot be empty")
    @Size(min = 2, max = 50, message = "The name must be between 2 and 50 characters long")
    private String name;
    // Address
    @NotNull(message = "The address cannot be null")
    private Address address;
    // Phone
    private String phone;
    // Description
    @NotBlank(message = "The description cannot be blank")
    @Size(min = 10, max = 255, message = "The description must be between 10 and 255 characters long")
    private String description;

    //  *** RELATIONSHIPS ***
    // **********************
    // President
    @OneToOne()
    @JoinColumn(name = "president_id")
    private Fighter president;
    // Fighters
    @OneToMany(mappedBy = "club", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
    // Events
    @OneToMany(mappedBy = "organizer", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<Event> events = new HashSet<>();
    // Reviews
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonIgnore
    @ToString.Exclude
    private Set<ClubReview> reviews = new HashSet<>();
    // ClubMembershipRequests
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonIgnore
    @ToString.Exclude
    private Set<ClubMembershipRequest> clubMembershipRequests = new HashSet<>();
    // FightInscriptionRequests
    @OneToMany(mappedBy = "club", cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonIgnore
    @ToString.Exclude
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
