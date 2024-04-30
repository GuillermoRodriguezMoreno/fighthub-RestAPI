package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.service.ClubMembershipRequestService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/clubMembershipRequest")
public class ClubMembershipRequestController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestService clubMembershipRequestService;

    // *** METHODS ***
    // ***************
    // List all clubMembershipRequests
    @GetMapping(value = {"", "/"})
    public List<ClubMembershipRequest> findAll() {
        log.info("ClubMembershipRequestController: findAll");
        return clubMembershipRequestService.findAll();
    }
    // Find clubMembershipRequest by id
    @GetMapping(value = {"/{id}"})
    public ClubMembershipRequest findById(@PathVariable Long id) {
        log.info("ClubMembershipRequestController: findById - id: " + id);
        return clubMembershipRequestService.findById(id);
    }
    // Save clubMembershipRequest
    @PostMapping(value = {"", "/"})
    public ClubMembershipRequest save(@Valid @RequestBody ClubMembershipRequest clubMembershipRequest) {
        log.info("ClubMembershipRequestController: save - id: " + clubMembershipRequest.getId());
        return clubMembershipRequestService.save(clubMembershipRequest);
    }
    // Update clubMembershipRequest
    @PutMapping(value = {"/{id}"})
    public ClubMembershipRequest update(@PathVariable Long id, @Valid @RequestBody ClubMembershipRequest clubMembershipRequest) {
        log.info("ClubMembershipRequestController: update - id: " + id);
        return clubMembershipRequestService.update(id, clubMembershipRequest);
    }
    // Delete clubMembershipRequest
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("ClubMembershipRequestController: delete - id: " + id);
        clubMembershipRequestService.delete(id);
    }
}
