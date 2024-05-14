package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Photo;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.PhotoRepository;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhotoService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private PhotoRepository photoRepository;
    @Autowired
    private UserRepository userRepository;

    // *** METHODS ***
    // ***************
    // List all photos
    public List<Photo> findAll() {
        return photoRepository.findAll();
    }
    // Find photo by id
    public Photo findById(Long id) {
        return photoRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Photo.class));
    }
    // Save photo
    public Photo save(Photo photo) {
        return photoRepository.save(photo);
    }
    // Update photo
    public Photo update(Long id, Photo photo) {
        Photo photoToUpdate = this.photoRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Photo.class));
        photoToUpdate.setEntityType(photoToUpdate.getUser().getClass().getSimpleName());
        photoToUpdate.setUrl(photo.getUrl());
        // Disassociate the user from the photo
        photoToUpdate.getUser().getPhotos().remove(photoToUpdate);
        this.userRepository.save(photoToUpdate.getUser());
        // Associate the new user to the photo
        photoToUpdate.setUser(photo.getUser());
        photoToUpdate.getUser().getPhotos().add(photoToUpdate);
        this.userRepository.save(photoToUpdate.getUser());
        // Save the photo
        return photoRepository.save(photoToUpdate);
    }
    // Delete photo
    public void delete(Long id) {
        // Find the photo
        Photo photoToDelete = this.photoRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Photo.class));
        // Disassociate the user from the photo
        photoToDelete.getUser().getPhotos().remove(photoToDelete);
        this.userRepository.save(photoToDelete.getUser());
        // Delete the photo
        this.photoRepository.deleteById(id);
    }
}
