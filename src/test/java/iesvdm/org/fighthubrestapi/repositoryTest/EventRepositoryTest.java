package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
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
public class EventRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventRepository eventRepository;

    // *** PROPS ***
    // *************
    private Event event1;
    private Event event2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        // Build events
        this.event1 = Event.builder()
                .id(0L)
                .name("Event 1")
                .address(new Address("Street 1", "City 1", "state1",  "ZipCode 1", "Country 1"))
                .description("Description 1 of event 1")
                .startDate(LocalDateTime.now().plusDays(1))
                .openDate(LocalDateTime.now().plusDays(1))
                .endDate(LocalDateTime.now().plusDays(1))
                .build();

        this.event2 = Event.builder()
                .id(0L)
                .name("Event 2")
                .address(new Address("Street 2", "City 2", "state2",  "ZipCode 2", "Country 2"))
                .description("Description 2 of event 2")
                .startDate(LocalDateTime.now().plusDays(2))
                .openDate(LocalDateTime.now().plusDays(2))
                .endDate(LocalDateTime.now().plusDays(2))
                .build();
        // Save events
        this.eventRepository.save(event1);
        this.eventRepository.save(event2);
    }

    // *** TEST ***
    // ************
    // Save event
    @Test
    @Order(1)
    public void saveEvent() {
        // Build events
        Event event3 = Event.builder()
                .id(0L)
                .name("Event 3")
                .address(new Address("Street 3", "City 3", "state3",  "ZipCode 3", "Country 3"))
                .description("Description 3 of event 3")
                .startDate(LocalDateTime.now().plusDays(3))
                .openDate(LocalDateTime.now().plusDays(3))
                .endDate(LocalDateTime.now().plusDays(3))
                .build();

        Event event4 = Event.builder()
                .id(0L)
                .name("Event 4")
                .address(new Address("Street 4", "City 4", "state4",  "ZipCode 4", "Country 4"))
                .description("Description 4 of event 4")
                .startDate(LocalDateTime.now().plusDays(4))
                .openDate(LocalDateTime.now().plusDays(4))
                .endDate(LocalDateTime.now().plusDays(4))
                .build();
        // Save events
        this.eventRepository.save(event3);
        this.eventRepository.save(event4);
        // Assertions
        Assertions.assertEquals(4, this.eventRepository.count());
    }
    // Find event
    @Test
    @Order(2)
    public void findEvent() {
        Assertions.assertTrue(this.eventRepository.findById(event1.getId()).isPresent());
    }
    // Count events
    @Test
    @Order(3)
    public void countEvents() {
        Assertions.assertEquals(2, this.eventRepository.count());
    }
    // Find all events
    @Test
    @Order(4)
    public void findAllEvents() {
        Assertions.assertEquals(2, this.eventRepository.findAll().size());
    }
    // Delete event
    @Test
    @Order(5)
    public void deleteEvent() {
        this.eventRepository.deleteById(event1.getId());
        Assertions.assertFalse(this.eventRepository.findById(event1.getId()).isPresent());
    }
    // Delete all events
    @Test
    @Order(6)
    public void deleteAllEvents() {
        this.eventRepository.deleteAll();
        Assertions.assertEquals(0, this.eventRepository.count());
    }
}
