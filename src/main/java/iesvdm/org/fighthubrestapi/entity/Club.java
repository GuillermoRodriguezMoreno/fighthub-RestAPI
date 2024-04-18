package iesvdm.org.fighthubrestapi.entity;

import iesvdm.org.fighthubrestapi.model.Address;
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
public class Club extends User{
    // *** PROPS ***
    private String name;
    private Address address;
    private String description;
    // Rel
    @OneToOne()
    @JoinColumn(name = "owner_id")
    private User owner;
    @OneToMany(mappedBy = "organizer")
    private Set<Event> events;
    @OneToOne(mappedBy = "user")
    private Photo profile_photo;
    @OneToMany(mappedBy = "user")
    private Set<Photo> photos;
}
