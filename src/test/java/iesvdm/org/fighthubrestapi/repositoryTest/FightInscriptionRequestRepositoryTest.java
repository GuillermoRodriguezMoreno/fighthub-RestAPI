package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.*;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.model.Round;
import iesvdm.org.fighthubrestapi.repository.*;
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
public class FightInscriptionRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightInscriptionRequestRepository fightInscriptionRequestRepository;
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private EventRepository eventRepository;

    // *** PROPS ***
    // *************
    // FightInscriptionRequest
    private FightInscriptionRequest fighterInscriptionRequest1;
    private FightInscriptionRequest fighterInscriptionRequest2;
    // Club
    private Club club1;
    // Event
    private Event event1;
    // Fight
    private Fight fight1;
    private Fight fight2;
    // Fighter
    private Fighter fighter1;
    private Fighter fighter2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        // Club
        this.club1 = Club.builder()
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

        this.clubRepository.save(club1);
        // Event
        this.event1 = Event.builder()
                .id(0L)
                .name("Event 1")
                .address(new Address("Street 1", "City 1", "State 1",
                        "PostalCode 1", "Country 1"))
                .description("Description 1 of the event")
                .startDate(LocalDateTime.now().plusDays(1))
                .openDate(LocalDateTime.now().plusDays(1))
                .endDate(LocalDateTime.now().plusDays(2))
                .build();

        this.eventRepository.save(event1);
        // Fighter
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

        this.fighterRepository.save(fighter1);
        this.fighterRepository.save(fighter2);
        // Fight
        this.fight1 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(1))
                .fightOrder(1)
                .round(new Round(0,0))
                .event(event1)
                .build();

        this.fight2 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(2))
                .fightOrder(2)
                .round(new Round(0,0))
                .event(event1)
                .build();

        this.fightRepository.save(fight1);
        this.fightRepository.save(fight2);
        // FightInscriptionRequest
        this.fighterInscriptionRequest1 = FightInscriptionRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .message("Message 1 of the request")
                .requestDate(LocalDateTime.now())
                .club(club1)
                .fighter(fighter1)
                .fight(fight1)
                .event(event1)
                .build();

        this.fighterInscriptionRequest2 = FightInscriptionRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .message("Message 2 of the request")
                .requestDate(LocalDateTime.now())
                .club(club1)
                .fighter(fighter2)
                .fight(fight1)
                .event(event1)
                .build();
        // Save fighterInscriptionRequests
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest1);
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest2);
    }

    // *** TEST ***
    // ************
    // Save fighterInscriptionRequest
    @Test
    @Order(1)
    public void saveFighterInscriptionRequest() {
        FightInscriptionRequest fighterInscriptionRequest3 = FightInscriptionRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .message("Message 3 of the request")
                .requestDate(LocalDateTime.now())
                .club(club1)
                .fighter(fighter1)
                .fight(fight2)
                .event(event1)
                .build();

        FightInscriptionRequest fighterInscriptionRequest4 = FightInscriptionRequest.builder()
                .id(0L)
                .status(E_Status.PENDING)
                .message("Message 4 of the request")
                .requestDate(LocalDateTime.now())
                .club(club1)
                .fighter(fighter2)
                .fight(fight2)
                .event(event1)
                .build();
        // Save fighterInscriptionRequests
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest3);
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest4);
        // Check
        Assertions.assertEquals(4, this.fightInscriptionRequestRepository.count());
    }
    // Find fighterInscriptionRequest
    @Test
    @Order(2)
    public void findFighterInscriptionRequest() {
        Assertions.assertTrue(this.fightInscriptionRequestRepository.findById(fighterInscriptionRequest1.getId()).isPresent());
    }
    // Count fighterInscriptionRequests
    @Test
    @Order(3)
    public void countFighterInscriptionRequests() {
        Assertions.assertEquals(2, this.fightInscriptionRequestRepository.count());
    }
    // Find all fighterInscriptionRequests
    @Test
    @Order(4)
    public void findAllFighterInscriptionRequests() {
        Assertions.assertEquals(2, this.fightInscriptionRequestRepository.findAll().size());
    }
    // Delete fighterInscriptionRequest
    @Test
    @Order(5)
    public void deleteFighterInscriptionRequest() {
        this.fightInscriptionRequestRepository.delete(fighterInscriptionRequest1);
        Assertions.assertFalse(this.fightInscriptionRequestRepository.findById(fighterInscriptionRequest1.getId()).isPresent());
    }
    // Delete all fighterInscriptionRequests
    @Test
    @Order(6)
    public void deleteAllFighterInscriptionRequests() {
        this.fightInscriptionRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.fightInscriptionRequestRepository.count());
    }
}
