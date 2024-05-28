package iesvdm.org.fighthubrestapi.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/api/email")
public class EmailController {

    // *** INJECTS ***
    // ***************
    @Autowired
    private EmailClientService emailService;

    // *** METHODS ***
    // ***************
    // Send email
    @PostMapping("/send-email")
    public String sendEmail(@RequestBody EmailRequest emailRequest) {
        emailService.sendEmail(emailRequest);
        return "Request to send email has been processed.";
    }
    // Send email with HTML
    @PostMapping("/send-email-html")
    public String sendEmailHtml(@RequestBody EmailRequest emailRequest) {
        emailService.sendEmailHtml(emailRequest);
        return "Request to send email has been processed.";
    }

    @PostMapping("/send-confirm-email")
    public String sendConfirmEmail(@RequestBody EmailRequest emailRequest) {
        emailService.sendConfirmEmail(emailRequest);
        return "Request to send email has been processed.";
    }
}
