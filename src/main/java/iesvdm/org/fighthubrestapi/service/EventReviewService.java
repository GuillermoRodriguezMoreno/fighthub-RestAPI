package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.EventReview;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventReviewService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EventReviewRepository eventReviewRepository;

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
        return eventReviewRepository.save(eventReview);
    }
    // Update event review
    public EventReview update(Long id, EventReview eventReview) {
        // Props
        EventReview eventReviewToUpdate = findById(id);
        eventReviewToUpdate.setContent(eventReview.getContent());
        eventReviewToUpdate.setRating(eventReview.getRating());
        // Relationships
        // Todo - Implement this
        return eventReviewRepository.save(eventReviewToUpdate);
    }
    // Delete event review
    // Todo - Implement this
    public void delete(Long id) {
        eventReviewRepository.deleteById(id);
    }
}
