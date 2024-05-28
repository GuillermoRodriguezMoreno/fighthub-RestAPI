package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Style;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.*;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
@Transactional
public class FighterService {

    // toDo -- Implementar que un luchador pueda convertirse en administrador de un club
    // toDo -- Implementar que un luchador administrador de club pueda crear un club

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
        this.fighterRepository.save(fighter);
        // Associate with style
        Set<Style> styles = fighter.getStyles();
        styles.forEach(style -> style.getFighters().add(fighter));
        this.styleRepository.saveAll(styles);
        // Associate with the category
        fighter.getCategory().getFighters().add(fighter);
        this.categoryRepository.save(fighter.getCategory());
        return fighter;
    }
    // Update fighter
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
        if (fighterToUpdate.getClub() != null) {
            fighterToUpdate.getClub().getFighters().remove(fighterToUpdate);
            this.clubRepository.save(fighterToUpdate.getClub());
        }
        // Associate with the new club
        if (fighter.getClub() != null) {
            fighterToUpdate.setClub(fighter.getClub());
            fighterToUpdate.getClub().getFighters().add(fighterToUpdate);
            this.clubRepository.save(fighterToUpdate.getClub());
        }
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
    public void delete(Long id) {
        // Find fighter
        Fighter fighterToDelete = findById(id);
        // Disassociate with the club
        if (fighterToDelete.getClub() != null) {
            fighterToDelete.getClub().getFighters().remove(fighterToDelete);
            this.clubRepository.save(fighterToDelete.getClub());
        }
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

    // *** CUSTOM METHODS ***
    // **********************
    // Find fighters by name
    public Page<Fighter> findFightersByName(Optional<String> name, Pageable pageable) {
        return fighterRepository.findByNameContainingIgnoreCaseOrderByNameAsc(name.orElse(""), pageable);
    }
    // Find fighters by username
    public Page<Fighter> findFightersByUserName(Optional<String> userName, Pageable pageable) {
        return fighterRepository.findByUserNameContainingIgnoreCaseOrderByNameAsc(userName.orElse(""), pageable);
    }
}
