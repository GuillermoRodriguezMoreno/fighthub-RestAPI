package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.model.E_Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

    // *** METHODS ***
    // ***************
    Optional<Role> findByRole(E_Role role);
}
