package iesvdm.org.fighthubrestapi.service;


import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.exception.EntityNotFoundException;
import iesvdm.org.fighthubrestapi.model.E_Status;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import iesvdm.org.fighthubrestapi.repository.RoleRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class RoleService {

    // toDo -- Implementar poder crear nuevos Roles. Solucionar lo del Enum

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
    public void delete(Long id) {
        Role role = this.roleRepository.findById(id).orElseThrow(() -> new EntityNotFoundException(id, Role.class));
        // Disassociate the role from the fighters
        role.getFighters().forEach(fighter -> fighter.getRoles().remove(role));
        this.fighterRepository.saveAll(role.getFighters());
        this.roleRepository.delete(role);
    }
}
