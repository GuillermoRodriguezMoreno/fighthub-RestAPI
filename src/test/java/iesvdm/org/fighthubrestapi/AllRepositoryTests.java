package iesvdm.org.fighthubrestapi;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@SpringBootTest
@TestInstance(TestInstance.Lifecycle.PER_CLASS)
public class AllRepositoryTests {

    /* Importar todos los tests de repositorios
    // Ejemplo:
    @Autowired
    private CategoryRepositoryTest categoryRepositoryTest;

    @Autowired
    private ClubRepositoryTest clubRepositoryTest;

    // Ejecutar todos los tests en conjunto
    @Test
    public void runAllTests() {
        // No se requiere ninguna acción aquí, ya que los tests se ejecutarán automáticamente debido a la anotación @Test en cada método de prueba en las clases individuales.
    }
    */
}
