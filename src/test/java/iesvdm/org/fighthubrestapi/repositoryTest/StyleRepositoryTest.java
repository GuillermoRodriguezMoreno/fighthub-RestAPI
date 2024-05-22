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
        this.boxing = Style.builder()
                .id(0L)
                .name("Boxing")
                .build();

        this.kickboxing = Style.builder()
                .id(0L)
                .name("Kickboxing")
                .build();
        // Save styles
        this.styleRepository.save(boxing);
        this.styleRepository.save(kickboxing);
    }

    // *** TEST ***
    // ************
    // Save style
    @Test
    @Order(1)
    public void saveStyle() {
        Style style1 = Style.builder()
                .id(0L)
                .name("Style1")
                .build();

        Style style2 = Style.builder()
                .id(0L)
                .name("Style2")
                .build();
        // Save styles
        this.styleRepository.save(style1);
        this.styleRepository.save(style2);
        // Assertions
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
    // Delete style
    @Test
    @Order(5)
    public void deleteStyle(){
        this.styleRepository.deleteById(boxing.getId());
        Assertions.assertFalse(this.styleRepository.findById(boxing.getId()).isPresent());
    }
    // Delete all styles
    @Test
    @Order(6)
    public void deleteAllStyles(){
        this.styleRepository.deleteAll();
        Assertions.assertEquals(0, this.styleRepository.count());
    }
}
