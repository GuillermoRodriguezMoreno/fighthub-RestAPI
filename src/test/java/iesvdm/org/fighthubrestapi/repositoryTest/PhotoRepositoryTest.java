package iesvdm.org.fighthubrestapi.repositoryTest;

import iesvdm.org.fighthubrestapi.entity.Photo;
import iesvdm.org.fighthubrestapi.repository.PhotoRepository;
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
public class PhotoRepositoryTest {

    // *** INJECTS ***
    // ***************
    @Autowired
    private PhotoRepository photoRepository;

    // *** PROPS ***
    // *************
    private Photo photo1;
    private Photo photo2;

    // *** BEFORE EACH ***
    // *******************
    @BeforeEach
    public void setUp() {
        this.photo1 = Photo.builder()
                .id(0L)
                .EntityType("FIGHTER")
                .url("https://url.com")
                .uploadDate(LocalDateTime.now())
                .build();

        this.photo2 = Photo.builder()
                .id(0L)
                .EntityType("CLUB")
                .url("https://url2.com")
                .uploadDate(LocalDateTime.now())
                .build();
        // Save photos
        this.photoRepository.save(photo1);
        this.photoRepository.save(photo2);
    }

    // *** TEST ***
    // ************
    // Save photo
    @Test
    @Order(1)
    public void savePhoto() {
        Photo photo3 = Photo.builder()
                .id(0L)
                .EntityType("EVENT")
                .url("https://url3.com")
                .uploadDate(LocalDateTime.now())
                .build();

        Photo photo4 = Photo.builder()
                .id(0L)
                .EntityType("EVENT")
                .url("https://url4.com")
                .uploadDate(LocalDateTime.now())
                .build();
        // Save photos
        this.photoRepository.save(photo3);
        this.photoRepository.save(photo4);
        // Assertions
        Assertions.assertEquals(4, this.photoRepository.count());
    }
    // Find photo
    @Test
    @Order(2)
    public void findPhoto() {
        Assertions.assertTrue(this.photoRepository.findById(photo1.getId()).isPresent());
    }
    // Count photos
    @Test
    @Order(3)
    public void countPhotos() {
        Assertions.assertEquals(2, this.photoRepository.count());
    }
    // Find all photos
    @Test
    @Order(4)
    public void findAllPhotos() {
        Assertions.assertEquals(2, this.photoRepository.findAll().size());
    }
    // Delete photo
    @Test
    @Order(5)
    public void deletePhoto() {
        this.photoRepository.deleteById(photo1.getId());
        Assertions.assertFalse(this.photoRepository.findById(photo1.getId()).isPresent());
    }
    // Delete all photos
    @Test
    @Order(6)
    public void deleteAllPhotos() {
        this.photoRepository.deleteAll();
        Assertions.assertEquals(0, this.photoRepository.count());
    }
}
