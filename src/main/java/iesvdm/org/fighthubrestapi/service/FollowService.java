package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
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
    public Follow findById(FollowId id) {
        return this.followRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, Follow.class));
    }
    // Save follow
    public Follow save(Follow follow) {
        // Find fighters
        Fighter followerFighter = this.fighterRepository.findById(follow.getFollowerFighter().getId()).orElseThrow(() -> new EntityNotFoundException(follow.getFollowerFighter().getId(), Fighter.class));
        Fighter followedFighter = this.fighterRepository.findById(follow.getFollowedFighter().getId()).orElseThrow(() -> new EntityNotFoundException(follow.getFollowedFighter().getId(), Fighter.class));
        // Associate with follow
        follow.setFollowerFighter(followerFighter);
        follow.setFollowedFighter(followedFighter);
        // Associate with fighters
        followerFighter.getFollowers().add(follow);
        followedFighter.getFollowing().add(follow);
        // Save fighters
        this.fighterRepository.save(followerFighter);
        this.fighterRepository.save(followedFighter);

        return follow;
    }
    // Update follow
    public Follow update(FollowId id, Follow follow) {
        Follow followToUpdate = this.followRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, Follow.class));
        // Dissaociate the old fighters from the follow
        followToUpdate.getFollowedFighter().getFollowing().remove(followToUpdate);
        followToUpdate.getFollowerFighter().getFollowers().remove(followToUpdate);
        this.fighterRepository.save(followToUpdate.getFollowedFighter());
        this.fighterRepository.save(followToUpdate.getFollowerFighter());
        // Associate the new fighters to the follow
        followToUpdate.setFollowerFighter(follow.getFollowerFighter());
        followToUpdate.setFollowedFighter(follow.getFollowedFighter());
        followToUpdate.getFollowerFighter().getFollowers().add(followToUpdate);
        followToUpdate.getFollowedFighter().getFollowing().add(followToUpdate);
        this.fighterRepository.save(followToUpdate.getFollowerFighter());
        this.fighterRepository.save(followToUpdate.getFollowedFighter());
        // Update the follow
        return followRepository.save(followToUpdate);
    }
    // Delete follow
    public void delete(FollowId id) {
        // Check if the follow exists
        Follow followToDelete = this.followRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, Follow.class));
        // Check if the follower exists
        Fighter followerFighter = this.fighterRepository.findById(followToDelete.getFollowerFighter().getId()).orElseThrow(() -> new EntityNotFoundException(followToDelete.getFollowerFighter().getId(), Fighter.class));
        // Check if the followed exists
        Fighter followedFighter = this.fighterRepository.findById(followToDelete.getFollowedFighter().getId()).orElseThrow(() -> new EntityNotFoundException(followToDelete.getFollowedFighter().getId(), Fighter.class));
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
