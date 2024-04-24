package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private CategoryRepository categoryRepository;

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
        Category categoryToUpdate = findById(id);
        categoryToUpdate.setName(category.getName());
        return categoryRepository.save(categoryToUpdate);
    }
    // Delete category
    // Todo - Implement this
    public void delete(Long id) {
        categoryRepository.deleteById(id);
    }
}
