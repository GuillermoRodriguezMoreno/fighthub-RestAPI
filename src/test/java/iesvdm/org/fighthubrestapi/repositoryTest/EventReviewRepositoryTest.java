package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity_key.EventReviewId;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
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
public class EventReviewRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewRepository eventReviewRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private EventRepository eventRepository;

    // *** PROPS ***
    // *************
    // Event Reviews
    private EventReview eventReview1;
    private EventReview eventReview2;
    // Fighters
    private Fighter fighter1;
    private Fighter fighter2;
    // Events
    private Event event1;
    private Event event2;

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

        fighter2 = Fighter.builder()
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
        // Events
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

        this.event2 = Event.builder()
                .id(0L)
                .name("Event 2")
                .address(new Address("Street 2", "City 2", "State 2",
                        "PostalCode 2", "Country 2"))
                .description("Description 2 of the event")
                .startDate(LocalDateTime.now().plusDays(3))
                .openDate(LocalDateTime.now().plusDays(3))
                .endDate(LocalDateTime.now().plusDays(4))
                .build();
        // Save events
        this.eventRepository.save(event1);
        this.eventRepository.save(event2);
        // Event reviews
        this.eventReview1 = EventReview.builder()
                .id(new EventReviewId(fighter1.getId(), event1.getId()))
                .content("Content 1 of the event review")
                .rating(5)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter1)
                .event(event1)
                .build();

        this.eventReview2 = EventReview.builder()
                .id(new EventReviewId(fighter1.getId(), event2.getId()))
                .content("Content 2 of the event review")
                .rating(4)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter1)
                .event(event2)
                .build();
        // Save event reviews
        this.eventReviewRepository.save(eventReview1);
        this.eventReviewRepository.save(eventReview2);
    }

    // *** TEST ***
    // ************
    // Save eventReview
    @Test
    @Order(1)
    public void saveEventReview() {
        EventReview eventReview3 = EventReview.builder()
                .id(new EventReviewId(fighter2.getId(), event1.getId()))
                .content("Content 3 of the event review")
                .rating(3)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter2)
                .event(event1)
                .build();

        EventReview eventReview4 = EventReview.builder()
                .id(new EventReviewId(fighter2.getId(), event2.getId()))
                .content("Content 4 of the event review")
                .rating(2)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter2)
                .event(event2)
                .build();

        this.eventReviewRepository.save(eventReview3);
        this.eventReviewRepository.save(eventReview4);

        Assertions.assertEquals(4, this.eventReviewRepository.count());
    }
    // Find eventReview
    @Test
    @Order(2)
    public void findEventReview() {
        Assertions.assertTrue(this.eventReviewRepository.findById(eventReview1.getId()).isPresent());
    }
    // Count eventReviews
    @Test
    @Order(3)
    public void countEventReviews() {
        Assertions.assertEquals(2, this.eventReviewRepository.count());
    }
    // Find all eventReviews
    @Test
    @Order(4)
    public void findAllEventReviews() {
        Assertions.assertEquals(2, this.eventReviewRepository.findAll().size());
    }
    // Delete eventReview
    @Test
    @Order(5)
    public void deleteEventReview() {
        this.eventReviewRepository.deleteById(eventReview1.getId());
        Assertions.assertFalse(this.eventReviewRepository.findById(eventReview1.getId()).isPresent());
    }
    // Delete all eventReviews
    @Test
    @Order(6)
    public void deleteAllEventReviews() {
        this.eventReviewRepository.deleteAll();
        Assertions.assertEquals(0, this.eventReviewRepository.count());
    }
}
