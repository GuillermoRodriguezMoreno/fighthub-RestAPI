package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.ClubRepository;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {

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
        // Relationships
        eventToUpdate.setPhoto(event.getPhoto());
        // Disassociate with the old club
        eventToUpdate.getOrganizer().getEventsParticipated().remove(eventToUpdate);
        this.clubRepository.save(eventToUpdate.getOrganizer());
        // Associate with the new club
        eventToUpdate.setOrganizer(event.getOrganizer());
        eventToUpdate.getOrganizer().getEventsParticipated().add(eventToUpdate);
        this.clubRepository.save(eventToUpdate.getOrganizer());
        // Save
        return eventRepository.save(eventToUpdate);
    }
    // Delete event
    @Transactional
    public void delete(Long id) {
        // FindById
        Event eventToDelete = this.eventRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Event.class));
        // Disassociate with the club
        eventToDelete.getOrganizer().getEventsParticipated().remove(eventToDelete);
        this.clubRepository.save(eventToDelete.getOrganizer());
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
