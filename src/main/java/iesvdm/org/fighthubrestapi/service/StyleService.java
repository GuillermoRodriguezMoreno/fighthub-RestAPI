package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Style;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.StyleRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StyleService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private StyleRepository styleRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private FightRepository fightRepository;

    // *** METHODS ***
    // ***************
    // List all styles
    public List<Style> findAll() {
        return styleRepository.findAll();
    }
    // Find style by id
    public Style findById(Long id) {
        return styleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Style.class));
    }
    // Save style
    public Style save(Style style) {
        return styleRepository.save(style);
    }
    // Update style
    public Style update(Long id, Style style) {
        Style styleToUpdate = findById(id);
        styleToUpdate.setName(style.getName());
        return styleRepository.save(styleToUpdate);
    }
    // Delete style
    @Transactional
    public void delete(Long id) {
        // Find style by id
        Style styleToDelete = styleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Style.class));
        // Dissociate style from fighters and fights
        styleToDelete.getFighters().forEach(fighter -> fighter.getStyles().remove(styleToDelete));
        fighterRepository.saveAll(styleToDelete.getFighters());
        styleToDelete.getFights().forEach(fight -> fight.setStyle(null));
        fightRepository.saveAll(styleToDelete.getFights());
        // Delete style
        styleRepository.deleteById(id);
    }
}
