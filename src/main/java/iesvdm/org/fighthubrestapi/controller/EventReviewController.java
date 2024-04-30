package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.service.EventReviewService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/eventReview")
public class EventReviewController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewService eventReviewService;

    // *** METHODS ***
    // ***************
    // List all eventReviews
    @GetMapping(value = {"", "/"})
    public List<EventReview> findAll() {
        log.info("EventReviewController: findAll");
        return eventReviewService.findAll();
    }
    // Find eventReview by id
    @GetMapping(value = {"/{id}"})
    public EventReview findById(@PathVariable Long id) {
        log.info("EventReviewController: findById - id: " + id);
        return eventReviewService.findById(id);
    }
    // Save eventReview
    @PostMapping(value = {"", "/"})
    public EventReview save(@Valid @RequestBody EventReview eventReview) {
        log.info("EventReviewController: save - id: " + eventReview.getId());
        return eventReviewService.save(eventReview);
    }
    // Update eventReview
    @PutMapping(value = {"/{id}"})
    public EventReview update(@PathVariable Long id, @Valid @RequestBody EventReview eventReview) {
        log.info("EventReviewController: update - id: " + id);
        return eventReviewService.update(id, eventReview);
    }
    // Delete eventReview
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("EventReviewController: delete - id: " + id);
        eventReviewService.delete(id);
    }
}
