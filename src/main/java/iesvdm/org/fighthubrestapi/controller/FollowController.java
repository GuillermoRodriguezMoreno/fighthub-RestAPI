package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
import iesvdm.org.fighthubrestapi.service.FollowService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    // Find follow by id
    @GetMapping(value = {"/{id1}/{id2}"})
    public Follow findById(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("FollowController: findById - id: " + id1 + ", " + id2);
        FollowId id = new FollowId(id1, id2);
        return followService.findById(id);
    }
    // Save follow
    @PostMapping(value = {"", "/"})
    public Follow save(@RequestBody Follow follow) {
        log.info("FollowController: save - id: " + follow.getId());
        return followService.save(follow);
    }
    // Update follow
    @PutMapping(value = {"/{id1}/{id2}"})
    public Follow update(@PathVariable Long id1, @PathVariable Long id2, @RequestBody Follow follow) {
        log.info("FollowController: update - id: " + id1 + ", " + id2);
        FollowId id = new FollowId(id1, id2);
        return followService.update(id, follow);
    }
    // Delete follow
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id1}/{id2}"})
    public void delete(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("FollowController: delete - id: " + id1 + ", " + id2);
        FollowId id = new FollowId(id1, id2);
        followService.delete(id);
    }

    // *** CUSTOM METHODS ***
    // **********************
    // Find all follows by follower
    @GetMapping(value = {"", "/"}, params = {"followerId"})
    public Page<Follow> findAllByFollower(@RequestParam Long followerId, Pageable pageable) {
        log.info("FollowController: findAllByFollower - followerId: " + followerId);
        return followService.findByFollowerId(followerId, pageable);
    }
}
