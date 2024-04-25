package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClubService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubRepository clubRepository;

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
        // Props
        Club clubToUpdate = findById(id);
        clubToUpdate.setName(club.getName());
        clubToUpdate.setAddress(club.getAddress());
        clubToUpdate.setDescription(club.getDescription());
        // Relationships
        // Todo - Implement this
        clubToUpdate.setEvents(club.getEvents());
        clubToUpdate.setPhotos(club.getPhotos());
        return clubRepository.save(clubToUpdate);
    }
    // Delete club
    // Todo - Implement this
    public void delete(Long id) {
        clubRepository.deleteById(id);
    }
}
