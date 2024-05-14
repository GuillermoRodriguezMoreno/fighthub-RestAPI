package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import iesvdm.org.fighthubrestapi.repository.FighterFollowRequestRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FighterFollowRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterFollowRequestRepository fighterFollowRequestRepository;

    // *** PROPS ***
    // *************
    private FighterFollowRequest fighterFollowRequest1;
    private FighterFollowRequest fighterFollowRequest2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.fighterFollowRequest1 = null;
        this.fighterFollowRequest2 = null;
        this.fighterFollowRequestRepository.save(fighterFollowRequest1);
        this.fighterFollowRequestRepository.save(fighterFollowRequest2);
    }

    // *** TEST ***
    // ************
    // Save fighterFollowRequest
    @Test
    @Order(1)
    public void saveFighterFollowRequest() {
        FighterFollowRequest fighterFollowRequest3 = null;
        FighterFollowRequest fighterFollowRequest4 = null;
        this.fighterFollowRequestRepository.save(fighterFollowRequest3);
        this.fighterFollowRequestRepository.save(fighterFollowRequest4);
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
    // Update fighterFollowRequest
    @Test
    @Order(5)
    public void updateFighterFollowRequest() {
        FighterFollowRequest fighterFollowRequest = this.fighterFollowRequestRepository.findById(fighterFollowRequest1.getId()).get();
        fighterFollowRequest.setStatus("accepted");
        this.fighterFollowRequestRepository.save(fighterFollowRequest);
        Assertions.assertEquals("accepted", this.fighterFollowRequestRepository.findById(fighterFollowRequest1.getId()).get().getStatus());
    }
    // Delete fighterFollowRequest
    @Test
    @Order(6)
    public void deleteFighterFollowRequest() {
        this.fighterFollowRequestRepository.delete(fighterFollowRequest1);
        Assertions.assertFalse(this.fighterFollowRequestRepository.findById(fighterFollowRequest1.getId()).isPresent());

    }
    // Delete all fighterFollowRequests
    @Test
    @Order(7)
    public void deleteAllFighterFollowRequests() {
        this.fighterFollowRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.fighterFollowRequestRepository.count());
    }
}
