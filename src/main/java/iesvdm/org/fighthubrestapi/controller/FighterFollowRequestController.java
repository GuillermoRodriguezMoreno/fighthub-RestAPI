package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import iesvdm.org.fighthubrestapi.service.FighterFollowRequestService;
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
@RequestMapping("/v1/api/fighterFollowRequest")
public class FighterFollowRequestController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterFollowRequestService fighterFollowRequestService;

    // *** METHODS ***
    // ***************
    // List all fighterFollowRequests
    @GetMapping(value = {"", "/"})
    public List<FighterFollowRequest> findAll() {
        log.info("FighterFollowRequestController: findAll");
        return fighterFollowRequestService.findAll();
    }
    // Find fighterFollowRequest by id
    @GetMapping(value = {"/{id}"})
    public FighterFollowRequest findById(@PathVariable Long id) {
        log.info("FighterFollowRequestController: findById - id: " + id);
        return fighterFollowRequestService.findById(id);
    }
    // Save fighterFollowRequest
    @PostMapping(value = {"", "/"})
    public FighterFollowRequest save(@Valid @RequestBody FighterFollowRequest fighterFollowRequest) {
        log.info("FighterFollowRequestController: save - id: " + fighterFollowRequest.getId());
        return fighterFollowRequestService.save(fighterFollowRequest);
    }
    // Update fighterFollowRequest
    @PutMapping(value = {"/{id}"})
    public FighterFollowRequest update(@PathVariable Long id, @Valid @RequestBody FighterFollowRequest fighterFollowRequest) {
        log.info("FighterFollowRequestController: update - id: " + id);
        return fighterFollowRequestService.update(id, fighterFollowRequest);
    }
    // Delete fighterFollowRequest
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("FighterFollowRequestController: delete - id: " + id);
        this.fighterFollowRequestService.delete(id);
    }
    // *** CUSTOM METHODS ***
    // **********************
    // Find all fighterFollowRequests by receiver id
    @GetMapping(value = {"", "/"}, params = {"receiverId"})
    public Page<FighterFollowRequest> findByReceiver_Id(@RequestParam Long receiverId, Pageable pageable) {
        log.info("FighterFollowRequestController: findByReceiver_Id - receiverId: " + receiverId);
        return fighterFollowRequestService.findByReceiver_Id(receiverId, pageable);
    }
}
