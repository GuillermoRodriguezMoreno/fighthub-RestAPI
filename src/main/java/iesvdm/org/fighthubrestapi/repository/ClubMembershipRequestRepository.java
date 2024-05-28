package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClubMembershipRequestRepository extends JpaRepository<ClubMembershipRequest, Long> {

    // *** QUERY METHODS ***
    // *********************
    // Find by club id
    public Page<ClubMembershipRequest> findClubMembershipRequestsByClubId(Long clubId, Pageable pageable);
}
