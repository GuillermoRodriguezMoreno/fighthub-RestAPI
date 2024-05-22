package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.repository.FighterFollowRequestRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.time.LocalDateTime;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FighterFollowRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterFollowRequestRepository fighterFollowRequestRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** PROPS ***
    // *************
    // FighterFollowRequest
    private FighterFollowRequest fighterFollowRequest1;
    private FighterFollowRequest fighterFollowRequest2;
    // Fighter
    private Fighter fighter1;
    private Fighter fighter2;
    private Fighter fighter3;

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
        // Save fighters
        this.fighterRepository.save(fighter1);
        this.fighterRepository.save(fighter2);
        this.fighterRepository.save(fighter3);
        // FighterFollowRequest
        this.fighterFollowRequest1 = FighterFollowRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .responseDate(LocalDateTime.now())
                .requestDate(LocalDateTime.now())
                .sender(fighter1)
                .receiver(fighter2)
                .build();

        this.fighterFollowRequest2 = FighterFollowRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .responseDate(LocalDateTime.now())
                .requestDate(LocalDateTime.now())
                .sender(fighter1)
                .receiver(fighter3)
                .build();
        // Save fighterFollowRequest
        this.fighterFollowRequestRepository.save(fighterFollowRequest1);
        this.fighterFollowRequestRepository.save(fighterFollowRequest2);
    }

    // *** TEST ***
    // ************
    // Save fighterFollowRequest
    @Test
    @Order(1)
    public void saveFighterFollowRequest() {
        FighterFollowRequest fighterFollowRequest3 = FighterFollowRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .responseDate(LocalDateTime.now())
                .requestDate(LocalDateTime.now())
                .sender(fighter2)
                .receiver(fighter1)
                .build();

        FighterFollowRequest fighterFollowRequest4 = FighterFollowRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .responseDate(LocalDateTime.now())
                .requestDate(LocalDateTime.now())
                .sender(fighter2)
                .receiver(fighter3)
                .build();
        // Save fighterFollowRequest
        this.fighterFollowRequestRepository.save(fighterFollowRequest3);
        this.fighterFollowRequestRepository.save(fighterFollowRequest4);
        // Assertions
        Assertions.assertEquals(4, this.fighterFollowRequestRepository.count());
    }
    // Find fighterFollowRequest
    @Test
    @Order(2)
    public void findFighterFollowRequest() {
        Assertions.assertTrue(this.fighterFollowRequestRepository.findById(fighterFollowRequest1.getId()).isPresent());
    }
    // Count fighterFollowRequests
    @Test
    @Order(3)
    public void countFighterFollowRequests() {
        Assertions.assertEquals(2, this.fighterFollowRequestRepository.count());
    }
    // Find all fighterFollowRequests
    @Test
    @Order(4)
    public void findAllFighterFollowRequests() {
        Assertions.assertEquals(2, this.fighterFollowRequestRepository.findAll().size());
    }
    // Delete fighterFollowRequest
    @Test
    @Order(5)
    public void deleteFighterFollowRequest() {
        this.fighterFollowRequestRepository.delete(fighterFollowRequest1);
        Assertions.assertFalse(this.fighterFollowRequestRepository.findById(fighterFollowRequest1.getId()).isPresent());

    }
    // Delete all fighterFollowRequests
    @Test
    @Order(6)
    public void deleteAllFighterFollowRequests() {
        this.fighterFollowRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.fighterFollowRequestRepository.count());
    }
}
