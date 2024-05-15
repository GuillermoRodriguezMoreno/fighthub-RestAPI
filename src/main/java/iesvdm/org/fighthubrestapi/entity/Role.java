package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.E_Role;
import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Role {

    // *** PROPS ***
    // *************
    // ID
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // Role
    @Enumerated(EnumType.STRING)
    private E_Role role;

    // *** RELATIONSHIPS ***
    // *********************
    // Fighters
    @ManyToMany(mappedBy = "roles", cascade = CascadeType.MERGE)
    @JsonIgnore
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
}
