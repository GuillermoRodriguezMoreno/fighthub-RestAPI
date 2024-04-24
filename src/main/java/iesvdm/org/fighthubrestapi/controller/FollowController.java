package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.service.FollowService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/follow")
public class FollowController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FollowService followService;

    // *** METHODS ***
    // ***************
    // List all follows
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort"})
    public List<Follow> findAll() {
        log.info("FollowController: findAll");
        return followService.findAll();
    }
    /*
    // Find follow by id
    @GetMapping(value = {"/{id}"})
    public Follow findById(@PathVariable Long id) {
        log.info("FollowController: findById - id: " + id);
        return followService.findById(id);
    }
    // Save follow
    @PostMapping(value = {"", "/"})
    public Follow save(@RequestBody Follow follow) {
        log.info("FollowController: save - id: " + follow.getId());
        return followService.save(follow);
    }
    // Update follow
    @PutMapping(value = {"/{id}"})
    public Follow update(@PathVariable Long id, @RequestBody Follow follow) {
        log.info("FollowController: update - id: " + id);
        return followService.update(id, follow);
    }
    // Delete follow
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("FollowController: delete - id: " + id);
        followService.delete(id);
    }
     */
}
