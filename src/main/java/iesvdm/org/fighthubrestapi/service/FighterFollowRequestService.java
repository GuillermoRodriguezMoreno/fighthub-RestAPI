package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FighterFollowRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FighterFollowRequestService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterFollowRequestRepository fighterFollowRequestRepository;
    @Autowired
    private FighterService fighterService;

    // *** METHODS ***
    // ***************
    // List all fighter follow requests
    public List<FighterFollowRequest> findAll() {
        return fighterFollowRequestRepository.findAll();
    }
    // Find fighter follow request by id
    public FighterFollowRequest findById(Long id) {
        return fighterFollowRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FighterFollowRequest.class));
    }
    // Save fighter follow request
    public FighterFollowRequest save(FighterFollowRequest fighterFollowRequest) {
        return fighterFollowRequestRepository.save(fighterFollowRequest);
    }
    // Update fighter follow request
    public FighterFollowRequest update(Long id, FighterFollowRequest fighterFollowRequest) {
        // Props
        FighterFollowRequest fighterFollowRequestToUpdate = this.fighterFollowRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FighterFollowRequest.class));
        fighterFollowRequestToUpdate.setStatus(fighterFollowRequest.getStatus());
        return fighterFollowRequestRepository.save(fighterFollowRequestToUpdate);
    }
    // Delete fighter follow request
    public void delete(Long id) {
        // FindById
        FighterFollowRequest fighterFollowRequestToDelete = this.fighterFollowRequestRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, FighterFollowRequest.class));
        // Disassociate
        fighterFollowRequestToDelete.getReceiver().getReceivedFighterFollowRequests().remove(fighterFollowRequestToDelete);
        fighterFollowRequestToDelete.getSender().getSentFighterFollowRequests().remove(fighterFollowRequestToDelete);
        this.fighterService.save(fighterFollowRequestToDelete.getReceiver());
        this.fighterService.save(fighterFollowRequestToDelete.getSender());
        // Delete
        fighterFollowRequestRepository.deleteById(id);
    }
}
