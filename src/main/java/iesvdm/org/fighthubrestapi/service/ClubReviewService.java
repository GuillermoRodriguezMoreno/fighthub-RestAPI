package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.ClubReviewRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubReviewService{

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubReviewRepository clubReviewRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private ClubRepository clubRepository;

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
        return clubReviewRepository.save(clubReviewToUpdate);
    }
    // Delete club review
    @Transactional
    public void delete(Long id) {
        // Find club review by id
        ClubReview clubReviewToDelete = findById(id);
        // Dissociate club review from fighter and club
        clubReviewToDelete.getFighter().getClubReviews().remove(clubReviewToDelete);
        clubReviewToDelete.getClub().getReviews().remove(clubReviewToDelete);
        fighterRepository.save(clubReviewToDelete.getFighter());
        clubRepository.save(clubReviewToDelete.getClub());
        // Delete club review
        clubReviewRepository.deleteById(id);
    }
}
