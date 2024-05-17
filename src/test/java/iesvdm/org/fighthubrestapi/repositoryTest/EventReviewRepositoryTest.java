package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class EventReviewRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewRepository eventReviewRepository;

    // *** PROPS ***
    // *************
    private EventReview eventReview1;
    private EventReview eventReview2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.eventReview1 = null;
        this.eventReview2 = null;
        this.eventReviewRepository.save(eventReview1);
        this.eventReviewRepository.save(eventReview2);
    }

    // *** TEST ***
    // ************
    // Save eventReview
    @Test
    @Order(1)
    public void saveEventReview() {
        EventReview eventReview3 = null;
        EventReview eventReview4 = null;
        this.eventReviewRepository.save(eventReview3);
        this.eventReviewRepository.save(eventReview4);
        Assertions.assertEquals(4, this.eventReviewRepository.count());
    }
    // Find eventReview
    @Test
    @Order(2)
    public void findEventReview() {
        //Assertions.assertTrue(this.eventReviewRepository.findById(eventReview1.getId()).isPresent());
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
        //this.eventReviewRepository.deleteById(eventReview1.getId());
        //Assertions.assertFalse(this.eventReviewRepository.findById(eventReview1.getId()).isPresent());
    }
    // Delete all eventReviews
    @Test
    @Order(6)
    public void deleteAllEventReviews() {
        this.eventReviewRepository.deleteAll();
        Assertions.assertEquals(0, this.eventReviewRepository.count());
    }
}
