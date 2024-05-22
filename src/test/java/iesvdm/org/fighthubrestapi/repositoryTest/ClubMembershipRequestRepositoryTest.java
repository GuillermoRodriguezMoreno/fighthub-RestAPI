package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.repository.ClubMembershipRequestRepository;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;
import java.util.HashSet;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class ClubMembershipRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestRepository clubMembershipRequestRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** PROPS ***
    // *************
    private ClubMembershipRequest clubMembershipRequest1;
    private ClubMembershipRequest clubMembershipRequest2;
    private Club club;
    private Fighter fighter;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        // Create club
        this.club = Club.builder()
                    .id(0L)
                    .name("Club")
                    .address(new Address("street", "city", "state",
                                    "postalCode", "country")
                    )
                    .phone("Phone")
                    .email("Email@example.com")
                    .registerDate(LocalDateTime.now())
                    .description("description of the club that is going to be created")
                    .build();

        // Create fighter
        this.fighter = Fighter.builder()
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
        // Save club and fighter
        this.clubRepository.save(club);
        this.fighterRepository.save(fighter);
        // Create clubMembershipRequests
        this.clubMembershipRequest1 = new ClubMembershipRequest(
                0L, E_Status.PENDING, LocalDateTime.now(), LocalDateTime.now(), club, fighter);
        this.clubMembershipRequest2 = new ClubMembershipRequest(
                0L, E_Status.REJECTED, LocalDateTime.now(), LocalDateTime.now(), club, fighter);
        this.clubMembershipRequestRepository.save(clubMembershipRequest1);
        this.clubMembershipRequestRepository.save(clubMembershipRequest2);
    }

    // *** TEST ***
    // ************
    // Save clubMembershipRequest
    @Test
    @Order(1)
    public void saveClubMembershipRequest() {
        ClubMembershipRequest clubMembershipRequest3 = new ClubMembershipRequest(
                0L, E_Status.PENDING, LocalDateTime.now(), LocalDateTime.now(), club, fighter);
        ClubMembershipRequest clubMembershipRequest4 = new ClubMembershipRequest(
                0L, E_Status.PENDING, LocalDateTime.now(), LocalDateTime.now(), club, fighter);
        this.clubMembershipRequestRepository.save(clubMembershipRequest3);
        this.clubMembershipRequestRepository.save(clubMembershipRequest4);
        Assertions.assertEquals(4, this.clubMembershipRequestRepository.count());
    }
    // Find clubMembershipRequest
    @Test
    @Order(2)
    public void findClubMembershipRequest() {
        Assertions.assertTrue(this.clubMembershipRequestRepository.findById(clubMembershipRequest1.getId()).isPresent());
    }
    // Count clubMembershipRequests
    @Test
    @Order(3)
    public void countClubMembershipRequests() {
        Assertions.assertEquals(2, this.clubMembershipRequestRepository.count());
    }
    // Find all clubMembershipRequests
    @Test
    @Order(4)
    public void findAllClubMembershipRequests() {
        Assertions.assertEquals(2, this.clubMembershipRequestRepository.findAll().size());
    }
    // Delete clubMembershipRequest
    @Test
    @Order(5)
    public void deleteClubMembershipRequest() {
        this.clubMembershipRequestRepository.deleteById(clubMembershipRequest1.getId());
        Assertions.assertEquals(1, this.clubMembershipRequestRepository.count());
    }
    // Delete all clubMembershipRequests
    @Test
    @Order(6)
    public void deleteAllClubMembershipRequests() {
        this.clubMembershipRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.clubMembershipRequestRepository.count());
    }
}
