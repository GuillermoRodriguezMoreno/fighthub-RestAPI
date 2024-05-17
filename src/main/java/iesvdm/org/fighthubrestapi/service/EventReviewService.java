package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.entity_key.EventReviewId;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class EventReviewService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewRepository eventReviewRepository;
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private FighterRepository fighterRepository;

    // *** METHODS ***
    // ***************
    // List all event reviews
    public List<EventReview> findAll() {
        return eventReviewRepository.findAll();
    }
    // Find event review by id
    public EventReview findById(EventReviewId id) {
        return eventReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, EventReview.class));
    }
    // Save event review
    public EventReview save(EventReview eventReview) {
        // Find fighter and event
        Fighter fighter = this.fighterRepository.findById(eventReview.getFighter().getId()).orElseThrow(() -> new EntityNotFoundException(eventReview.getFighter().getId(), Fighter.class));
        Event event = this.eventRepository.findById(eventReview.getEvent().getId()).orElseThrow(() -> new EntityNotFoundException(eventReview.getEvent().getId(), Event.class));
        // Associate
        eventReview.setFighter(fighter);
        eventReview.setEvent(event);
        eventReviewRepository.save(eventReview);
        // Add to user and event
        fighter.getEventReviews().add(eventReview);
        event.getReviews().add(eventReview);
        this.fighterRepository.save(fighter);
        this.eventRepository.save(event);
        return eventReview;
    }
    // Update event review
    public EventReview update(EventReviewId id, EventReview eventReview) {
        // Props
        EventReview eventReviewToUpdate = findById(id);
        eventReviewToUpdate.setContent(eventReview.getContent());
        eventReviewToUpdate.setRating(eventReview.getRating());
        return eventReviewRepository.save(eventReviewToUpdate);
    }
    // Delete event review
    public void delete(EventReviewId id) {
        // FindById
        EventReview eventReviewToDelete = this.eventReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(-1L, EventReview.class));
        // Disassociate
        eventReviewToDelete.getFighter().getEventReviews().remove(eventReviewToDelete);
        eventReviewToDelete.getEvent().getReviews().remove(eventReviewToDelete);
        this.eventRepository.save(eventReviewToDelete.getEvent());
        this.fighterRepository.save(eventReviewToDelete.getFighter());
        // Delete
        eventReviewRepository.deleteById(id);
    }
}
