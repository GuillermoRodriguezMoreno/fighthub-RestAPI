package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    // *** INJECTS ***
    // ***************
    @Autowired
    FighterRepository fighterRepository;

    // *** METHODS ***
    // ***************
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        Fighter user = fighterRepository.findByUserName(userName)
                .orElseThrow(() -> new UsernameNotFoundException("Usuario no encontrado con username: " + userName));

        return UserDetailsImpl.build(user);
    }

}
