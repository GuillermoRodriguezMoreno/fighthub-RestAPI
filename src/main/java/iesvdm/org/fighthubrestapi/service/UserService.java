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
        User userToUpdate = findById(id);
        userToUpdate.setUser_name(user.getUser_name());
        userToUpdate.setBirth_date(user.getBirth_date());
        userToUpdate.setEmail(user.getEmail());
        userToUpdate.setPassword(user.getPassword());
        userToUpdate.setRole(user.getRole());
        userToUpdate.setProfile_photo(user.getProfile_photo());
        // Todo - Fix this
        userToUpdate.setPhotos(user.getPhotos());
        return userRepository.save(userToUpdate);
    }

    // Delete user
    // Todo - Implement this
}
