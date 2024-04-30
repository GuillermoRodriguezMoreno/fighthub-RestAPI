package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.service.FightInscriptionRequestService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/fightInscriptionRequest")
public class FightInscriptionRequestController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightInscriptionRequestService fightInscriptionRequestService;

    // *** METHODS ***
    // ***************
    // List all fightInscriptionRequests
    @GetMapping(value = {"", "/"})
    public List<FightInscriptionRequest> findAll() {
        log.info("FightInscriptionRequestController: findAll");
        return fightInscriptionRequestService.findAll();
    }
    // Find fightInscriptionRequest by id
    @GetMapping(value = {"/{id}"})
    public FightInscriptionRequest findById(@PathVariable Long id) {
        log.info("FightInscriptionRequestController: findById - id: " + id);
        return fightInscriptionRequestService.findById(id);
    }
    // Save fightInscriptionRequest
    @PostMapping(value = {"", "/"})
    public FightInscriptionRequest save(@Valid @RequestBody FightInscriptionRequest fightInscriptionRequest) {
        log.info("FightInscriptionRequestController: save - id: " + fightInscriptionRequest.getId());
        return fightInscriptionRequestService.save(fightInscriptionRequest);
    }
    // Update fightInscriptionRequest
    @PutMapping(value = {"/{id}"})
    public FightInscriptionRequest update(@PathVariable Long id, @Valid @RequestBody FightInscriptionRequest fightInscriptionRequest) {
        log.info("FightInscriptionRequestController: update - id: " + id);
        return fightInscriptionRequestService.update(id, fightInscriptionRequest);
    }
    // Delete fightInscriptionRequest
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("FightInscriptionRequestController: delete - id: " + id);
        fightInscriptionRequestService.delete(id);
    }
}
