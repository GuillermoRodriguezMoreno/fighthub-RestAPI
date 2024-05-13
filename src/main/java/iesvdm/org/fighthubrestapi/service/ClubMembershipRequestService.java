package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubMembershipRequestRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubMembershipRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestRepository clubMembershipRequestRepository;
    @Autowired
    private ClubService clubService;
    @Autowired
    private FighterService fighterService;

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
        // Save club membership request
        return clubMembershipRequestRepository.save(clubMembershipRequest);
    }
    // Update club membership request
    public ClubMembershipRequest update(Long id, ClubMembershipRequest clubMembershipRequest) {
        // Props
        ClubMembershipRequest clubMembershipRequestToUpdate = findById(id);
        clubMembershipRequestToUpdate.setStatus(clubMembershipRequest.getStatus());
        return clubMembershipRequestRepository.save(clubMembershipRequestToUpdate);
    }
    // Delete club membership request
    @Transactional
    public void delete(Long id) {
        // Find club membership request by id
        ClubMembershipRequest clubMembershipRequestToDelete = this.clubMembershipRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, ClubMembershipRequest.class));
        // Dissociate club membership request from club and fighter
        clubMembershipRequestToDelete.getClub().getClubMembershipRequests().remove(clubMembershipRequestToDelete);
        clubMembershipRequestToDelete.getFighter().getClubMembershipRequests().remove(clubMembershipRequestToDelete);
        this.clubService.save(clubMembershipRequestToDelete.getClub());
        this.fighterService.save(clubMembershipRequestToDelete.getFighter());
        // Delete club membership request
        clubMembershipRequestRepository.deleteById(id);
    }
}
