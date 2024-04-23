package iesvdm.org.fighthubrestapi.entity_key;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class FollowId implements Serializable {

    @ManyToOne
    @JoinColumn(name = "follower_fighter_id")
    @EqualsAndHashCode.Include
    private Fighter followerFighter;

    @ManyToOne
    @JoinColumn(name = "followed_fighter_id")
    @EqualsAndHashCode.Include
    private Fighter followedFighter;
}
