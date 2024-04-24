package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FollowRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FollowService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FollowRepository followRepository;

    // *** METHODS ***
    // ***************
    // List all follows
    public List<Follow> findAll() {
        return followRepository.findAll();
    }
    // Find follow by id
    public Follow findById(Long id) {
        return followRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Follow.class));
    }
    // Save follow
    public Follow save(Follow follow) {
        return followRepository.save(follow);
    }
    // Update follow
    public Follow update(Long id, Follow follow) {
        Follow followToUpdate = findById(id);
        followToUpdate.setFollowerFighter(follow.getFollowerFighter());
        followToUpdate.setFollowedFighter(follow.getFollowedFighter());
        return followRepository.save(followToUpdate);
    }
    // Delete follow
    // Todo - Implement this
    public void delete(Long id) {
        followRepository.deleteById(id);
    }
}
