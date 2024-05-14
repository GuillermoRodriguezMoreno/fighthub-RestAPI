package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.EventReviewRepository;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private EventReviewRepository eventReviewRepository;

    // *** METHODS ***
    // ***************
    // List all users
    public List<User> findAll() {
        return userRepository.findAll();
    }
    // Find user by id
    public User findById(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, User.class));
    }
    // Save user
    public User save(User user) {
        return userRepository.save(user);
    }
    // Update user
    @Transactional
    public User update(Long id, User user) {
        // Props
        User userToUpdate = findById(id);
        userToUpdate.setUserName(user.getUserName());
        userToUpdate.setBirthDate(user.getBirthDate());
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setPassword(user.getPassword());
        userToUpdate.setProfilePhoto(user.getProfilePhoto());
        // Relationships
        // Disassociate the old role
        userToUpdate.getRoles().forEach(role -> role.getUsers().remove(userToUpdate));
        this.roleRepository.saveAll(userToUpdate.getRoles());
        // Associate the new role
        userToUpdate.setRoles(user.getRoles());
        userToUpdate.getRoles().forEach(role -> role.getUsers().add(userToUpdate));
        this.roleRepository.saveAll(userToUpdate.getRoles());
        // Save
        return userRepository.save(userToUpdate);
    }
    // Delete user
    @Transactional
    public void delete(Long id) {
        // Find user
        User userToDelete = this.userRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, User.class));
        // Disassociate the role
        userToDelete.getRoles().forEach(role -> role.getUsers().remove(userToDelete));
        this.roleRepository.saveAll(userToDelete.getRoles());
        // Disassociate the event reviews
        userToDelete.getEventReviews().forEach(eventReview -> eventReview.setUser(null));
        this.eventReviewRepository.saveAll(userToDelete.getEventReviews());
        // Delete user
        userRepository.deleteById(id);
    }
}
