package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FighterService {

    // *** INJECTS ***
    // ***************

    @Autowired
    private FighterRepository fighterRepository;

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
    public Fighter update(Long id, Fighter fighter) {
        Fighter fighterToUpdate = findById(id);
        fighterToUpdate.setName(fighter.getName());
        fighterToUpdate.setWeight(fighter.getWeight());
        fighterToUpdate.setHeight(fighter.getHeight());
        fighterToUpdate.setGender(fighter.getGender());
        fighterToUpdate.setBiography(fighter.getBiography());
        fighterToUpdate.setLocation(fighter.getLocation());
        fighterToUpdate.setBirth_date(fighter.getBirth_date());
        fighterToUpdate.setWins(fighter.getWins());
        fighterToUpdate.setLosses(fighter.getLosses());
        fighterToUpdate.setDraws(fighter.getDraws());
        fighterToUpdate.setKos(fighter.getKos());
        // Todo - Fix this
        fighterToUpdate.setClub(fighter.getClub());
        fighterToUpdate.setCategory(fighter.getCategory());
        fighterToUpdate.setEvents(fighter.getEvents());
        fighterToUpdate.setProfile_photo(fighter.getProfile_photo());
        fighterToUpdate.setPhotos(fighter.getPhotos());
        return fighterRepository.save(fighterToUpdate);
    }

    // Delete fighter
    // Todo - Implement this

}
