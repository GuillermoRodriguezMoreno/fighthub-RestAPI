package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.email.EmailClientService;
import iesvdm.org.fighthubrestapi.email.EmailRequest;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.repository.FighterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Optional;


@Service
public class UserService {

    // *** INJECTS ***
    // ***************
    @Autowired
    private FighterRepository fighterRepository;
    @Autowired
    private EmailClientService emailService;

    // *** SECURITY METHODS ***
    // ************************
    public void sendConfirmationEmail(Fighter user, String token) throws IOException {
        String confirmationUrl = "http://localhost:8080/v1/api/auth/confirm?token=" + token;
        EmailRequest emailRequest = EmailRequest.builder()
                .to(user.getEmail())
                .subject("Confirm your registration")
                .text("Dear " + user.getUserName() + ", please confirm your registration by clicking the following link: "
                        + confirmationUrl)
                .link(confirmationUrl)
                .name(user.getUserName())
               .build();

        emailService.sendEmailHtml(emailRequest);
    }

    public boolean confirmUser(String token) {
        Optional<Fighter> user = fighterRepository.findByConfirmationToken(token);
        if (user.isPresent()) {
            Fighter confirmedUser = user.get();
            confirmedUser.setEnabled(true);
            confirmedUser.setConfirmationToken(null);
            fighterRepository.save(confirmedUser);
            return true;
        }
        return false;
    }
}
