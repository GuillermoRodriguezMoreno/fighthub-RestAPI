package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.service.EventService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/event")
public class EventController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventService eventService;

    // *** METHODS ***
    // ***************
    // List all events
    @GetMapping(value = {"", "/"}, params = {"!page", "!size", "!sort", "!search"})
    public List<Event> findAll() {
        log.info("EventController: findAll");
        return eventService.findAll();
    }
    // Find event by id
    @GetMapping(value = {"/{id}"})
    public Event findById(@PathVariable Long id) {
        log.info("EventController: findById - id: " + id);
        return eventService.findById(id);
    }
    // Save event
    @PostMapping(value = {"", "/"})
    public Event save(@Valid @RequestBody Event event) {
        log.info("EventController: save - id: " + event.getId());
        return eventService.save(event);
    }
    // Update event
    @PutMapping(value = {"/{id}"})
    public Event update(@PathVariable Long id, @Valid @RequestBody Event event) {
        log.info("EventController: update - id: " + id);
        return eventService.update(id, event);
    }
    // Delete event
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("EventController: delete - id: " + id);
        eventService.delete(id);
    }
}
