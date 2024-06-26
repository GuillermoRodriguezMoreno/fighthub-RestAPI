package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Fight;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FightRepository extends JpaRepository<Fight, Long> {
}
