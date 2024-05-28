package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FollowRepository extends JpaRepository<Follow, FollowId> {

    // *** CUSTOM METHODS ***
    // **********************
    // Find all follows by follower id (join)
    public Page<Follow> findByFollowerFighter_Id(Long followerId, Pageable pageable);
}
