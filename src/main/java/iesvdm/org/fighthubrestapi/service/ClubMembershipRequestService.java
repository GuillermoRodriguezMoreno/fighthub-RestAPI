package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubMembershipRequestRepository;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ClubMembershipRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestRepository clubMembershipRequestRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** METHODS ***
    // ***************
    // List all club membership requests
    public List<ClubMembershipRequest> findAll() {
        return clubMembershipRequestRepository.findAll();
    }
    // Find club membership request by id
    public ClubMembershipRequest findById(Long id) {
        return clubMembershipRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, ClubMembershipRequest.class));
    }
    // Save club membership request
    public ClubMembershipRequest save(ClubMembershipRequest clubMembershipRequest) {
        // Find club and fighter
        Club club = clubRepository.findById(clubMembershipRequest.getClub().getId()).orElseThrow(() -> new EntityNotFoundException(clubMembershipRequest.getClub().getId(), Club.class));
        Fighter fighter = fighterRepository.findById(clubMembershipRequest.getFighter().getId()).orElseThrow(() -> new EntityNotFoundException(clubMembershipRequest.getFighter().getId(), Fighter.class));
        // Set club and fighter
        clubMembershipRequest.setClub(club);
        clubMembershipRequest.setFighter(fighter);
        // Save club membership request
        clubMembershipRequestRepository.save(clubMembershipRequest);
        // Associate club membership request with club and fighter
        club.getClubMembershipRequests().add(clubMembershipRequest);
        fighter.getClubMembershipRequests().add(clubMembershipRequest);
        this.clubRepository.save(clubMembershipRequest.getClub());
        this.fighterRepository.save(clubMembershipRequest.getFighter());
        return clubMembershipRequest;
    }
    // Update club membership request
    public ClubMembershipRequest update(Long id, ClubMembershipRequest clubMembershipRequest) {
        // Props
        ClubMembershipRequest clubMembershipRequestToUpdate = this.clubMembershipRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, ClubMembershipRequest.class));
        clubMembershipRequestToUpdate.setStatus(clubMembershipRequest.getStatus());
        clubMembershipRequestToUpdate.setResponseDate(clubMembershipRequest.getResponseDate());
        return clubMembershipRequestRepository.save(clubMembershipRequestToUpdate);
    }
    // Delete club membership request
    public void delete(Long id) {
        // Find club membership request by id
        ClubMembershipRequest clubMembershipRequestToDelete = this.clubMembershipRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, ClubMembershipRequest.class));
        // Dissociate club membership request from club and fighter
        clubMembershipRequestToDelete.getClub().getClubMembershipRequests().remove(clubMembershipRequestToDelete);
        clubMembershipRequestToDelete.getFighter().getClubMembershipRequests().remove(clubMembershipRequestToDelete);
        this.clubRepository.save(clubMembershipRequestToDelete.getClub());
        this.fighterRepository.save(clubMembershipRequestToDelete.getFighter());
        // Delete club membership request
        clubMembershipRequestRepository.deleteById(id);
    }
}
