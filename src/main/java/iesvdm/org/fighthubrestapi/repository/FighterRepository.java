package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface FighterRepository extends JpaRepository<Fighter, Long> {

    // *** SECURITY METHODS ***
    // ************************
    //Security
    Optional<Fighter> findByUserName(String userName);
    Optional<Fighter> findByEmail(String email);
    Optional<Fighter> findByConfirmationToken(String confirmationToken);
    Boolean existsByUserName(String username);
    Boolean existsByEmail(String email);

    // *** CUSTOM METHODS ***
    // **********************
    // Find by name
    Page<Fighter> findByNameContainingIgnoreCaseOrderByNameAsc(String name, Pageable pageable);
    // Find by username
    Page<Fighter> findByUserNameContainingIgnoreCaseOrderByNameAsc(String name, Pageable pageable);

}
