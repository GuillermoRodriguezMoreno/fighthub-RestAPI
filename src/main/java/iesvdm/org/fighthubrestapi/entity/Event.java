package iesvdm.org.fighthubrestapi.entity;

import iesvdm.org.fighthubrestapi.model.Address;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Event {
    // *** PROPS ***
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long event_id;
    private String name;
    private Address address;
    private String description;
    private Date start_date;
    private Date open_date;
    // Rel
    @ManyToOne()
    @JoinColumn(name = "organizer_id")
    private Club organizer;
    @ManyToMany(mappedBy = "events")
    private Set<Fighter> fighters;
    @OneToOne
    @JoinColumn(name = "photo_id")
    private Photo photo;

}
