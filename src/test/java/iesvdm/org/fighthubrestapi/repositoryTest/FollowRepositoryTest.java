package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.repository.FollowRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class FollowRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FollowRepository followRepository;

    // *** PROPS ***
    // *************
    private Follow follow1;
    private Follow follow2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.follow1 = null;
        this.follow2 = null;
        this.followRepository.save(follow1);
        this.followRepository.save(follow2);
    }

    // *** TEST ***
    // ************
    // Save follow
    @Test
    @Order(1)
    public void saveFollow() {
        Follow follow3 = null;
        Follow follow4 = null;
        this.followRepository.save(follow3);
        this.followRepository.save(follow4);
        Assertions.assertEquals(4, this.followRepository.count());
    }
    // Find follow
    @Test
    @Order(2)
    public void findFollow() {
    }
    // Count follows
    @Test
    @Order(3)
    public void countFollows() {
        Assertions.assertEquals(2, this.followRepository.count());
    }
    // Find all follows
    @Test
    @Order(4)
    public void findAllFollows() {
        Assertions.assertEquals(2, this.followRepository.findAll().size());
    }
    // Delete follow
    @Test
    @Order(5)
    public void deleteFollow() {
        this.followRepository.delete(follow1);
        Assertions.assertEquals(1, this.followRepository.count());
    }
    // Delete all follows
    @Test
    @Order(6)
    public void deleteAllFollows() {
        this.followRepository.deleteAll();
        Assertions.assertEquals(0, this.followRepository.count());
    }
}
