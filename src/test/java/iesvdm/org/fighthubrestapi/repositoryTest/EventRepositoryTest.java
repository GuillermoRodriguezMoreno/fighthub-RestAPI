package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

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
        this.event1 = null;
        this.event2 = null;
        this.eventRepository.save(event1);
        this.eventRepository.save(event2);
    }

    // *** TEST ***
    // ************
    // Save event
    @Test
    @Order(1)
    public void saveEvent() {
        Event event3 = null;
        Event event4 = null;
        this.eventRepository.save(event3);
        this.eventRepository.save(event4);
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
