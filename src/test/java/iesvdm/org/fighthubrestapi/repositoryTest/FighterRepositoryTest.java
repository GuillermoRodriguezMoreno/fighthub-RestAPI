package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FighterRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterRepository fighterRepository;

    // *** PROPS ***
    // *************
    private Fighter fighter1;
    private Fighter fighter2;
    private Fighter fighter3;
    private Fighter fighter4;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        // Fighters
        this.fighter1 = Fighter.builder()
                .id(0L)
                .userName("userName")
                .birthDate(LocalDateTime.now())
                .email("email@example.com")
                .password("123456678")
                .registerDate(LocalDateTime.now())
                .deleted(false)
                .name("nombreDePueba")
                .active(true)
                .weight(70.0)
                .height(180)
                .biography("biography of the fighter that is going to be created")
                .build();

        this.fighter2 = Fighter.builder()
                .id(0L)
                .userName("userName2")
                .birthDate(LocalDateTime.now())
                .email("prueba@email.es")
                .password("123456678")
                .registerDate(LocalDateTime.now())
                .deleted(false)
                .name("nombreDePueba2")
                .active(true)
                .weight(70.0)
                .height(180)
                .biography("biography of the fighter that is going to be created")
                .build();

        // Save fighters
        this.fighterRepository.save(fighter1);
        this.fighterRepository.save(fighter2);
    }

    // *** TEST ***
    // ************
    // Save fighter
    @Test
    @Order(1)
    public void saveFighter() {
        this.fighter3 = Fighter.builder()
                .id(0L)
                .userName("userName3")
                .birthDate(LocalDateTime.now())
                .email("prueba3@email.es")
                .password("123456678")
                .registerDate(LocalDateTime.now())
                .deleted(false)
                .name("nombreDePueba3")
                .active(true)
                .weight(70.0)
                .height(180)
                .biography("biography of the fighter that is going to be created")
                .build();

        this.fighter4 = Fighter.builder()
                .id(0L)
                .userName("userName4")
                .birthDate(LocalDateTime.now())
                .email("prueba4@email.es")
                .password("123456678")
                .registerDate(LocalDateTime.now())
                .deleted(false)
                .name("nombreDePueba4")
                .active(true)
                .weight(70.0)
                .height(180)
                .biography("biography of the fighter that is going to be created")
                .build();
        // Save fighters
        this.fighterRepository.save(fighter3);
        this.fighterRepository.save(fighter4);
        // Assertions
        Assertions.assertEquals(4, this.fighterRepository.count());
    }
    // Find fighter
    @Test
    @Order(2)
    public void findFighter() {
        Assertions.assertTrue(this.fighterRepository.findById(fighter1.getId()).isPresent());
    }
    // Count fighters
    @Test
    @Order(3)
    public void countFighters() {
        Assertions.assertEquals(2, this.fighterRepository.count());
    }
    // Find all fighters
    @Test
    @Order(4)
    public void findAllFighters() {
        Assertions.assertEquals(2, this.fighterRepository.findAll().size());
    }
    // Delete fighter
    @Test
    @Order(5)
    public void deleteFighter() {
        this.fighterRepository.delete(fighter1);
        Assertions.assertFalse(this.fighterRepository.findById(fighter1.getId()).isPresent());
    }
    // Delete all fighters
    @Test
    @Order(6)
    public void deleteAllFighters() {
        this.fighterRepository.deleteAll();
        Assertions.assertEquals(0, this.fighterRepository.count());
    }
}
