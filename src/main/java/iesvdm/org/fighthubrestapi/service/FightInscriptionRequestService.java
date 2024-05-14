package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FightInscriptionRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FightInscriptionRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightInscriptionRequestRepository fightInscriptionRequestRepository;
    @Autowired
    private ClubService clubService;
    @Autowired
    private FighterService fighterService;
    @Autowired
    private FightService fightService;

    // *** METHODS ***
    // ***************
    // List all fight inscription requests
    public List<FightInscriptionRequest> findAll() {
        return fightInscriptionRequestRepository.findAll();
    }
    // Find fight inscription request by id
    public FightInscriptionRequest findById(Long id) {
        return fightInscriptionRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FightInscriptionRequest.class));
    }
    // Save fight inscription request
    public FightInscriptionRequest save(FightInscriptionRequest fightInscriptionRequest) {
        return fightInscriptionRequestRepository.save(fightInscriptionRequest);
    }
    // Update fight inscription request
    public FightInscriptionRequest update(Long id, FightInscriptionRequest fightInscriptionRequest) {
        // Props
        FightInscriptionRequest fightInscriptionRequestToUpdate = this.fightInscriptionRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FightInscriptionRequest.class));
        fightInscriptionRequestToUpdate.setStatus(fightInscriptionRequest.getStatus());
        return fightInscriptionRequestRepository.save(fightInscriptionRequestToUpdate);
    }
    // Delete fight inscription request
    public void delete(Long id) {
        FightInscriptionRequest fightInscriptionRequestToDelete = this.fightInscriptionRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FightInscriptionRequest.class));
        // Dissociate fight inscription request from club, fighter and fight
        fightInscriptionRequestToDelete.getClub().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        fightInscriptionRequestToDelete.getFighter().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        fightInscriptionRequestToDelete.getFight().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        this.clubService.save(fightInscriptionRequestToDelete.getClub());
        this.fighterService.save(fightInscriptionRequestToDelete.getFighter());
        this.fightService.save(fightInscriptionRequestToDelete.getFight());
        // Delete fight inscription request
        fightInscriptionRequestRepository.deleteById(id);
    }
}
