package iesvdm.org.fighthubrestapi.domain;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Fighter {

    // *** PROPS
    private long fighter_id;
    private String name;
    private double weight;
    private double height;
    private String nationality;

}
