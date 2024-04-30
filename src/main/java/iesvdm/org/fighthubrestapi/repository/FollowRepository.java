package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Follow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FollowRepository extends JpaRepository<Follow, Long> {
}