package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
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
    @Autowired
    private EventRepository eventRepository;

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
    @Transactional
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
        Set<Event> updatedEvents = club.getEvents();
        Set<Event> existingEvents = clubToUpdate.getEvents();
        // Disassociate events that are no longer associated with the club
        existingEvents.stream()
                .filter(event -> !updatedEvents.contains(event))
                .forEach(event -> {
                    event.setOrganizer(null);
                    eventRepository.save(event);
                });
        // Associate new events with the club
        updatedEvents.stream()
                .filter(event -> !existingEvents.contains(event))
                .forEach(event -> {
                    event.setOrganizer(clubToUpdate);
                    eventRepository.save(event);
                });
        // Set the updated set of events to the club
        clubToUpdate.setEvents(updatedEvents);
        // Save
        return clubRepository.save(clubToUpdate);
    }
    // Delete club
    @Transactional
    public void delete(Long id) {
        Club clubToDelete = clubRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException(id, Club.class));
        // Dissaociate president from club
        if (clubToDelete.getPresident() != null) {
            clubToDelete.getPresident().setClub(null);
            fighterRepository.save(clubToDelete.getPresident());
        }
        // Dissociate fighters from club
        clubToDelete.getFighters().forEach(fighter -> {
            fighter.setClub(null);
            fighterRepository.save(fighter);
        });
        // Dissociate events from club
        clubToDelete.getEvents().forEach(event -> {
            event.setOrganizer(null);
            eventRepository.save(event);
        });
        // Delete club
        clubRepository.deleteById(id);
    }
}
