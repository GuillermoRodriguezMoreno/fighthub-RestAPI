package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.repository.ClubReviewRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class ClubReviewRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewRepository clubReviewRepository;

    // *** PROPS ***
    // *************
    private ClubReview clubReview1;
    private ClubReview clubReview2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.clubReview1 = null;
        this.clubReview2 = null;
        this.clubReviewRepository.save(clubReview1);
        this.clubReviewRepository.save(clubReview2);
    }

    // *** TEST ***
    // ************
    // Save clubReview
    @Test
    @Order(1)
    public void saveClubReview() {
        ClubReview clubReview3 = null;
        ClubReview clubReview4 = null;
        this.clubReviewRepository.save(clubReview3);
        this.clubReviewRepository.save(clubReview4);
        Assertions.assertEquals(4, this.clubReviewRepository.count());
    }
    // Find clubReview
    @Test
    @Order(2)
    public void findClubReview() {
        Assertions.assertTrue(this.clubReviewRepository.findById(clubReview1.getId()).isPresent());
    }
    // Count clubReviews
    @Test
    @Order(3)
    public void countClubReviews() {
        Assertions.assertEquals(2, this.clubReviewRepository.count());
    }
    // Find all clubReviews
    @Test
    @Order(4)
    public void findAllClubReviews() {
        Assertions.assertEquals(2, this.clubReviewRepository.findAll().size());
    }
    // Update clubReview
    @Test
    @Order(5)
    public void updateClubReview() {
        ClubReview clubReview = this.clubReviewRepository.findById(clubReview1.getId()).get();
        clubReview.setContent("Updated prueba");
        this.clubReviewRepository.save(clubReview);
        Assertions.assertEquals("Updated prueba", this.clubReviewRepository.findById(clubReview1.getId()).get().getContent());
    }
    // Delete clubReview
    @Test
    @Order(6)
    public void deleteClubReview() {
        this.clubReviewRepository.deleteById(clubReview1.getId());
        Assertions.assertFalse(this.clubReviewRepository.findById(clubReview1.getId()).isPresent());
    }
    // Delete all clubReviews
    @Test
    @Order(7)
    public void deleteAllClubReviews() {
        this.clubReviewRepository.deleteAll();
        Assertions.assertEquals(0, this.clubReviewRepository.count());
    }
}
