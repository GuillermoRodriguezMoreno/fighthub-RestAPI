package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.ClubReviewRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ClubReviewService{

    // toDo -- Implementar que si ya existe una review de un club por un luchador no se pueda crear otra

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
    public ClubReview findById(ClubReviewId id) {
        return clubReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, ClubReview.class));
    }
    // Save club review
    public ClubReview save(ClubReview clubReview) {
        // Find club and fighter
        Club club = this.clubRepository.findById(clubReview.getClub().getId()).orElseThrow(() -> new EntityNotFoundException(clubReview.getClub().getId(), Club.class));
        Fighter fighter = this.fighterRepository.findById(clubReview.getFighter().getId()).orElseThrow(() -> new EntityNotFoundException(clubReview.getFighter().getId(), Fighter.class));
        // Set club and fighter
        clubReview.setClub(club);
        clubReview.setFighter(fighter);
        // Save club review
        this.clubReviewRepository.save(clubReview);
        // Add club review to club and fighter
        club.getReviews().add(clubReview);
        fighter.getClubReviews().add(clubReview);
        this.clubRepository.save(club);
        this.fighterRepository.save(fighter);
        return clubReview;
    }
    // Update club review
    public ClubReview update(ClubReviewId id, ClubReview clubReview) {
        // Props
        ClubReview clubReviewToUpdate = this.clubReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, ClubReview.class));
        clubReviewToUpdate.setContent(clubReview.getContent());
        clubReviewToUpdate.setRating(clubReview.getRating());
        return this.clubReviewRepository.save(clubReviewToUpdate);
    }
    // Delete club review
    public void delete(ClubReviewId id) {
        // Find club review by id
        ClubReview clubReviewToDelete = this.clubReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, ClubReview.class));
        // Dissociate club review from fighter and club
        clubReviewToDelete.getFighter().getClubReviews().remove(clubReviewToDelete);
        clubReviewToDelete.getClub().getReviews().remove(clubReviewToDelete);
        this.fighterRepository.save(clubReviewToDelete.getFighter());
        this.clubRepository.save(clubReviewToDelete.getClub());
        // Delete club review
        this.clubReviewRepository.deleteById(id);
    }

    // *** CUSTOM METHODS ***
    // **********************
    // Find all club reviews by club id
    public Page<ClubReview> findByClubId(Long clubId, Pageable pageable) {
        return this.clubReviewRepository.findByClubId(clubId, pageable);
    }
}
