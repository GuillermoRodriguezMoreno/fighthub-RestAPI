package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Photo;
import iesvdm.org.fighthubrestapi.service.PhotoService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/photo")
public class PhotoController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private PhotoService photoService;

    // *** METHODS ***
    // ***************
    // List all photos
    @GetMapping(value = {"", "/"})
    public List<Photo> findAll() {
        log.info("PhotoController: findAll");
        return photoService.findAll();
    }
    // Find photo by id
    @GetMapping(value = {"/{id}"})
    public Photo findById(@PathVariable Long id) {
        log.info("PhotoController: findById - id: " + id);
        return photoService.findById(id);
    }
    // Save photo
    @PostMapping(value = {"", "/"})
    public Photo save(@RequestBody Photo photo) {
        log.info("PhotoController: save - id: " + photo.getId());
        return photoService.save(photo);
    }
    // Update photo
    @PutMapping(value = {"/{id}"})
    public Photo update(@PathVariable Long id, @RequestBody Photo photo) {
        log.info("PhotoController: update - id: " + id);
        return photoService.update(id, photo);
    }
    // Delete photo
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("PhotoController: delete - id: " + id);
        photoService.delete(id);
    }
}
