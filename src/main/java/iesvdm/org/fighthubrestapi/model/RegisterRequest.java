package iesvdm.org.fighthubrestapi.model;

import jakarta.persistence.Column;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Set;

@Data
@AllArgsConstructor
public class RegisterRequest {

    // *** PROPS ***
    // *************
    // User name
    @Size(min = 3, max = 20, message = "User name must be between 3 and 20 characters")
    private String userName;
    // Password
    @NotBlank
    @Size(min = 8, message = "Password must be at least 8 characters long")
    private String password;
    // Email
    @NotBlank
    @Email
    private String email;
    // Roles
    private Set<String> roles;
}
