package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.service.FightService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/fight")
public class FightController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightService fightService;

    // *** METHODS ***
    // ***************
    // List all fights
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort", "!search"})
    public List<Fight> findAll() {
        log.info("FightController: findAll");
        return fightService.findAll();
    }
    // Find fight by id
    @GetMapping(value = {"/{id}"})
    public Fight findById(@PathVariable Long id) {
        log.info("FightController: findById - id: " + id);
        return fightService.findById(id);
    }
    // Save fight
    @PostMapping(value = {"", "/"})
    public Fight save(@Valid @RequestBody Fight fight) {
        log.info("FightController: save - id: " + fight.getId());
        return fightService.save(fight);
    }
    // Update fight
    @PutMapping(value = {"/{id}"})
    public Fight update(@PathVariable Long id, @Valid @RequestBody Fight fight) {
        log.info("FightController: update - id: " + id);
        return fightService.update(id, fight);
    }
    // Delete fight
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("FightController: delete - id: " + id);
        fightService.delete(id);
    }
}
