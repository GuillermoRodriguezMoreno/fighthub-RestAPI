package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Style;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.StyleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StyleService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private StyleRepository styleRepository;

    // *** METHODS ***
    // ***************

    // List all styles
    public List<Style> findAll() {
        return styleRepository.findAll();
    }

    // Find style by id
    public Style findById(Long id) {
        return styleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Style.class));
    }

    // Save style
    public Style save(Style style) {
        return styleRepository.save(style);
    }

    // Update style
    public Style update(Long id, Style style) {
        Style styleToUpdate = findById(id);
        styleToUpdate.setName(style.getName());
        return styleRepository.save(styleToUpdate);
    }

    // Delete style
    // Todo - Implement this
}
