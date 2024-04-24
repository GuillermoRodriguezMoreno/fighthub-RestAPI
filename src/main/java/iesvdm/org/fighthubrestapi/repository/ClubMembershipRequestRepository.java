package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClubMembershipRequestRepository extends JpaRepository<ClubMembershipRequest, Long> {
}
