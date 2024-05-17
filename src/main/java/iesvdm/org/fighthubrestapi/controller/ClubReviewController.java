package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.service.ClubReviewService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/clubReview")
public class ClubReviewController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewService clubReviewService;

    // *** METHODS ***
    // ***************
    // List all clubReviews
    @GetMapping(value = {"", "/"})
    public List<ClubReview> findAll() {
        log.info("ClubReviewController: findAll");
        return clubReviewService.findAll();
    }
    // Find clubReview by id
    @GetMapping(value = {"/{id}"})
    public ClubReview findById(@PathVariable ClubReviewId id) {
        log.info("ClubReviewController: findById - id: " + id);
        return clubReviewService.findById(id);
    }
    // Save clubReview
    @PostMapping(value = {"", "/"})
    public ClubReview save(@Valid @RequestBody ClubReview clubReview) {
        log.info("ClubReviewController: save - id: " + clubReview.getId());
        return clubReviewService.save(clubReview);
    }
    // Update clubReview
    @PutMapping(value = {"/{id}"})
    public ClubReview update(@PathVariable ClubReviewId id, @Valid @RequestBody ClubReview clubReview) {
        log.info("ClubReviewController: update - id: " + id);
        return clubReviewService.update(id, clubReview);
    }
    // Delete clubReview
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable ClubReviewId id) {
        log.info("ClubReviewController: delete - id: " + id);
        clubReviewService.delete(id);
    }
}
