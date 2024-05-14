package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.repository.FightInscriptionRequestRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FighterInscriptionRequestRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightInscriptionRequestRepository fightInscriptionRequestRepository;

    // *** PROPS ***
    // *************
    private FightInscriptionRequest fighterInscriptionRequest1;
    private FightInscriptionRequest fighterInscriptionRequest2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.fighterInscriptionRequest1 = null;
        this.fighterInscriptionRequest2 = null;
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest1);
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest2);
    }

    // *** TEST ***
    // ************
    // Save fighterInscriptionRequest
    @Test
    @Order(1)
    public void saveFighterInscriptionRequest() {
        FightInscriptionRequest fighterInscriptionRequest3 = null;
        FightInscriptionRequest fighterInscriptionRequest4 = null;
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest3);
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest4);
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
    // Update fighterInscriptionRequest
    @Test
    @Order(5)
    public void updateFighterInscriptionRequest() {
        FightInscriptionRequest fighterInscriptionRequest = this.fightInscriptionRequestRepository.findById(fighterInscriptionRequest1.getId()).get();
        fighterInscriptionRequest.setStatus("accepted");
        this.fightInscriptionRequestRepository.save(fighterInscriptionRequest);
        Assertions.assertEquals("accepted", this.fightInscriptionRequestRepository.findById(fighterInscriptionRequest1.getId()).get().getStatus());
    }
    // Delete fighterInscriptionRequest
    @Test
    @Order(6)
    public void deleteFighterInscriptionRequest() {
        this.fightInscriptionRequestRepository.delete(fighterInscriptionRequest1);
        Assertions.assertFalse(this.fightInscriptionRequestRepository.findById(fighterInscriptionRequest1.getId()).isPresent());
    }
    // Delete all fighterInscriptionRequests
    @Test
    @Order(7)
    public void deleteAllFighterInscriptionRequests() {
        this.fightInscriptionRequestRepository.deleteAll();
        Assertions.assertEquals(0, this.fightInscriptionRequestRepository.count());
    }
}
