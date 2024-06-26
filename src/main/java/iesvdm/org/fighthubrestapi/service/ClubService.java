package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.PhotoRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@Transactional
public class ClubService {

    // toDo -- Implementar que si ya existe un club con el mismo nombre no se pueda crear otro
    // toDo -- Implementar que un club solo lo pueda crear un luchador con rol de administrador de club

    // *** INJECTS ***
    // ***************
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private PhotoRepository photoRepository;

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
        return this.clubRepository.save(club);
    }
    // Update club
    public Club update(Long id, Club club) {
        // Find club
        Club clubToUpdate = clubRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException(id, Club.class));
        // Update props
        clubToUpdate.setName(club.getName());
        clubToUpdate.setAddress(club.getAddress());
        clubToUpdate.setPhone(club.getPhone());
        clubToUpdate.setEmail(club.getEmail());
        clubToUpdate.setDescription(club.getDescription());
        clubToUpdate.setDeleted(club.isDeleted());
        // Disassociate profile photo from club
        if (clubToUpdate.getProfilePhoto() != null) {
            clubToUpdate.getProfilePhoto().setClub(null);
            this.photoRepository.save(clubToUpdate.getProfilePhoto());
        }
        // Associate profile photo to club
        if (club.getProfilePhoto() != null) {
            clubToUpdate.setProfilePhoto(club.getProfilePhoto());
            clubToUpdate.getProfilePhoto().setClub(clubToUpdate);
            this.photoRepository.save(clubToUpdate.getProfilePhoto());
        }
        // Disassociate president from club
        if (clubToUpdate.getPresident() != null) {
            clubToUpdate.getPresident().setClubAdministered(null);
            this.fighterRepository.save(clubToUpdate.getPresident());
        }
        // Associate president to club
        if (club.getPresident() != null) {
            clubToUpdate.setPresident(club.getPresident());
            clubToUpdate.getPresident().setClubAdministered(clubToUpdate);
        }
        // Save
        return clubRepository.save(clubToUpdate);
    }
    // Delete club
    public void delete(Long id) {
        Club clubToDelete = clubRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException(id, Club.class));
        // Disassociate profile photo from club
        if (clubToDelete.getProfilePhoto() != null) {
            clubToDelete.getProfilePhoto().setClub(null);
            this.photoRepository.save(clubToDelete.getProfilePhoto());
        }
        // Disassociate president from club
        if (clubToDelete.getPresident() != null) {
            Fighter president = clubToDelete.getPresident();
            clubToDelete.setPresident(null);
            president.setClubAdministered(null);
            this.fighterRepository.save(president);
        }
        // Disassociate club from events participated
        clubToDelete.getEventsParticipated().forEach(event -> event.getClubsParticipating().remove(clubToDelete));
        this.eventRepository.saveAll(clubToDelete.getEventsParticipated());
        // Dissociate fighters from club
        clubToDelete.getFighters().forEach(fighter -> fighter.setClub(null));
        this.fighterRepository.saveAll(clubToDelete.getFighters());
        // Dissociate events organized from club
        clubToDelete.getEventsOrganized().forEach(event -> event.setOrganizer(null));
        this.eventRepository.saveAll(clubToDelete.getEventsOrganized());
        // Delete club
        clubRepository.deleteById(id);
    }
}
