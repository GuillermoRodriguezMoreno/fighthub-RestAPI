package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashSet;
import java.util.Optional;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class ClubRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubRepository clubRepository;

    // *** PROPS ***
    // *************
    private Club club1;
    private Club club2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.club1 = null;
        this.club2 = null;
        this.clubRepository.save(club1);
        this.clubRepository.save(club2);
    }

    // *** TEST ***
    // ************
    // Save club
    @Test
    @Order(1)
    public void saveClub() {
        Club club3 = null;
        Club club4 = null;
        this.clubRepository.save(club3);
        this.clubRepository.save(club4);
        Assertions.assertEquals(4, this.clubRepository.count());
    }
    // Find club
    @Test
    @Order(2)
    public void findClub() {
        Assertions.assertTrue(this.clubRepository.findById(club1.getId()).isPresent());
    }
    // Count clubs
    @Test
    @Order(3)
    public void countClubs() {
        Assertions.assertEquals(2, this.clubRepository.count());
    }
    // Find all clubs
    @Test
    @Order(4)
    public void findAllClubs() {
        Assertions.assertEquals(2, this.clubRepository.findAll().size());
    }
    // Update club
    @Test
    @Order(5)
    public void updateClub() {
        Club club = this.clubRepository.findById(club1.getId()).get();
        club.setName("ClubPrueba");
        this.clubRepository.save(club);
        Assertions.assertEquals("ClubPrueba", this.clubRepository.findById(club1.getId()).get().getName());
    }
    // Delete club
    @Test
    @Order(6)
    public void deleteClub() {
        this.clubRepository.deleteById(club1.getId());
        Assertions.assertFalse(this.clubRepository.findById(club1.getId()).isPresent());
    }
    // Delete all clubs
    @Test
    @Order(7)
    public void deleteAllClubs() {
        this.clubRepository.deleteAll();
        Assertions.assertEquals(0, this.clubRepository.count());
    }
}
