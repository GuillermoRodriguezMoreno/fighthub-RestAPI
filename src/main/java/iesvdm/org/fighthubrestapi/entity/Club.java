package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Address;
import jakarta.persistence.*;
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

    private String name;
    private Address address;
    private String description;
    // Rel
    @OneToOne()
    @JoinColumn(name = "owner_id")
    private User owner;
    @OneToMany(mappedBy = "club")
    private Set<Fighter> fighters = new HashSet<>();
    @OneToMany(mappedBy = "organizer")
    @JsonIgnore
    @ToString.Exclude
    private Set<Event> events = new HashSet<>();
    @OneToOne(mappedBy = "user")
    private Photo profile_photo;
    @OneToMany(mappedBy = "user")
    @JsonIgnore
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    @OneToMany(mappedBy = "club")
    private Set<ClubReview> reviews = new HashSet<>();
    @OneToMany(mappedBy = "club")
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
