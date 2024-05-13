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
        FightInscriptionRequest fightInscriptionRequestToUpdate = findById(id);
        fightInscriptionRequestToUpdate.setStatus(fightInscriptionRequest.getStatus());
        fightInscriptionRequestToUpdate.setMessage(fightInscriptionRequest.getMessage());
        fightInscriptionRequestToUpdate.setResponse(fightInscriptionRequest.getResponse());
        // Relationships
        // Todo - Implement this
        return fightInscriptionRequestRepository.save(fightInscriptionRequestToUpdate);
    }
    // Delete fight inscription request
    // Todo - Implement this
    public void delete(Long id) {
        fightInscriptionRequestRepository.deleteById(id);
    }
}
