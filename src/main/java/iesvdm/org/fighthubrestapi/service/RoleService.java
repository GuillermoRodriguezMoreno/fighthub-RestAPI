package iesvdm.org.fighthubrestapi.service;


import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoleService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private FighterRepository fighterRepository;

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
        Role roleToUpdate = this.roleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Role.class));
        roleToUpdate.setRole(role.getRole());
        return roleRepository.save(roleToUpdate);
    }
    // Delete role
    @Transactional
    public void delete(Long id) {
        // Find role by id
        Role role = this.roleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Role.class));
        // Disassociate role from users
        role.getFighters().forEach(user -> user.getRoles().remove(role));
        this.fighterRepository.saveAll(role.getFighters());
        roleRepository.deleteById(id);
    }
}
