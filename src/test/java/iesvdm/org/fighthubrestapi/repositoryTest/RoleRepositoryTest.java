package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.model.E_Role;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
@Transactional // Changes are rolled back after the test
public class RoleRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private RoleRepository roleRepository;

    // *** PROPS ***
    // *************
    private Role role1;
    private Role role2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.role1 = Role.builder()
                .id(0L)
                .role(E_Role.FIGHTER)
                .build();

        this.role2 = Role.builder()
                .id(0L)
                .role(E_Role.ADMIN)
                .build();
        // Save roles
        this.roleRepository.save(role1);
        this.roleRepository.save(role2);
    }

    // *** TEST ***
    // ************
    // Save role
    @Test
    @Order(1)
    public void saveRole() {
        Role role3 = Role.builder()
                .id(0L)
                .role(E_Role.CLUB_ADMIN)
                .build();

        Role role4 = Role.builder()
                .id(0L)
                .role(E_Role.ADMIN)
                .build();
        // Save roles
        this.roleRepository.save(role3);
        this.roleRepository.save(role4);
        // Assertions
        Assertions.assertEquals(4, this.roleRepository.count());
    }
    // Find role
    @Test
    @Order(2)
    public void findRole() {
        Assertions.assertTrue(this.roleRepository.findById(role1.getId()).isPresent());
    }
    // Count roles
    @Test
    @Order(3)
    public void countRoles() {
        Assertions.assertEquals(2, this.roleRepository.count());
    }
    // Find all roles
    @Test
    @Order(4)
    public void findAllRoles() {
        Assertions.assertEquals(2, this.roleRepository.findAll().size());
    }
    // Delete role
    @Test
    @Order(5)
    public void deleteRole() {
        this.roleRepository.delete(role1);
        Assertions.assertFalse(this.roleRepository.findById(role1.getId()).isPresent());
    }
    // Delete all roles
    @Test
    @Order(6)
    public void deleteAllRoles() {
        this.roleRepository.deleteAll();
        Assertions.assertEquals(0, this.roleRepository.count());
    }
}
