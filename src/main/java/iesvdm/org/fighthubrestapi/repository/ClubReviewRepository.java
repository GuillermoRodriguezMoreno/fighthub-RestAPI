package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClubReviewRepository extends JpaRepository<ClubReview, ClubReviewId> {

    // *** CUSTOM METHODS ***
    // **********************
    // Find all club reviews by club id
    public Page<ClubReview> findByClubId(Long clubId, Pageable pageable);
}
