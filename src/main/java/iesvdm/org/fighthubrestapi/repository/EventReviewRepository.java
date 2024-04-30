package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EventReviewRepository extends JpaRepository<EventReview, Long> {
}