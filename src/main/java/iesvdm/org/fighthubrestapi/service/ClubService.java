package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class ClubService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** METHODS ***
    // ***************
    // List all clubs
    public List<Club> findAll() {
        return clubRepository.findAll();
    }
    // Find club by id
    public Club findById(Long id) {
        return clubRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Club.class));
    }
    // Save club
    public Club save(Club club) {
        return clubRepository.save(club);
    }
    // Update club
    public Club update(Long id, Club club) {
        // Find club
        Club clubToUpdate = clubRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException(id, Club.class));
        // Update props
        clubToUpdate.setName(club.getName());
        clubToUpdate.setAddress(club.getAddress());
        clubToUpdate.setDescription(club.getDescription());
        // Update president and set club to president
        if (club.getPresident() != null) {
            clubToUpdate.setPresident(club.getPresident());
            clubToUpdate.getPresident().setClub(clubToUpdate);
            fighterRepository.save(clubToUpdate.getPresident());
        }
        // Update fighters
        Set<Fighter> updatedFighters = club.getFighters();
        Set<Fighter> existingFighters = clubToUpdate.getFighters();
        // Disassociate fighters that are no longer associated with the club
        existingFighters.stream()
                .filter(fighter -> !updatedFighters.contains(fighter))
                .forEach(fighter -> {
                    fighter.setClub(null);
                    fighterRepository.save(fighter);
                });
        // Associate new fighters with the club
        updatedFighters.stream()
                .filter(fighter -> !existingFighters.contains(fighter))
                .forEach(fighter -> {
                    fighter.setClub(clubToUpdate);
                    fighterRepository.save(fighter);
                });
        // Set the updated set of fighters to the club
        clubToUpdate.setFighters(updatedFighters);
        // Update events
        // Todo - Implement this

        return clubRepository.save(clubToUpdate);
    }
    // Delete club
    // Todo - Implement this
    public void delete(Long id) {
        clubRepository.deleteById(id);
    }
}
