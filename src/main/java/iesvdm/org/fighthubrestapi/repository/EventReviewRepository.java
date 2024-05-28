package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.entity_key.EventReviewId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventReviewRepository extends JpaRepository<EventReview, EventReviewId> {

    // *** CUSTOM METHODS ***
    // **********************
    // Find all event reviews by event id
    public Page<EventReview> findByEventId(Long eventId, Pageable pageable);
}
