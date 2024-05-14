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
import java.util.Objects;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class FollowId implements Serializable {

    // *** PROPS ***
    // *************

    private Long followerFighterId;
    private Long followedFighterId;

    // *** METHODS ***
    // ***************
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FollowId followId = (FollowId) o;
        return Objects.equals(followerFighterId, followId.followerFighterId) &&
                Objects.equals(followedFighterId, followId.followedFighterId);
    }
    @Override
    public int hashCode() {
        return Objects.hash(followerFighterId, followedFighterId);
    }
}
