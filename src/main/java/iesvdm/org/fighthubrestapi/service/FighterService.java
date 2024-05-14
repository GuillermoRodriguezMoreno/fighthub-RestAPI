package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.*;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FighterService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private StyleRepository styleRepository;
    @Autowired
    private PhotoRepository photoRepository;
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private ClubReviewRepository clubReviewRepository;


    // *** METHODS ***
    // ***************
    // List all fighters
    public List<Fighter> findAll() {
        return fighterRepository.findAll();
    }
    // Find fighter by id
    public Fighter findById(Long id) {
        return fighterRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Fighter.class));
    }
    // Save fighter
    public Fighter save(Fighter fighter) {
        return fighterRepository.save(fighter);
    }
    // Update fighter
    @Transactional
    public Fighter update(Long id, Fighter fighter) {
        // Props
        Fighter fighterToUpdate = findById(id);
        fighterToUpdate.setName(fighter.getName());
        fighterToUpdate.setActive(fighter.isActive());
        fighterToUpdate.setWeight(fighter.getWeight());
        fighterToUpdate.setHeight(fighter.getHeight());
        fighterToUpdate.setGender(fighter.getGender());
        fighterToUpdate.setBiography(fighter.getBiography());
        fighterToUpdate.setLocation(fighter.getLocation());
        fighterToUpdate.setWins(fighter.getWins());
        fighterToUpdate.setLosses(fighter.getLosses());
        fighterToUpdate.setDraws(fighter.getDraws());
        fighterToUpdate.setKos(fighter.getKos());
        fighterToUpdate.setNumberOfFights(fighter.getNumberOfFights());
        fighterToUpdate.setWinsInARow(fighter.getWinsInARow());
        // Relationships
        // Disassociate with the old club
        fighterToUpdate.getClub().getFighters().remove(fighterToUpdate);
        this.clubRepository.save(fighterToUpdate.getClub());
        // Associate with the new club
        fighterToUpdate.setClub(fighter.getClub());
        fighterToUpdate.getClub().getFighters().add(fighterToUpdate);
        this.clubRepository.save(fighterToUpdate.getClub());
        // Disassociate with the old category
        fighterToUpdate.getCategory().getFighters().remove(fighterToUpdate);
        this.categoryRepository.save(fighterToUpdate.getCategory());
        // Associate with the new category
        fighterToUpdate.setCategory(fighter.getCategory());
        fighterToUpdate.getCategory().getFighters().add(fighterToUpdate);
        this.categoryRepository.save(fighterToUpdate.getCategory());
        // Disassociate with the old styles
        fighterToUpdate.getStyles().forEach(style -> style.getFighters().remove(fighterToUpdate));
        this.styleRepository.saveAll(fighterToUpdate.getStyles());
        // Associate with the new styles
        fighterToUpdate.setStyles(fighter.getStyles());
        fighterToUpdate.getStyles().forEach(style -> style.getFighters().add(fighterToUpdate));
        this.styleRepository.saveAll(fighterToUpdate.getStyles());
        // Save
        return fighterRepository.save(fighterToUpdate);
    }
    // Delete fighter
    @Transactional
    public void delete(Long id) {
        // Find fighter
        Fighter fighterToDelete = findById(id);
        // Disassociate with the club
        fighterToDelete.getClub().getFighters().remove(fighterToDelete);
        this.clubRepository.save(fighterToDelete.getClub());
        // Disassociate with the category
        fighterToDelete.getCategory().getFighters().remove(fighterToDelete);
        this.categoryRepository.save(fighterToDelete.getCategory());
        // Disassociate with the styles
        fighterToDelete.getStyles().forEach(style -> style.getFighters().remove(fighterToDelete));
        this.styleRepository.saveAll(fighterToDelete.getStyles());
        // Disassociate with the blue corner fights
        fighterToDelete.getBlueCornerFights().forEach(fight -> fight.setBlueCornerFighter(null));
        this.fightRepository.saveAll(fighterToDelete.getBlueCornerFights());
        // Disassociate with the red corner fights
        fighterToDelete.getRedCornerFights().forEach(fight -> fight.setRedCornerFighter(null));
        this.fightRepository.saveAll(fighterToDelete.getRedCornerFights());
        // Disassociate with the club reviews
        fighterToDelete.getClubReviews().forEach(review -> review.setFighter(null));
        this.clubReviewRepository.saveAll(fighterToDelete.getClubReviews());
        // Delete fighter
        fighterRepository.deleteById(id);
    }
}
