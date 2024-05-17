package iesvdm.org.fighthubrestapi.entity_key;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ClubReviewId implements Serializable {

    // *** PROPS ***
    // *************
    private Long fighterId;
    private Long clubId;

    // *** METHODS ***
    // ***************
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ClubReviewId clubReviewId = (ClubReviewId) o;
        return fighterId.equals(clubReviewId.fighterId) &&
                clubId.equals(clubReviewId.clubId);
    }
    @Override
    public int hashCode() {
        return Objects.hash(fighterId, clubId);
    }
}
