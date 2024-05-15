package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FighterRepository extends JpaRepository<Fighter, Long> {

    // *** METHODS ***
    // ***************
    Optional<Fighter> findByUserName(String userName);
    Optional<Fighter> findByEmail(String username);
    Boolean existsByUserName(String username);
    Boolean existsByEmail(String email);
}
