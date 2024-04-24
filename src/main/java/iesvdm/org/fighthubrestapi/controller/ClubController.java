package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.service.ClubService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/club")
public class ClubController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubService clubService;

    // *** METHODS ***
    // ***************
    // List all clubs
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort", "!search"})
    public List<Club> findAll() {
        log.info("ClubController: findAll");
        return clubService.findAll();
    }
    // Find club by id
    @GetMapping(value = {"/{id}"})
    public Club findById(@PathVariable Long id) {
        log.info("ClubController: findById - id: " + id);
        return clubService.findById(id);
    }
    // Save club
    @PostMapping(value = {"", "/"})
    public Club save(@RequestBody Club club) {
        log.info("ClubController: save - id: " + club.getId());
        return clubService.save(club);
    }
    // Update club
    @PutMapping(value = {"/{id}"})
    public Club update(@PathVariable Long id, @RequestBody Club club) {
        log.info("ClubController: update - id: " + id);
        return clubService.update(id, club);
    }
    // Delete club
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("ClubController: delete - id: " + id);
        clubService.delete(id);
    }
}
