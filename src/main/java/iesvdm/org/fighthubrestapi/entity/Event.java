package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Address;
import jakarta.persistence.*;
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

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    private String name;
    private Address address;
    private String description;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime start_date;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime open_date;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime end_date;
    // Rel
    @ManyToOne()
    @JoinColumn(name = "club_id")
    private Club organizer;
    @ManyToMany(mappedBy = "events")
    @JsonIgnore
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
    @OneToMany(mappedBy = "event")
    private Set<Fight> fights = new HashSet<>();
    @OneToOne
    @JoinColumn(name = "photo_id")
    private Photo photo;
    @OneToMany(mappedBy = "event")
    private Set<EventReview> reviews = new HashSet<>();
}
