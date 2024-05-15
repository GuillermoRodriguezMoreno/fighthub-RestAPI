package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.Location;
import jakarta.persistence.*;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
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
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime startDate;
    // OpenDate
    @NotNull(message = "The open date cannot be null")
    @Future(message = "The open date must be in the future")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime openDate;
    // EndDate
    @NotNull(message = "The end date cannot be null")
    @Future(message = "The end date must be in the future")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
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
    // Fights
    @OneToMany(mappedBy = "event", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<Fight> fights = new HashSet<>();
    // Reviews
    @OneToMany(mappedBy = "event", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<EventReview> reviews = new HashSet<>();
}
