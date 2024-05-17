package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.*;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class FightInscriptionRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightInscriptionRequestRepository fightInscriptionRequestRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private EventRepository eventRepository;

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
        // toDo: check if club, fighter, fight and event already exist
        return fightInscriptionRequestRepository.save(fightInscriptionRequest);
    }
    // Update fight inscription request
    public FightInscriptionRequest update(Long id, FightInscriptionRequest fightInscriptionRequest) {
        // Props
        FightInscriptionRequest fightInscriptionRequestToUpdate = this.fightInscriptionRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FightInscriptionRequest.class));
        fightInscriptionRequestToUpdate.setStatus(fightInscriptionRequest.getStatus());
        fightInscriptionRequestToUpdate.setMessage(fightInscriptionRequest.getMessage());
        fightInscriptionRequestToUpdate.setResponse(fightInscriptionRequest.getResponse());
        fightInscriptionRequestToUpdate.setResponseDate(fightInscriptionRequest.getResponseDate());
        // Dissociate fight inscription request from club, fighter and fight
        fightInscriptionRequestToUpdate.getClub().getFightInscriptionRequestsSent().remove(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getFighter().getFightInscriptionRequests().remove(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getFight().getFightInscriptionRequests().remove(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getEvent().getFightInscriptionRequests().remove(fightInscriptionRequestToUpdate);
        this.clubRepository.save(fightInscriptionRequestToUpdate.getClub());
        this.fighterRepository.save(fightInscriptionRequestToUpdate.getFighter());
        this.fightRepository.save(fightInscriptionRequestToUpdate.getFight());
        this.eventRepository.save(fightInscriptionRequestToUpdate.getEvent());
        // Associations
        fightInscriptionRequestToUpdate.setClub(fightInscriptionRequest.getClub());
        fightInscriptionRequestToUpdate.setFighter(fightInscriptionRequest.getFighter());
        fightInscriptionRequestToUpdate.setFight(fightInscriptionRequest.getFight());
        fightInscriptionRequestToUpdate.setEvent(fightInscriptionRequest.getEvent());
        fightInscriptionRequestToUpdate.getClub().getFightInscriptionRequestsSent().add(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getFighter().getFightInscriptionRequests().add(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getFight().getFightInscriptionRequests().add(fightInscriptionRequestToUpdate);
        fightInscriptionRequestToUpdate.getEvent().getFightInscriptionRequests().add(fightInscriptionRequestToUpdate);
        this.clubRepository.save(fightInscriptionRequestToUpdate.getClub());
        this.fighterRepository.save(fightInscriptionRequestToUpdate.getFighter());
        this.fightRepository.save(fightInscriptionRequestToUpdate.getFight());
        this.eventRepository.save(fightInscriptionRequestToUpdate.getEvent());
        // Save
        return fightInscriptionRequestRepository.save(fightInscriptionRequestToUpdate);
    }
    // Delete fight inscription request
    public void delete(Long id) {
        FightInscriptionRequest fightInscriptionRequestToDelete = this.fightInscriptionRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FightInscriptionRequest.class));
        // Dissociate fight inscription request from club, fighter and fight
        fightInscriptionRequestToDelete.getClub().getFightInscriptionRequestsSent().remove(fightInscriptionRequestToDelete);
        fightInscriptionRequestToDelete.getFighter().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        fightInscriptionRequestToDelete.getFight().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        fightInscriptionRequestToDelete.getEvent().getFightInscriptionRequests().remove(fightInscriptionRequestToDelete);
        this.clubRepository.save(fightInscriptionRequestToDelete.getClub());
        this.fighterRepository.save(fightInscriptionRequestToDelete.getFighter());
        this.fightRepository.save(fightInscriptionRequestToDelete.getFight());
        this.eventRepository.save(fightInscriptionRequestToDelete.getEvent());
        // Delete fight inscription request
        fightInscriptionRequestRepository.deleteById(id);
    }
}
