package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FighterFollowRequestRepository extends JpaRepository<FighterFollowRequest, Long> {
}
