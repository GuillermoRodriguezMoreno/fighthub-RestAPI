package iesvdm.org.fighthubrestapi.repository;

import iesvdm.org.fighthubrestapi.entity.Category;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long>{

    // *** QUERY METHODS ***
    // *********************
    // Find by name
    public List<Category> findCategoriesByNameContainingIgnoreCaseOrderByName(String name);
}
