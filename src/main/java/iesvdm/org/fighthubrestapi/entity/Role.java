package iesvdm.org.fighthubrestapi.entity;

import iesvdm.org.fighthubrestapi.model.E_Role;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

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

    // Users
    @ManyToMany(mappedBy = "roles", cascade = CascadeType.MERGE)
    private Set<User> users = new HashSet<>();
}
