package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/user")
public class UserController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private UserService userService;

    // *** METHODS ***
    // ***************
    // List all users
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort", "!search"})
    public List<User> findAll() {
        log.info("UserController: findAll");
        return userService.findAll();
    }
    // Find user by id
    @GetMapping(value = {"/{id}"})
    public User findById(@PathVariable Long id) {
        log.info("UserController: findById - id: " + id);
        return userService.findById(id);
    }
    // Save user
    @PostMapping(value = {"", "/"})
    public User save(@RequestBody User user) {
        log.info("UserController: save - id: " + user.getId());
        return userService.save(user);
    }
    // Update user
    @PutMapping(value = {"/{id}"})
    public User update(@PathVariable Long id, @RequestBody User user) {
        log.info("UserController: update - id: " + id);
        return userService.update(id, user);
    }
    // Delete user
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("UserController: delete - id: " + id);
        userService.delete(id);
    }
}
