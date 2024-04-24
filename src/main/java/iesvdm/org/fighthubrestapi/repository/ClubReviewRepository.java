package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClubReviewRepository extends JpaRepository<ClubReview, Long> {
}
