package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.service.FighterService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/fighter")
public class FighterController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterService fighterService;

    // *** METHODS ***
    // ***************
    // List all fighters
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort", "!name", "!username"})
    public List<Fighter> findAll() {
        log.info("FighterController: findAll");
        return fighterService.findAll();
    }
    // Find fighter by id
    @GetMapping(value = {"/{id}"})
    public Fighter findById(@PathVariable Long id) {
        log.info("FighterController: findById - id: " + id);
        return fighterService.findById(id);
    }
    // Save fighter
    @PostMapping(value = {"", "/"})
    public Fighter save(@Valid @RequestBody Fighter fighter) {
        log.info("FighterController: save - id: " + fighter.getId());
        return fighterService.save(fighter);
    }
    // Update fighter
    @PutMapping(value = {"/{id}"})
    public Fighter update(@PathVariable Long id, @Valid @RequestBody Fighter fighter) {
        log.info("FighterController: update - id: " + id);
        return fighterService.update(id, fighter);
    }
    // Delete fighter
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("FighterController: delete - id: " + id);
        fighterService.delete(id);
    }

    // *** CUSTOM METHODS ***
    // **********************
    // Find by name
    @GetMapping(value = {"","/"}, params = {"name"})
    public Page<Fighter> findByName(@RequestParam String name, Pageable pageable) {
        log.info("FighterController: findByName - name: " + name);
        return fighterService.findFightersByName(Optional.of(name), pageable);
    }
    // Find by username
    @GetMapping(value = {"","/"}, params = {"username"})
    public Page<Fighter> findByUsername(@RequestParam String username, Pageable pageable) {
        log.info("FighterController: findByUsername - username: " + username);
        return fighterService.findFightersByUserName(Optional.of(username), pageable);
    }
}
