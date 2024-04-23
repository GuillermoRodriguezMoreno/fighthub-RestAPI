package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;


import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Style {

    // *** PROPS ***
    // *************

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    private String name;
    // Rel
    @OneToMany(mappedBy = "style")
    @JsonIgnore
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
}
