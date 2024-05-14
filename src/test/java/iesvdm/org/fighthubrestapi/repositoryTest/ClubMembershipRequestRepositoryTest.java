package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.repository.ClubMembershipRequestRepository;
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
public class ClubMembershipRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestRepository clubMembershipRequestRepository;

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
        this.clubMembershipRequest1 = new ClubMembershipRequest(
                0L, "APPROVED", LocalDateTime.now(), LocalDateTime.now(), null, null);
        this.clubMembershipRequest2 = new ClubMembershipRequest(
                0L, "REJECTED", LocalDateTime.now(), LocalDateTime.now(), null, null);
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
                0L, "PENDING", LocalDateTime.now(), LocalDateTime.now(), null, null);
        ClubMembershipRequest clubMembershipRequest4 = new ClubMembershipRequest(
                0L, "PENDING", LocalDateTime.now(), LocalDateTime.now(), null, null);
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
    // Update clubMembershipRequest
    @Test
    @Order(5)
    public void updateClubMembershipRequest() {
        ClubMembershipRequest clubMembershipRequest = this.clubMembershipRequestRepository.findById(clubMembershipRequest1.getId()).get();
        clubMembershipRequest.setStatus("REJECTED");
        this.clubMembershipRequestRepository.save(clubMembershipRequest);
        Assertions.assertEquals("REJECTED", this.clubMembershipRequestRepository.findById(clubMembershipRequest1.getId()).get().getStatus());
    }
    // Delete clubMembershipRequest
    @Test
    @Order(6)
    public void deleteClubMembershipRequest() {
        this.clubMembershipRequestRepository.deleteById(clubMembershipRequest1.getId());
        Assertions.assertEquals(1, this.clubMembershipRequestRepository.count());
    }
    // Delete all clubMembershipRequests
    @Test
    @Order(7)
    public void deleteAllClubMembershipRequests() {
        this.clubMembershipRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.clubMembershipRequestRepository.count());
    }
}
