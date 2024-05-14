package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FightService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private StyleRepository styleRepository;

    // *** METHODS ***
    // ***************
    // List all fights
    public List<Fight> findAll() {
        return fightRepository.findAll();
    }
    // Find fight by id
    public Fight findById(Long id) {
        return fightRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Fight.class));
    }
    // Save fight
    public Fight save(Fight fight) {
        return fightRepository.save(fight);
    }
    // Update fight
    public Fight update(Long id, Fight fight) {
        // Props
        Fight fightToUpdate = findById(id);
        fightToUpdate.setStartTime(fight.getStartTime());
        fightToUpdate.setFightOrder(fight.getFightOrder());
        fightToUpdate.setKo(fight.isKo());
        fightToUpdate.setRound(fight.getRound());
        fightToUpdate.setWeight(fight.getWeight());
        fightToUpdate.setTitleFight(fight.isTitleFight());
        fightToUpdate.setWinner(fight.getWinner());
        // Relationships
        // Disassociate blueCornerFighter
        if (fightToUpdate.getBlueCornerFighter() != null) {
            fightToUpdate.getBlueCornerFighter().getBlueCornerFights().remove(fightToUpdate);
            this.fighterRepository.save(fightToUpdate.getBlueCornerFighter());
        }
        // Associate blueCornerFighter
        if (fight.getBlueCornerFighter() != null) {
            fightToUpdate.setBlueCornerFighter(fight.getBlueCornerFighter());
            fightToUpdate.getBlueCornerFighter().getBlueCornerFights().add(fightToUpdate);
            this.fighterRepository.save(fightToUpdate.getBlueCornerFighter());
        }
        // Disassociate redCornerFighter
        if (fightToUpdate.getRedCornerFighter() != null) {
            fightToUpdate.getRedCornerFighter().getRedCornerFights().remove(fightToUpdate);
            this.fighterRepository.save(fightToUpdate.getRedCornerFighter());
        }
        // Associate redCornerFighter
        if (fight.getRedCornerFighter() != null) {
            fightToUpdate.setRedCornerFighter(fight.getRedCornerFighter());
            fightToUpdate.getRedCornerFighter().getRedCornerFights().add(fightToUpdate);
            this.fighterRepository.save(fightToUpdate.getRedCornerFighter());
        }
        // Disassociate event
        if (fightToUpdate.getEvent() != null) {
            fightToUpdate.getEvent().getFights().remove(fightToUpdate);
            this.eventRepository.save(fightToUpdate.getEvent());
        }
        // Associate event
        if (fight.getEvent() != null) {
            fightToUpdate.setEvent(fight.getEvent());
            fightToUpdate.getEvent().getFights().add(fightToUpdate);
            this.eventRepository.save(fightToUpdate.getEvent());
        }
        // Disassociate category
        if (fightToUpdate.getCategory() != null) {
            fightToUpdate.getCategory().getFights().remove(fightToUpdate);
            this.categoryRepository.save(fightToUpdate.getCategory());
        }
        // Associate category
        if (fight.getCategory() != null) {
            fightToUpdate.setCategory(fight.getCategory());
            fightToUpdate.getCategory().getFights().add(fightToUpdate);
            this.categoryRepository.save(fightToUpdate.getCategory());
        }
        // Disassociate style
        if (fightToUpdate.getStyle() != null) {
            fightToUpdate.getStyle().getFights().remove(fightToUpdate);
            this.styleRepository.save(fightToUpdate.getStyle());
        }
        // Associate style
        if (fight.getStyle() != null) {
            fightToUpdate.setStyle(fight.getStyle());
            fightToUpdate.getStyle().getFights().add(fightToUpdate);
            this.styleRepository.save(fightToUpdate.getStyle());
        }
        // Save fight
        return fightRepository.save(fightToUpdate);
    }
    // Delete fight
    public void delete(Long id) {
        // Find fight
        Fight fightToDelete = this.fightRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Fight.class));
        // Disassociate blueCornerFighter
        if (fightToDelete.getBlueCornerFighter() != null) {
            fightToDelete.getBlueCornerFighter().getBlueCornerFights().remove(fightToDelete);
            this.fighterRepository.save(fightToDelete.getBlueCornerFighter());
        }
        // Disassociate redCornerFighter
        if (fightToDelete.getRedCornerFighter() != null) {
            fightToDelete.getRedCornerFighter().getRedCornerFights().remove(fightToDelete);
            this.fighterRepository.save(fightToDelete.getRedCornerFighter());
        }
        // Disassociate event
        if (fightToDelete.getEvent() != null) {
            fightToDelete.getEvent().getFights().remove(fightToDelete);
            this.eventRepository.save(fightToDelete.getEvent());
        }
        // Disassociate category
        if (fightToDelete.getCategory() != null) {
            fightToDelete.getCategory().getFights().remove(fightToDelete);
            this.categoryRepository.save(fightToDelete.getCategory());
        }
        // Disassociate style
        if (fightToDelete.getStyle() != null) {
            fightToDelete.getStyle().getFights().remove(fightToDelete);
            this.styleRepository.save(fightToDelete.getStyle());
        }
        // Delete fight
        fightRepository.deleteById(id);
    }
}
