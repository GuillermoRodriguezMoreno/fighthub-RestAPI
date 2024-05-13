package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Style;
import iesvdm.org.fighthubrestapi.repository.StyleRepository;
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
public class StyleRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private StyleRepository styleRepository;

    // *** PROPS ***
    // *************
    private Style boxing;
    private Style kickboxing;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        boxing = new Style(0, "Boxing", new HashSet<>(), new HashSet<>());
        kickboxing = new Style(0, "Kickboxing", new HashSet<>(), new HashSet<>());
        this.styleRepository.save(boxing);
        this.styleRepository.save(kickboxing);
    }

    // *** TEST ***
    // ************
    // Save style
    @Test
    @Order(1)
    public void saveStyle() {
        Style style1 = new Style(0, "Style1", new HashSet<>(), new HashSet<>());
        Style style2 = new Style(0, "Style2", new HashSet<>(), new HashSet<>());
        this.styleRepository.save(style1);
        this.styleRepository.save(style2);
        Assertions.assertEquals(4, this.styleRepository.count());
    }
    // Find style
    @Test
    @Order(2)
    public void findStyle(){
        Optional<Style> optStyle = this.styleRepository.findById(boxing.getId());
        Assertions.assertTrue(optStyle.isPresent());
    }
    // Count style
    @Test
    @Order(3)
    public void countStyle(){
        long count = this.styleRepository.count();
        Assertions.assertEquals(2, count);
    }
    // Find all styles
    @Test
    @Order(4)
    public void findAllStyles(){
        List<Style> styleList = this.styleRepository.findAll();
        long count = styleList.size();
        long expCount = this.styleRepository.count();
        Assertions.assertEquals(expCount, count);
    }
    // Update style
    @Test
    @Order(5)
    public void updateStyle(){
        Optional<Style> styleToUpdate = this.styleRepository.findById(boxing.getId());
        Style style = styleToUpdate.get();
        style.setName("BJJ");
        this.styleRepository.save(style);
        Assertions.assertEquals("BJJ", style.getName());
    }
    // Delete style
    @Test
    @Order(6)
    public void deleteStyle(){
        this.styleRepository.deleteById(boxing.getId());
        Assertions.assertFalse(this.styleRepository.findById(boxing.getId()).isPresent());
    }
    // Delete all styles
    @Test
    @Order(7)
    public void deleteAllStyles(){
        this.styleRepository.deleteAll();
        Assertions.assertEquals(0, this.styleRepository.count());
    }
}
