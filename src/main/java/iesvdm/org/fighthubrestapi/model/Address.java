package iesvdm.org.fighthubrestapi.model;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Address {
    // *** PROPS ***
    private String street;
    private String city;
    private String state;
    private String postalCode;
    private String country;
}
