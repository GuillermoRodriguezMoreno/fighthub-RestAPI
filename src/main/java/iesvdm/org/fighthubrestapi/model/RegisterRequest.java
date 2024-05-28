package iesvdm.org.fighthubrestapi.model;

import jakarta.persistence.Column;
import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.time.LocalDateTime;
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
    // BirthDate
    @NotNull(message = "The birth date cannot be null")
    @Past(message = "The birth date must be in the past")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime birthDate;
    // Roles
    private Set<String> role;
}
