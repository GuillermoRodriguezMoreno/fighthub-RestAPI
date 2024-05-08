package iesvdm.org.fighthubrestapi;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.entity.User;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;

import java.time.LocalDateTime;
import java.util.HashSet;

@SpringBootTest
public class EntityDataInsertionTest {

    // *** TEST ***
    // ************
    @Test
    @Rollback(false) // To avoid rollback after the test
    public void insertTestData() {

    }
}
