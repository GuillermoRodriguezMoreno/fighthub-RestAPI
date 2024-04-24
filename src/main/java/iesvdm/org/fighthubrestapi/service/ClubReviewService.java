package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubReviewService{

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewRepository clubReviewRepository;

    // *** METHODS ***
    // ***************
    // List all club reviews
    public List<ClubReview> findAll() {
        return clubReviewRepository.findAll();
    }
    // Find club review by id
    public ClubReview findById(Long id) {
        return clubReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, ClubReview.class));
    }
    // Save club review
    public ClubReview save(ClubReview clubReview) {
        return clubReviewRepository.save(clubReview);
    }
    // Update club review
    public ClubReview update(Long id, ClubReview clubReview) {
        // Props
        ClubReview clubReviewToUpdate = findById(id);
        clubReviewToUpdate.setContent(clubReview.getContent());
        clubReviewToUpdate.setRating(clubReview.getRating());
        // Relationships
        // Todo - Implement this
        return clubReviewRepository.save(clubReviewToUpdate);
    }
    // Delete club review
    // Todo - Implement this
    public void delete(Long id) {
        clubReviewRepository.deleteById(id);
    }
}
