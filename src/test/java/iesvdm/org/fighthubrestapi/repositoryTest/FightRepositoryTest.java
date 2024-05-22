package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.model.Round;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
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
public class FightRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private EventRepository eventRepository;

    // *** PROPS ***
    // *************
    // Fight
    private Fight fight1;
    private Fight fight2;
    // Event
    private Event event;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        // Event
        this.event = Event.builder()
                .id(0L)
                .name("Event 1")
                .address(new Address("Street 1", "City 1", "State 1",
                        "PostalCode 1", "Country 1"))
                .description("Description 1 of the event")
                .startDate(LocalDateTime.now().plusDays(1))
                .openDate(LocalDateTime.now().plusDays(1))
                .endDate(LocalDateTime.now().plusDays(2))
                .build();
        // Save event
        this.event = this.eventRepository.save(event);
        // Fight
        this.fight1 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(1))
                .fightOrder(1)
                .round(new Round(0,0))
                .event(event)
                .build();

        this.fight2 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(2))
                .fightOrder(2)
                .round(new Round(0,0))
                .event(event)
                .build();
        // Save fights
        this.fightRepository.save(fight1);
        this.fightRepository.save(fight2);
    }

    // *** TEST ***
    // ************
    // Save fight
    @Test
    @Order(1)
    public void saveFight() {
        Fight fight3 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(3))
                .fightOrder(3)
                .round(new Round(0,0))
                .event(event)
                .build();

        Fight fight4 = Fight.builder()
                .id(0L)
                .startTime(LocalDateTime.now().plusDays(4))
                .fightOrder(4)
                .round(new Round(0,0))
                .event(event)
                .build();
        // Save fights
        this.fightRepository.save(fight3);
        this.fightRepository.save(fight4);
        // Assertions
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
