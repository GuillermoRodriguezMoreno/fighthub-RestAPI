package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Style;
import iesvdm.org.fighthubrestapi.service.StyleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/style")
public class StyleController {

    // *** INJECTS ***
    // ***************
    private StyleService styleService;

    // *** METHODS ***
    // ***************
    // List all styles
    @GetMapping(value = {"", "/"}, params = {"!search"})
    public List<Style> findAll() {
        log.info("StyleController: findAll");
        return styleService.findAll();
    }
    // Find style by id
    @GetMapping(value = {"/{id}"})
    public Style findById(@PathVariable Long id) {
        log.info("StyleController: findById - id: " + id);
        return styleService.findById(id);
    }
    // Save style
    @PostMapping(value = {"", "/"})
    public Style save(@RequestBody Style style) {
        log.info("StyleController: save - id: " + style.getId());
        return styleService.save(style);
    }
    // Update style
    @PutMapping(value = {"/{id}"})
    public Style update(@PathVariable Long id, @RequestBody Style style) {
        log.info("StyleController: update - id: " + id);
        return styleService.update(id, style);
    }
    // Delete style
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("StyleController: delete - id: " + id);
        styleService.delete(id);
    }
}
