package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    // *** METHODS ***
    // ***************
    Optional<User> findByUserName(String userName);
    Optional<User> findByEmail(String username);
    Boolean existsByUserName(String username);
    Boolean existsByEmail(String email);
}
