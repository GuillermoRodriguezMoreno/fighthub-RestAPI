package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FighterFollowRequestRepository extends JpaRepository<FighterFollowRequest, Long> {

    // *** CUSTOM MEHTODS ***
    // **********************
    // Find all fighterFollowRequests by receiver id
    public Page<FighterFollowRequest> findByReceiver_Id(Long receiverId, Pageable pageable);
}
