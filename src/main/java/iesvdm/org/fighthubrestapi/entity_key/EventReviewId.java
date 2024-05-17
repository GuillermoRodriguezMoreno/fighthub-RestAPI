package iesvdm.org.fighthubrestapi.entity_key;

import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventReviewId implements Serializable {

    // *** PROPS ***
    // *************
    private Long fighterId;
    private Long eventId;

    // *** METHODS ***
    // ***************
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EventReviewId eventReviewId = (EventReviewId) o;
        return fighterId.equals(eventReviewId.fighterId) &&
                eventId.equals(eventReviewId.eventId);
    }
    @Override
    public int hashCode() {
        return Objects.hash(fighterId, eventId);
    }
}
