package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FightRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightRepository fightRepository;

    // *** PROPS ***
    // *************
    private Fight fight1;
    private Fight fight2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.fight1 = null;
        this.fight2 = null;
        this.fightRepository.save(fight1);
        this.fightRepository.save(fight2);
    }

    // *** TEST ***
    // ************
    // Save fight
    @Test
    @Order(1)
    public void saveFight() {
        Fight fight3 = null;
        Fight fight4 = null;
        this.fightRepository.save(fight3);
        this.fightRepository.save(fight4);
        Assertions.assertEquals(4, this.fightRepository.count());
    }
    // Find fight
    @Test
    @Order(2)
    public void findFight() {
        Assertions.assertTrue(this.fightRepository.findById(fight1.getId()).isPresent());
    }
    // Count fights
    @Test
    @Order(3)
    public void countFights() {
        Assertions.assertEquals(2, this.fightRepository.count());
    }
    // Find all fights
    @Test
    @Order(4)
    public void findAllFights() {
        Assertions.assertEquals(2, this.fightRepository.findAll().size());
    }
    // Delete fight
    @Test
    @Order(5)
    public void deleteFight() {
        this.fightRepository.deleteById(fight1.getId());
        Assertions.assertFalse(this.fightRepository.findById(fight1.getId()).isPresent());
    }
    // Delete all fights
    @Test
    @Order(6)
    public void deleteAllFights() {
        this.fightRepository.deleteAll();
        Assertions.assertEquals(0, this.fightRepository.count());
    }
}
