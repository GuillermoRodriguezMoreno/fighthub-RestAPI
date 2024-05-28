package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.entity_key.EventReviewId;
import iesvdm.org.fighthubrestapi.service.EventReviewService;
import jakarta.validation.Valid;
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
    @GetMapping(value = {"/{id1}/{id2}"})
    public EventReview findById(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("EventReviewController: findById - id: " + id1 + ", " + id2);
        EventReviewId id = new EventReviewId(id1, id2);
        return eventReviewService.findById(id);
    }
    // Save eventReview
    @PostMapping(value = {"", "/"})
    public EventReview save(@Valid @RequestBody EventReview eventReview) {
        log.info("EventReviewController: save - id: " + eventReview.getId());
        return eventReviewService.save(eventReview);
    }
    // Update eventReview
    @PutMapping(value = {"/{id1}/{id2}"})
    public EventReview update(@PathVariable Long id1, @PathVariable Long id2, @Valid @RequestBody EventReview eventReview) {
        log.info("EventReviewController: update - id: " + id1 + ", " + id2);
        EventReviewId id = new EventReviewId(id1, id2);
        return eventReviewService.update(id, eventReview);
    }
    // Delete eventReview
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id1}/{id2}"})
    public void delete(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("EventReviewController: delete - id: " + id1 + ", " + id2);
        EventReviewId id = new EventReviewId(id1, id2);
        eventReviewService.delete(id);
    }

    // *** CUSTOM METHODS ***
    // ***********************
    // Find eventReview by event id
    @GetMapping(value = {"", "/"}, params = {"eventId"})
    public Page<EventReview> findByEventId(@RequestParam("eventId") Long eventId, Pageable pageable) {
        log.info("EventReviewController: findByEventId - id: " + eventId);
        return eventReviewService.findByEventId(eventId, pageable);
    }
}
