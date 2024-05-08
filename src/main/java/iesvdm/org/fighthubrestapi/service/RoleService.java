package iesvdm.org.fighthubrestapi.service;


import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private RoleRepository roleRepository;

    // *** METHODS ***
    // ***************
    // List all roles
    public List<Role> findAll() {
        return roleRepository.findAll();
    }
    // Find role by id
    public Role findById(Long id) {
        return roleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Role.class));
    }
    // Save role
    public Role save(Role role) {
        return roleRepository.save(role);
    }
    // Update role
    public Role update(Long id, Role role) {
        Role roleToUpdate = findById(id);
        roleToUpdate.setRole(role.getRole());
        return roleRepository.save(roleToUpdate);
    }
    // Delete role
    public void delete(Long id) {
        roleRepository.deleteById(id);
    }
}
