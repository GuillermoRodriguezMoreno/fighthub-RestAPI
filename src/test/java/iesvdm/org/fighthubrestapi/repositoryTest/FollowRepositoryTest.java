package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.FollowRepository;
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
public class FollowRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FollowRepository followRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** PROPS ***
    // *************
    // Follows
    private Follow follow1;
    private Follow follow2;
    // Fighters
    private Fighter fighter1;
    private Fighter fighter2;
    private Fighter fighter3;

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

        this.fighter2 = Fighter.builder()
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

        this.fighter3 = Fighter.builder()
                .id(0L)
                .userName("userName3")
                .birthDate(LocalDateTime.now())
                .email("prueba3@email.es")
                .password("123456678")
                .registerDate(LocalDateTime.now())
                .deleted(false)
                .name("nombreDePueba3")
                .active(true)
                .weight(70.0)
                .height(180)
                .biography("biography of the fighter that is going to be created")
                .build();
        // Save fighters
        this.fighterRepository.save(fighter1);
        this.fighterRepository.save(fighter2);
        this.fighterRepository.save(fighter3);
        // Follows
        this.follow1 = Follow.builder()
                .followId(new FollowId(fighter1.getId(), fighter2.getId()))
                .followDate(LocalDateTime.now())
                .followerFighter(fighter1)
                .followedFighter(fighter2)
                .build();

        this.follow2 = Follow.builder()
                .followId(new FollowId(fighter1.getId(), fighter3.getId()))
                .followDate(LocalDateTime.now())
                .followerFighter(fighter1)
                .followedFighter(fighter3)
                .build();
        // Save follows
        this.followRepository.save(follow1);
        this.followRepository.save(follow2);
    }

    // *** TEST ***
    // ************
    // Save follow
    @Test
    @Order(1)
    public void saveFollow() {
        Follow follow3 = Follow.builder()
                .followId(new FollowId(fighter2.getId(), fighter1.getId()))
                .followDate(LocalDateTime.now())
                .followerFighter(fighter2)
                .followedFighter(fighter1)
                .build();

        Follow follow4 = Follow.builder()
                .followId(new FollowId(fighter2.getId(), fighter3.getId()))
                .followDate(LocalDateTime.now())
                .followerFighter(fighter2)
                .followedFighter(fighter3)
                .build();
        // Save follows
        this.followRepository.save(follow3);
        this.followRepository.save(follow4);
        // Assertions
        Assertions.assertEquals(4, this.followRepository.count());
    }
    // Find follow
    @Test
    @Order(2)
    public void findFollow() {
        Assertions.assertNotNull(this.followRepository.findById(follow1.getFollowId()));
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
