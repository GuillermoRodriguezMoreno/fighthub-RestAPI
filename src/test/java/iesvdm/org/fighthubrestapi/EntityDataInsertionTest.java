package iesvdm.org.fighthubrestapi;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;

@SpringBootTest
public class EntityDataInsertionTest {

    // *** TEST ***
    // ************
    @Test
    @Rollback(false) // To avoid rollback after the test
    public void insertTestData() {

    }
}
