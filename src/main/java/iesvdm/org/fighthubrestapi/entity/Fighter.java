package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.model.Location;
import iesvdm.org.fighthubrestapi.serializer.FighterSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
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
@JsonSerialize(using = FighterSerializer.class)
public class Fighter {

    // *** PROPS ***
    // *************
    // ID
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // UserName
    @Size(min = 3, max = 20, message = "User name must be between 3 and 20 characters")
    @Column(unique = true)
    private String userName;
    // BirthDate
    @NotNull(message = "The birth date cannot be null")
    @Past(message = "The birth date must be in the past")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime birthDate;
    // Email
    @NotBlank
    @Email
    @Column(unique = true)
    private String email;
    // Password
    @NotBlank
    @Size(min = 8, message = "Password must be at least 8 characters long")
    private String password;
    // RegisterDate
    @NotNull(message = "The register date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime registerDate;
    // Deleted
    @Column(columnDefinition = "BOOLEAN DEFAULT false")
    private boolean deleted;
    // Name
    @NotBlank(message = "The name cannot be empty")
    @Size(min = 2, max = 50, message = "The name must be between 2 and 50 characters long")
    private String name;
    // Active
    @NotNull(message = "Active cannot be null")
    private boolean active;
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
    private int numberOfFights;
    // WinsInARow
    @Column(name = "wins_in_a_row")
    private int winsInARow;

    // *** RELATIONSHIPS ***
    // *********************
    // ProfilePhoto
    @OneToOne()
    @JoinColumn(name = "profile_photo_id", referencedColumnName = "id")
    private Photo profilePhoto;
    // ClubAdministered (President)
    @OneToOne()
    private Club clubAdministered;
    // Club
    @ManyToOne()
    @JoinColumn(name = "club_id")
    private Club club;
    // Category
    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Category category;
    // EventsParticipated
    @ManyToMany(mappedBy = "fightersParticipating", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Event> eventsParticipated = new HashSet<>();
    // Style
    @ManyToMany()
    @JoinTable(
            name = "fighter_style",
            joinColumns = @JoinColumn(name = "fighter_id"),
            inverseJoinColumns = @JoinColumn(name = "style_id")
    )
    private Set<Style> styles = new HashSet<>();
    // Role
    @ManyToMany()
    @JoinTable(
            name = "fighter_role",
            joinColumns = @JoinColumn(name = "fighter_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    @ToString.Exclude
    @Column(columnDefinition = "default 'FIGHTER'")
    private Set<Role> roles = new HashSet<>();
    // Photos
    @OneToMany(mappedBy = "fighter", cascade = CascadeType.ALL, orphanRemoval = true)
    @ToString.Exclude
    private Set<Photo> photos = new HashSet<>();
    // EventReviews
    @OneToMany(mappedBy = "fighter", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<EventReview> eventReviews = new HashSet<>();
    // Fights
    @OneToMany(mappedBy = "blueCornerFighter", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Fight> blueCornerFights = new HashSet<>();
    @OneToMany(mappedBy = "redCornerFighter", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<Fight> redCornerFights = new HashSet<>();
    // FightInscriptionRequests
    @OneToMany(mappedBy = "fighter", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
    // Following
    @OneToMany(mappedBy = "followerFighter", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<Follow> following = new HashSet<>();
    // Followers
    @OneToMany(mappedBy = "followedFighter", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<Follow> followers = new HashSet<>();
    // SentFighterFollowRequest
    @OneToMany(mappedBy = "sender", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<FighterFollowRequest> sentFighterFollowRequests = new HashSet<>();
    // ReceivedFighterFollowRequest
    @OneToMany(mappedBy = "receiver", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<FighterFollowRequest> receivedFighterFollowRequests = new HashSet<>();
    // ClubMembershipRequests
    @OneToMany(mappedBy = "fighter", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @ToString.Exclude
    private Set<ClubMembershipRequest> clubMembershipRequests = new HashSet<>();
    // ClubReviews
    @OneToMany(mappedBy = "fighter", cascade = CascadeType.MERGE)
    @ToString.Exclude
    private Set<ClubReview> clubReviews = new HashSet<>();

    // *** CONSTRUCTORS ***
    // ********************
    public Fighter(String username, String email, String password) {
        this.userName = username;
        this.email = email;
        this.password = password;
    }
}
