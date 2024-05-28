package iesvdm.org.fighthubrestapi.controller;

import iesvdm.org.fighthubrestapi.entity.Category;
import iesvdm.org.fighthubrestapi.service.CategoryService;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@Slf4j
@CrossOrigin(origins = "*")
@RequestMapping("/v1/api/category")
public class CategoryController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private CategoryService categoryService;

    // *** CRUD METHODS ***
    // ********************
    // List all categories
    @GetMapping(value = {"", "/"}, params = {"!name"})
    public List<Category> findAll() {
        log.info("CategoryController: findAll");
        return categoryService.findAll();
    }
    // Find category by id
    @GetMapping(value = {"/{id}"})
    public Category findById(@PathVariable Long id) {
        log.info("CategoryController: findById - id: " + id);
        return categoryService.findById(id);
    }
    // Save category
    @PostMapping(value = {"", "/"})
    public Category save(@Valid @RequestBody Category category) {
        log.info("CategoryController: save - id: " + category.getId());
        return categoryService.save(category);
    }
    // Update category
    @PutMapping(value = {"/{id}"})
    public Category update(@PathVariable Long id, @Valid @RequestBody Category category) {
        log.info("CategoryController: update - id: " + id);
        return categoryService.update(id, category);
    }
    // Delete category
    @ResponseBody
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @DeleteMapping(value = {"/{id}"})
    public void delete(@PathVariable Long id) {
        log.info("CategoryController: delete - id: " + id);
        categoryService.delete(id);
    }

    // *** CUSTOM METHODS ***
    // **********************
    // Find by name
    @GetMapping(value = {"","/"}, params = {"name"})
    public List<Category> findCategoriesByName(@RequestParam("name") String name) {
        log.info("CategoryController: findCategoriesByName - name: " + name);
        return categoryService.findByName(Optional.of(name));
    }
}
