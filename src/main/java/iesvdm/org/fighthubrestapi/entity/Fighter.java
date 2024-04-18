package iesvdm.org.fighthubrestapi.entity;

import iesvdm.org.fighthubrestapi.model.Location;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true, callSuper = true)
public class Fighter extends User{
    // *** PROPS ***
    private String name;
    private double weight;
    private double height;
    private String gender;
    private String biography;
    private Location location;
    // Rel
    @ManyToOne()
    @JoinColumn(name = "style_id")
    private Style style;
    @ManyToOne()
    @JoinColumn(name = "club_id")
    private Club club;
    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Category category;
    @ManyToMany()
    @JoinTable(
            name = "fighter_event",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "event_id"))
    private Set<Event> events;
    @OneToOne(mappedBy = "user")
    private Photo profile_photo;
    @OneToMany(mappedBy = "user")
    private Set<Photo> photos;
}
