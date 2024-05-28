package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.service.ClubReviewService;
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
@RequestMapping("/v1/api/clubReview")
public class ClubReviewController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewService clubReviewService;

    // *** CRUD METHODS ***
    // ********************
    // List all clubReviews
    @GetMapping(value = {"", "/"})
    public List<ClubReview> findAll() {
        log.info("ClubReviewController: findAll");
        return clubReviewService.findAll();
    }
    // Find clubReview by id
    @GetMapping(value = {"/{id1}/{id2}"})
    public ClubReview findById(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("ClubReviewController: findById - id: " + id1 + ", " + id2);
        ClubReviewId id = new ClubReviewId(id1, id2);
        return clubReviewService.findById(id);
    }
    // Save clubReview
    @PostMapping(value = {"", "/"})
    public ClubReview save(@Valid @RequestBody ClubReview clubReview) {
        log.info("ClubReviewController: save - id: " + clubReview.getId());
        return clubReviewService.save(clubReview);
    }
    // Update clubReview
    @PutMapping(value = {"/{id1}/{id2}"})
    public ClubReview update(@PathVariable Long id1, @PathVariable Long id2, @Valid @RequestBody ClubReview clubReview) {
        log.info("ClubReviewController: update - id: " + id1 + ", " + id2);
        ClubReviewId id = new ClubReviewId(id1, id2);
        return clubReviewService.update(id, clubReview);
    }
    // Delete clubReview
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id1}/{id2}"})
    public void delete(@PathVariable Long id1, @PathVariable Long id2) {
        log.info("ClubReviewController: delete - id: " + id1 + ", " + id2);
        ClubReviewId id = new ClubReviewId(id1, id2);
        clubReviewService.delete(id);
    }

    // *** CUSTOM METHODS ***
    // **********************
    // Find all club reviews by club id
    @GetMapping(value = {"", "/"} , params = {"clubId"})
    public Page<ClubReview> findByClubId(@RequestParam Long clubId, Pageable pageable) {
        log.info("ClubReviewController: findByClubId - clubId: " + clubId);
        return clubReviewService.findByClubId(clubId, pageable);
    }
}
