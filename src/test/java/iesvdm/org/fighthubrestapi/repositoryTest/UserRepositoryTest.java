package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class UserRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private UserRepository userRepository;

    // *** PROPS ***
    // *************
    private User user1;
    private User user2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.user1 = null;
        this.user2 = null;
        this.userRepository.save(user1);
        this.userRepository.save(user2);
    }

    // *** TEST ***
    // ************
    // Save user
    @Test
    @Order(1)
    public void saveUser() {
        User user3 = null;
        User user4 = null;
        this.userRepository.save(user3);
        this.userRepository.save(user4);
        Assertions.assertEquals(4, this.userRepository.count());
    }
    // Find user
    @Test
    @Order(2)
    public void findUser() {
        Assertions.assertTrue(this.userRepository.findById(user1.getId()).isPresent());
    }
    // Count users
    @Test
    @Order(3)
    public void countUsers() {
        Assertions.assertEquals(2, this.userRepository.count());
    }
    // Find all users
    @Test
    @Order(4)
    public void findAllUsers() {
        Assertions.assertEquals(2, this.userRepository.findAll().size());
    }
    // Delete user
    @Test
    @Order(5)
    public void deleteUser() {
        this.userRepository.delete(user1);
        Assertions.assertFalse(this.userRepository.findById(user1.getId()).isPresent());
    }
    // Delete all users
    @Test
    @Order(6)
    public void deleteAllUsers() {
        this.userRepository.deleteAll();
        Assertions.assertEquals(0, this.userRepository.count());
    }
}
