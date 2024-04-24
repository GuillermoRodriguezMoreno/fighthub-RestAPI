package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FightInscriptionRequestRepository extends JpaRepository<FightInscriptionRequest, Long> {
}
