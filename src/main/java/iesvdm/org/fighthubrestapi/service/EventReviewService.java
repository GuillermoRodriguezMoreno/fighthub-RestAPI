package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventReviewService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewRepository eventReviewRepository;
    @Autowired
    private EventRepository eventRepository;
    @Autowired
    private UserRepository userRepository;

    // *** METHODS ***
    // ***************
    // List all event reviews
    public List<EventReview> findAll() {
        return eventReviewRepository.findAll();
    }
    // Find event review by id
    public EventReview findById(Long id) {
        return eventReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, EventReview.class));
    }
    // Save event review
    public EventReview save(EventReview eventReview) {
        // Find user and event
        User user = this.userRepository.findById(eventReview.getUser().getId()).orElseThrow(() -> new EntityNotFoundException(eventReview.getUser().getId(), User.class));
        Event event = this.eventRepository.findById(eventReview.getEvent().getId()).orElseThrow(() -> new EntityNotFoundException(eventReview.getEvent().getId(), Event.class));
        // Associate
        eventReview.setUser(user);
        eventReview.setEvent(event);
        eventReviewRepository.save(eventReview);
        // Add to user and event
        user.getEventReviews().add(eventReview);
        event.getReviews().add(eventReview);
        this.userRepository.save(user);
        this.eventRepository.save(event);
        return eventReview;
    }
    // Update event review
    public EventReview update(Long id, EventReview eventReview) {
        // Props
        EventReview eventReviewToUpdate = findById(id);
        eventReviewToUpdate.setContent(eventReview.getContent());
        eventReviewToUpdate.setRating(eventReview.getRating());
        return eventReviewRepository.save(eventReviewToUpdate);
    }
    // Delete event review
    public void delete(Long id) {
        // FindById
        EventReview eventReviewToDelete = this.eventReviewRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, EventReview.class));
        // Dissaociate
        eventReviewToDelete.getUser().getEventReviews().remove(eventReviewToDelete);
        eventReviewToDelete.getEvent().getReviews().remove(eventReviewToDelete);
        this.eventRepository.save(eventReviewToDelete.getEvent());
        this.userRepository.save(eventReviewToDelete.getUser());
        // Delete
        eventReviewRepository.deleteById(id);
    }
}
