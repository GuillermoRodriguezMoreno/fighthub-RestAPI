package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Location;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true, callSuper = true)
public class Fighter extends User{

    // *** PROPS ***
    // *************

    // Name
    @NotBlank(message = "The name cannot be empty")
    @Size(min = 2, max = 50, message = "The name must be between 2 and 50 characters long")
    private String name;
    // Weight
    @NotNull(message = "Weight cannot be null")
    @Min(value = 20, message = "Weight must be at least 20")
    @Max(value = 200, message = "Maximum allowed weight is 200")
    private double weight;
    // Height
    @NotNull(message = "Height cannot be null")
    @Min(value = 100, message = "Height must be at least 100")
    @Max(value = 300, message = "Maximum allowed Height is 300")
    private int height;
    // Gender
    private String gender;
    // Biography
    @NotBlank(message = "The biography cannot be blank")
    @Size(min = 10, max = 500, message = "The biography must be between 10 and 500 characters long")
    private String biography;
    // Location
    private Location location;
    // Wins
    private int wins;
    // Losses
    private int losses;
    // Draws
    private int draws;
    // Kos
    private int kos;
    // Fights
    private int fights;
    // WinsInARow
    private int wins_in_a_row;

    // *** RELATIONSHIPS ***

    // Style
    @ManyToOne()
    @JoinColumn(name = "style_id")
    private Style style;
    // Club
    @ManyToOne()
    @JoinColumn(name = "club_id")
    private Club club;
    // Category
    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Category category;
    // Events
    @ManyToMany()
    @JoinTable(
            name = "fighter_event",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "event_id"))
    private Set<Event> events = new HashSet<>();
    // ProfilePhoto
    @OneToOne(mappedBy = "user")
    private Photo profile_photo;
    // Photos
    @OneToMany(mappedBy = "user")
    private Set<Photo> photos = new HashSet<>();
    // Following
    @OneToMany(mappedBy = "followerFighter")
    @JsonIgnore
    @ToString.Exclude
    private Set<Follow> following = new HashSet<>();
    // Followers
    @OneToMany(mappedBy = "followedFighter")
    @JsonIgnore
    @ToString.Exclude
    private Set<Follow> followers = new HashSet<>();
    // SentFighterFollowRequest
    @OneToMany(mappedBy = "sender")
    private Set<FighterFollowRequest> sentFighterFollowRequests = new HashSet<>();
    // ReceivedFighterFollowRequest
    @OneToMany(mappedBy = "receiver")
    private Set<FighterFollowRequest> receivedFighterFollowRequests = new HashSet<>();
    // ClubMembershipRequests
    @OneToMany(mappedBy = "fighter")
    private Set<ClubMembershipRequest> clubMembershipRequests = new HashSet<>();

    // toDo -- Implementar la relacion con inscripcion_pelea
}
