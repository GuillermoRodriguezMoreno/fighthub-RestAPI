package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Club;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClubRepository extends JpaRepository<Club, Long> {
}
