package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Photo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhotoRepository extends JpaRepository<Photo, Long> {
}
