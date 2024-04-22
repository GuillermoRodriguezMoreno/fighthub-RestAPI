package iesvdm.org.fighthubrestapi.exception;

public class EntityNotFoundException extends RuntimeException{
    public EntityNotFoundException(Long id, Class entity) {
        super("Not found " + entity.getSimpleName() + " with id: " + id);
    }
}
