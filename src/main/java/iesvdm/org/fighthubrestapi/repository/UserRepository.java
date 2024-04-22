package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
}
