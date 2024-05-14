package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
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
    @Autowired
    private FighterRepository fighterRepository;

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
    public void delete(Long id) {
        // Check if the follow exists
        Follow followToDelete = this.followRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Follow.class));
        // Check if the follower exists
        Fighter followerFighter = this.fighterRepository.findById(followToDelete.getFollowerFighter()).orElseThrow(() -> new EntityNotFoundException(followToDelete.getFollowerFighter(), Fighter.class));
        // Check if the followed exists
        Fighter followedFighter = this.fighterRepository.findById(followToDelete.getFollowedFighter()).orElseThrow(() -> new EntityNotFoundException(followToDelete.getFollowedFighter(), Fighter.class));
        // Disassociate follower and followed from the fighters
        followerFighter.getFollowers().remove(followToDelete);
        followedFighter.getFollowing().remove(followToDelete);
        // Save the fighters
        this.fighterRepository.save(followerFighter);
        this.fighterRepository.save(followedFighter);
        // Delete the follow
        followRepository.deleteById(id);
    }
}
