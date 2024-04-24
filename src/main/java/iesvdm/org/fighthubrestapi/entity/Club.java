package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Address;
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
    // Description
    @NotBlank(message = "The description cannot be blank")
    @Size(min = 10, max = 255, message = "The description must be between 10 and 255 characters long")
    private String description;

    //  *** RELATIONSHIPS ***

    // Owner
    @OneToOne()
    @JoinColumn(name = "owner_id")
    private User owner;
    // Fighters
    @OneToMany(mappedBy = "club")
    private Set<Fighter> fighters = new HashSet<>();
    // Events
    @OneToMany(mappedBy = "organizer")
    @JsonIgnore
    @ToString.Exclude
    private Set<Event> events = new HashSet<>();
    // ProfilePhoto
    @OneToOne(mappedBy = "user")
    private Photo profilePhoto;
    // Photos
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    // Reviews
    @OneToMany(mappedBy = "club")
    private Set<ClubReview> reviews = new HashSet<>();
    // Clubs
    @OneToMany(mappedBy = "club")
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
