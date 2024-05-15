package iesvdm.org.fighthubrestapi.service;

import iesvdm.org.fighthubrestapi.entity.Fighter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.SimpleMailMessage;

@Service
public class MailSenderService {

    // *** PROPS ***
    // *************
    @Value("${spring.mail.username}")
    private String emailSender;
    private JavaMailSender mailSender;

    // *** CONSTRUCTOR ***
    // *******************
    public MailSenderService(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }

    // *** METHODS ***
    // ***************
    // Send email to user
    public void send(String from, String to, String subject, String text) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        mailSender.send(message);
    }
    // Notify user by email
    @Async
    public void notificarPorEmail(Fighter user, String mensaje) {
        //Correo en modo texto
        this.send(emailSender,
                user.getEmail(),
                user.getUserName(),
                mensaje
        );
    }
}
