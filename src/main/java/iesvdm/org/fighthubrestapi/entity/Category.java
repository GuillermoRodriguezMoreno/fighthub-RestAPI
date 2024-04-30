package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Category {

    // *** PROPS ***
    // *************

    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // Name
    @NotBlank(message = "The name cannot be blank")
    @Size(min = 2, max = 50, message = "The name must be between 2 and 50 characters long")
    @Column(unique = true)
    private String name;

    // *** RELATIONSHIPS ***

    // Fighters
    @OneToMany(mappedBy = "category")
    @JsonIgnore
    @ToString.Exclude
    private Set<Fighter> fighters = new HashSet<>();
    // Fights
    @OneToMany(mappedBy = "category")
    @JsonIgnore
    @ToString.Exclude
    private Set<Fight> fights = new HashSet<>();
}
