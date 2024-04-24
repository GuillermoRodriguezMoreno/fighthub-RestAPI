package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Photo;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.PhotoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhotoService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private PhotoRepository photoRepository;

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
        Photo photoToUpdate = findById(id);
        photoToUpdate.setEntity_type(photoToUpdate.getUser().getClass().getSimpleName());
        photoToUpdate.setUrl(photo.getUrl());
        photoToUpdate.setUser(photo.getUser());
        return photoRepository.save(photoToUpdate);
    }
    // Delete photo
    // Todo - Implement this
    public void delete(Long id) {
        photoRepository.deleteById(id);
    }
}
