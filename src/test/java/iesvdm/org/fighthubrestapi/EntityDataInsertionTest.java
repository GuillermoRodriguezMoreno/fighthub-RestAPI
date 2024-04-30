package iesvdm.org.fighthubrestapi;

import iesvdm.org.fighthubrestapi.entity.Category;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;
@SpringBootTest
@DataJpaTest // To test JPA repositories
public class EntityDataInsertionTest {

    // *** TEST ***
    // ************
    @Test
    @Rollback(false) // To avoid rollback after the test
    public void insertTestData() {

    }
}
