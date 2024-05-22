package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.model.Address;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.ClubReviewRepository;
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
public class ClubReviewRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewRepository clubReviewRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private ClubRepository clubRepository;

    // *** PROPS ***
    // *************
    private Fighter fighter;
    private Fighter fighter2;
    private Club club;
    private Club club2;
    private ClubReview clubReview1;
    private ClubReview clubReview2;

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

        this.club2 = Club.builder()
                .id(0L)
                .name("Club2")
                .address(new Address("street2", "city2", "state2",
                        "postalCode2", "country2")
                )
                .phone("Phone2")
                .email("example2@prueba.com")
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
        // Save club and fighter
        this.clubRepository.save(club);
        this.clubRepository.save(club2);
        this.fighterRepository.save(fighter);
        this.fighterRepository.save(fighter2);
        // Create clubReview
        this.clubReview1 = ClubReview.builder()
                .id(new ClubReviewId(fighter.getId(), club.getId()))
                .content("Description1")
                .rating(5)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter)
                .club(club)
                .build();

        this.clubReview2 = ClubReview.builder()
                .id(new ClubReviewId(fighter.getId(), club2.getId()))
                .content("Description2")
                .rating(4)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter)
                .club(club2)
                .build();
        // Save clubReviews
        this.clubReviewRepository.save(clubReview1);
        this.clubReviewRepository.save(clubReview2);
    }

    // *** TEST ***
    // ************
    // Save clubReview
    @Test
    @Order(1)
    public void saveClubReview() {
        // Create clubReviews
        ClubReview clubReview3 = ClubReview.builder()
                .id(new ClubReviewId(fighter2.getId(), club.getId()))
                .content("Description3")
                .rating(3)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter2)
                .club(club)
                .build();

        ClubReview clubReview4 = ClubReview.builder()
                .id(new ClubReviewId(fighter2.getId(), club2.getId()))
                .content("Description4")
                .rating(2)
                .reviewDate(LocalDateTime.now())
                .fighter(fighter2)
                .club(club2)
                .build();
        // Save clubReviews
        this.clubReviewRepository.save(clubReview3);
        this.clubReviewRepository.save(clubReview4);
        // Check
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
    // Delete clubReview
    @Test
    @Order(5)
    public void deleteClubReview() {
        this.clubReviewRepository.deleteById(clubReview1.getId());
        Assertions.assertFalse(this.clubReviewRepository.findById(clubReview1.getId()).isPresent());
    }
    // Delete all clubReviews
    @Test
    @Order(6)
    public void deleteAllClubReviews() {
        this.clubReviewRepository.deleteAll();
        Assertions.assertEquals(0, this.clubReviewRepository.count());
    }
}
