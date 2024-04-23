package iesvdm.org.fighthubrestapi.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Follow {

    // *** PROPS ***
    // *************

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long follow_id;
    // Rel
    @ManyToOne
    @JoinColumn(name = "follower_fighter_id", nullable = false)
    private Fighter follower_id;
    @ManyToOne
    @JoinColumn(name = "followed_fighter_id", nullable = false)
    private Fighter followed_id;
}
