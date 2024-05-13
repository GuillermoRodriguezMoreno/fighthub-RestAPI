package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.repository.CategoryRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class CategoryRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private CategoryRepository categoryRepository;

    // *** PROPS ***
    // *************
    private Category professional;
    private Category amateur;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.amateur = new Category(0, "Amateur", new HashSet<>(), new HashSet<>());
        this.professional = new Category(0, "Professional", new HashSet<>(), new HashSet<>());
        this.categoryRepository.save(amateur);
        this.categoryRepository.save(professional);
    }

    // *** TEST ***
    // ************
    // Save category
    @Test
    @Order(1)
    public void saveCategory() {
        Category cat1 = new Category(0, "Cat1", new HashSet<>(), new HashSet<>());
        Category cat2 = new Category(0, "Cat2", new HashSet<>(), new HashSet<>());
        this.categoryRepository.save(cat1);
        this.categoryRepository.save(cat2);
    }
    // Find category
    @Test
    @Order(2)
    public void findCategory() {
        Optional<Category> catOpt = this.categoryRepository.findById(amateur.getId());
        Assertions.assertTrue(catOpt.isPresent());
    }
    // Count categories
    @Test
    @Order(3)
    public void countCategories() {
        long count = this.categoryRepository.count();
        Assertions.assertEquals(2, count);
    }
    // Find all categories
    @Test
    @Order(4)
    public void findAllCategories() {
        List<Category> catList = this.categoryRepository.findAll();
        long count = catList.size();
        long expCount = this.categoryRepository.count();
        Assertions.assertEquals(expCount, count);
    }
    // Update category
    @Test
    @Order(5)
    public void updateCategory() {
        Optional<Category> catToUpdate = this.categoryRepository.findById(amateur.getId());
        Category cat = catToUpdate.get();
        cat.setName("Amateur 2");
        this.categoryRepository.save(cat);
        Assertions.assertEquals("Amateur 2", amateur.getName());
    }
    // Delete category
    @Test
    @Order(6)
    public void deleteCategory() {
        this.categoryRepository.deleteById(professional.getId());
        Assertions.assertFalse(this.categoryRepository.findById(professional.getId()).isPresent());
    }
    // Delete all categories
    @Test
    @Order(7)
    public void deleteAllCategories() {
        this.categoryRepository.deleteAll();
        Assertions.assertEquals(0, this.categoryRepository.count());
    }
}
