package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.Photo;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.*;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class EventService {

    // toDo -- Implementar que si ya existe un evento con el mismo nombre no se pueda crear otro
    // toDo -- Implementar que un evento solo lo pueda crear un luchador con rol de administrador de club
    // toDo -- Añadir funcionalidad de poder crear peleas al crear un evento

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private ClubRepository clubRepository;
    @Autowired
    private FightRepository fightRepository;
    @Autowired
    private EventReviewRepository eventReviewRepository;
    @Autowired
    private FighterRepository fighterRepository;


    // *** METHODS ***
    // ***************
    // List all events
    public List<Event> findAll() {
        return eventRepository.findAll();
    }
    // Find event by id
    public Event findById(Long id) {
        return eventRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Event.class));
    }
    // Save event
    public Event save(Event event) {
        // Find organizer
        Club organizer = this.clubRepository.findById(event.getOrganizer().getId()).orElseThrow(() -> new EntityNotFoundException(event.getOrganizer().getId(), Club.class));
        // Associate
        event.setOrganizer(organizer);
        eventRepository.save(event);
        // Add to organizer
        organizer.getEventsParticipated().add(event);
        this.clubRepository.save(organizer);
        // Add to fights
        event.getFights().forEach(fight -> fight.setEvent(event));
        this.fightRepository.saveAll(event.getFights());
        return event;
    }
    // Update event
    public Event update(Long id, Event event) {
        // Props
        Event eventToUpdate = findById(id);
        eventToUpdate.setName(event.getName());
        eventToUpdate.setAddress(event.getAddress());
        eventToUpdate.setDescription(event.getDescription());
        eventToUpdate.setStartDate(event.getStartDate());
        eventToUpdate.setOpenDate(event.getOpenDate());
        eventToUpdate.setEndDate(event.getEndDate());
        eventToUpdate.setPhoto(event.getPhoto());
        // Disassociate with the old organizer
        eventToUpdate.getOrganizer().getEventsOrganized().remove(eventToUpdate);
        this.clubRepository.save(eventToUpdate.getOrganizer());
        // Associate with the new organizer
        eventToUpdate.setOrganizer(event.getOrganizer());
        eventToUpdate.getOrganizer().getEventsOrganized().add(eventToUpdate);
        this.clubRepository.save(eventToUpdate.getOrganizer());
        // Disassociate with the old fighters
        eventToUpdate.getFightersParticipating().forEach(fighter -> fighter.getEventsParticipated().remove(eventToUpdate));
        this.fighterRepository.saveAll(eventToUpdate.getFightersParticipating());
        // Associate with the new fighters
        eventToUpdate.setFightersParticipating(event.getFightersParticipating());
        eventToUpdate.getFightersParticipating().forEach(fighter -> fighter.getEventsParticipated().add(eventToUpdate));
        this.fighterRepository.saveAll(eventToUpdate.getFightersParticipating());
        // Disassociate with the old clubs participating
        eventToUpdate.getClubsParticipating().forEach(club -> club.getEventsParticipated().remove(eventToUpdate));
        this.clubRepository.saveAll(eventToUpdate.getClubsParticipating());
        // Associate with the new clubs participating
        eventToUpdate.setClubsParticipating(event.getClubsParticipating());
        eventToUpdate.getClubsParticipating().forEach(club -> club.getEventsParticipated().add(eventToUpdate));
        this.clubRepository.saveAll(eventToUpdate.getClubsParticipating());
        // Disassociate with the old fights
        eventToUpdate.getFights().forEach(fight -> fight.setEvent(null));
        this.fightRepository.saveAll(eventToUpdate.getFights());
        // Associate with the new fights
        eventToUpdate.setFights(event.getFights());
        eventToUpdate.getFights().forEach(fight -> fight.setEvent(eventToUpdate));
        this.fightRepository.saveAll(eventToUpdate.getFights());
        // Save
        return eventRepository.save(eventToUpdate);
    }
    // Delete event
    public void delete(Long id) {
        // FindById
        Event eventToDelete = this.eventRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Event.class));
        // Disassociate with the club
        eventToDelete.getOrganizer().getEventsOrganized().remove(eventToDelete);
        this.clubRepository.save(eventToDelete.getOrganizer());
        // Disassociate with fighters participating
        eventToDelete.getFightersParticipating().forEach(fighter -> fighter.getEventsParticipated().remove(eventToDelete));
        this.fighterRepository.saveAll(eventToDelete.getFightersParticipating());
        // Disassociate with clubs participating
        eventToDelete.getClubsParticipating().forEach(club -> club.getEventsParticipated().remove(eventToDelete));
        this.clubRepository.saveAll(eventToDelete.getClubsParticipating());
        // Disassociate with fights
        eventToDelete.getFights().forEach(fight -> fight.setEvent(null));
        this.fightRepository.saveAll(eventToDelete.getFights());
        // Disassociate with reviews
        eventToDelete.getReviews().forEach(review -> review.setEvent(null));
        this.eventReviewRepository.saveAll(eventToDelete.getReviews());
        // Delete
        eventRepository.deleteById(id);
    }
}
