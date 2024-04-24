package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FightService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FightRepository fightRepository;

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
        fightToUpdate.setFight_order(fight.getFight_order());
        fightToUpdate.setRound(fight.getRound());
        fightToUpdate.set_ko(fight.is_ko());
        fightToUpdate.setWeight(fight.getWeight());
        fightToUpdate.set_title_fight(fight.is_title_fight());
        // Relationships
        // Todo - Implement this
        return fightRepository.save(fightToUpdate);
    }
    // Delete fight
    // Todo - Implement this
    public void delete(Long id) {
        fightRepository.deleteById(id);
    }
}
