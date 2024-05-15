package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.model.E_Role;
import iesvdm.org.fighthubrestapi.model.LoginRequest;
import iesvdm.org.fighthubrestapi.model.MessageResponse;
import iesvdm.org.fighthubrestapi.model.RegisterRequest;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import iesvdm.org.fighthubrestapi.service.UserDetailsImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import iesvdm.org.fighthubrestapi.security.TokenUtils;


import java.util.*;
import java.util.stream.Collectors;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/auth")
public class AuthController {

    // *** INJECTS ***
    // ***************
    @Autowired
    AuthenticationManager authenticationManager;
    @Autowired
    FighterRepository fighterRepository;
    @Autowired
    RoleRepository roleRepository;
    @Autowired
    PasswordEncoder encoder;
    @Autowired
    TokenUtils tokenUtils;

    // *** METHODS ***
    // ***************
    @PostMapping("/login")
    public ResponseEntity<Map<String, Object>> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getUserName(), loginRequest.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String token = tokenUtils.generateToken(authentication);

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();
        List<String> roles = userDetails.getAuthorities().stream()
                .map(item -> item.getAuthority())
                .collect(Collectors.toList());

        Map<String, Object> response = new HashMap<>();

        response.put("token", token);
        response.put("id", userDetails.getId());
        response.put("username", userDetails.getUsername());
        response.put("email", userDetails.getEmail());
        response.put("roles", roles);

        return ResponseEntity.ok(response);

    }

    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@Valid @RequestBody RegisterRequest registerRequest) {
        if (fighterRepository.existsByUserName(registerRequest.getUserName())) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Username ya en uso!"));
        }

        if (fighterRepository.existsByEmail(registerRequest.getEmail())) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Email ya en uso!"));
        }

        // Create new user's account
        Fighter user = new Fighter(registerRequest.getUserName(),
                registerRequest.getEmail(),
                encoder.encode(registerRequest.getPassword()));

        Set<String> strRoles = registerRequest.getRoles();
        Set<Role> roles = new HashSet<>();

        if (strRoles == null) {
            Role userRole = roleRepository.findByRole(E_Role.USER)
                    .orElseThrow(() -> new RuntimeException("Error: Rol no encontrado."));
            roles.add(userRole);
        } else {
            strRoles.forEach(role -> {
                switch (role) {
                    case "admin":
                        Role adminRole = roleRepository.findByRole(E_Role.ADMIN)
                                .orElseThrow(() -> new RuntimeException("Error: Rol no encontrado."));
                        roles.add(adminRole);

                        break;

                    default:
                        Role userRole = roleRepository.findByRole(E_Role.USER)
                                .orElseThrow(() -> new RuntimeException("Error: Rol no encontrado."));
                        roles.add(userRole);
                }
            });
        }

        user.setRoles(roles);
        fighterRepository.save(user);

        return ResponseEntity.ok(new MessageResponse("Usuario registrado correctamente!"));
    }

}
