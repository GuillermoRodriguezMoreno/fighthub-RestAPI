package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.User;
import iesvdm.org.fighthubrestapi.repository.UserRepository;
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
    UserRepository userRepository;

    // *** METHODS ***
    // ***************
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        User user = userRepository.findByUserName(userName)
                .orElseThrow(() -> new UsernameNotFoundException("Usuario no encontrado con username: " + userName));

        return UserDetailsImpl.build(user);
    }

}
