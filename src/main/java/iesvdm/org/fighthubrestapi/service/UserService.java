package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private UserRepository userRepository;

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
    public User update(Long id, User user) {
        // Props
        User userToUpdate = findById(id);
        userToUpdate.setUserName(user.getUserName());
        userToUpdate.setBirthDate(user.getBirthDate());
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setPassword(user.getPassword());
        userToUpdate.setRole(user.getRole());
        userToUpdate.setProfilePhoto(user.getProfilePhoto());
        // Relationships
        // Todo - Fix this
        userToUpdate.setPhotos(user.getPhotos());
        return userRepository.save(userToUpdate);
    }
    // Delete user
    // Todo - Implement this
    public void delete(Long id) {
        userRepository.deleteById(id);
    }
}
