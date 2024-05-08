package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.service.RoleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/role")
public class RoleController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private RoleService roleService;

    // *** METHODS ***
    // ***************
    // List all roles
    @GetMapping(value = {"", "/"}, params = {"!search"})
    public List<Role> findAll() {
        log.info("RoleController: findAll");
        return roleService.findAll();
    }
    // Find role by id
    @GetMapping(value = {"/{id}"})
    public Role findById(@PathVariable Long id) {
        log.info("RoleController: findById - id: " + id);
        return roleService.findById(id);
    }
    // Save role
    @PostMapping(value = {"", "/"})
    public Role save(@RequestBody Role role) {
        log.info("RoleController: save - id: " + role.getId());
        return roleService.save(role);
    }
    // Update role
    @PutMapping(value = {"/{id}"})
    public Role update(@PathVariable Long id, @RequestBody Role role) {
        log.info("RoleController: update - id: " + id);
        return roleService.update(id, role);
    }
    // Delete role
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("RoleController: delete - id: " + id);
        roleService.delete(id);
    }
}
