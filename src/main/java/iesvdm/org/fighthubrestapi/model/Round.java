package iesvdm.org.fighthubrestapi.model;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Round {

    // *** PROPS ***
    // *************
    private int total;
    private int minutes;
}
