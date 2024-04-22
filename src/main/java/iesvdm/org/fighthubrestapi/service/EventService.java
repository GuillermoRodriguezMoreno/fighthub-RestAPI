package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Event;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EventService {

    // *** INJECTS ***
    // ***************

    @Autowired
    private EventRepository eventRepository;

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
        return eventRepository.save(event);
    }

    // Update event
    public Event update(Long id, Event event) {
        Event eventToUpdate = findById(id);
        eventToUpdate.setName(event.getName());
        eventToUpdate.setAddress(event.getAddress());
        eventToUpdate.setDescription(event.getDescription());
        eventToUpdate.setStart_date(event.getStart_date());
        eventToUpdate.setOpen_date(event.getOpen_date());
        eventToUpdate.setEnd_date(event.getEnd_date());
        // Todo - Fix this
        eventToUpdate.setOrganizer(event.getOrganizer());
        eventToUpdate.setFighters(event.getFighters());
        eventToUpdate.setPhoto(event.getPhoto());
        return eventRepository.save(eventToUpdate);
    }

    // Delete event
    // Todo - Implement this
}
