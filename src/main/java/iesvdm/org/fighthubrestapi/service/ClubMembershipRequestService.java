package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubMembershipRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubMembershipRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubMembershipRequestRepository clubMembershipRequestRepository;

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
        return clubMembershipRequestRepository.save(clubMembershipRequest);
    }
    // Update club membership request
    public ClubMembershipRequest update(Long id, ClubMembershipRequest clubMembershipRequest) {
        // Props
        ClubMembershipRequest clubMembershipRequestToUpdate = findById(id);
        clubMembershipRequestToUpdate.setStatus(clubMembershipRequest.getStatus());
        // Relationships
        // toDo -- Implement this
        return clubMembershipRequestRepository.save(clubMembershipRequestToUpdate);
    }
    // Delete club membership request
    // toDo -- Implement this
    public void delete(Long id) {
        clubMembershipRequestRepository.deleteById(id);
    }
}
