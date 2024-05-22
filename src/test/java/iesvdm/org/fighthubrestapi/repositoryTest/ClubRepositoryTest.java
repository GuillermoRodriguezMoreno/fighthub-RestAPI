package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;
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
        this.club1 = Club.builder()
                .id(0L)
                .name("Club1")
                .address(new Address("Street1", "City1", "State1",
                        "PostalCode1", "Country1"))
                .email("ejemplo1@example.com")
                .registerDate(LocalDateTime.now())
                .description("Description of the club that is going to be created")
                .build();

        this.club2 = Club.builder()
                .id(0L)
                .name("Club2")
                .address(new Address("Street2", "City2", "State2",
                        "PostalCode2", "Country2"))
                .email("ejemplo2@example.com")
                .registerDate(LocalDateTime.now())
                .description("Description of the club that is going to be created")
                .build();

        this.clubRepository.save(club1);
        this.clubRepository.save(club2);
    }

    // *** TEST ***
    // ************
    // Save club
    @Test
    @Order(1)
    public void saveClub() {
        // Create clubs
        Club club3 = Club.builder()
                .id(0L)
                .name("Club3")
                .address(new Address("Street3", "City3", "State3",
                        "PostalCode3", "Country3"))
                .email("ejemplo3@example")
                .registerDate(LocalDateTime.now())
                .description("Description of the club that is going to be created")
                .build();

        Club club4 = Club.builder()
                .id(0L)
                .name("Club4")
                .address(new Address("Street4", "City4", "State4",
                        "PostalCode4", "Country4"))
                .email("ejemplo4@example")
                .registerDate(LocalDateTime.now())
                .description("Description of the club that is going to be created")
                .build();
        // Save clubs
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
    // Delete club
    @Test
    @Order(5)
    public void deleteClub() {
        this.clubRepository.deleteById(club1.getId());
        Assertions.assertFalse(this.clubRepository.findById(club1.getId()).isPresent());
    }
    // Delete all clubs
    @Test
    @Order(6)
    public void deleteAllClubs() {
        this.clubRepository.deleteAll();
        Assertions.assertEquals(0, this.clubRepository.count());
    }
}
