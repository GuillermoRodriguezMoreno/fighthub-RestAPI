package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.CategoryRepository;
import iesvdm.org.fighthubrestapi.repository.FightRepository;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class CategoryService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private FightRepository fightRepository;

    // *** METHODS ***
    // ***************
    // List all categories
    public List<Category> findAll() {
        return categoryRepository.findAll();
    }
    // Find category by id
    public Category findById(Long id) {
        return categoryRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Category.class));
    }
    // Save category
    public Category save(Category category) {
        return categoryRepository.save(category);
    }
    // Update category
    public Category update(Long id, Category category) {
        // Find category
        Category categoryToUpdate = this.categoryRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Category.class));
        // Update props
        categoryToUpdate.setName(category.getName());
        // Save
        return categoryRepository.save(categoryToUpdate);
    }
    // Delete category
    public void delete(Long id) {
        // Find category by id
        Category categoryToDelete = this.categoryRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Category.class));
        // Get all fighters and fights from category to delete and set category to null
        categoryToDelete.getFighters().forEach(fighter -> {
            fighter.setCategory(null);
            fighterRepository.save(fighter);
        });
        categoryToDelete.getFights().forEach(fight -> {
            fight.setCategory(null);
            fightRepository.save(fight);
        });
        // Delete category
        categoryRepository.deleteById(id);
    }
}
