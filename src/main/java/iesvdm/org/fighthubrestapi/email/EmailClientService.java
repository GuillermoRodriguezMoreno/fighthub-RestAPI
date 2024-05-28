package iesvdm.org.fighthubrestapi.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class EmailClientService {

    @Autowired
    private RestTemplate restTemplate;

    private final String emailServiceUrl = "http://localhost:8081/v1/api/email/send";
    private final String emailServiceHtmlUrl = "http://localhost:8081/v1/api/email/send-html";
    private final String emailServiceConfirmUrl = "http://localhost:8081/v1/api/email/send-confirm";


    public void sendEmail(EmailRequest emailRequest) {
        ResponseEntity<String> response = restTemplate.postForEntity(emailServiceUrl, emailRequest, String.class);
        if (response.getStatusCode().is2xxSuccessful()) {
            System.out.println("Email sent successfully.");
        } else {
            System.out.println("Failed to send email.");
        }
    }

    public void sendEmailHtml(EmailRequest emailRequest) {
        ResponseEntity<String> response = restTemplate.postForEntity(emailServiceHtmlUrl, emailRequest, String.class);
        if (response.getStatusCode().is2xxSuccessful()) {
            System.out.println("Email sent successfully.");
        } else {
            System.out.println("Failed to send email.");
        }
    }

    public void sendConfirmEmail(EmailRequest emailRequest) {
        ResponseEntity<String> response = restTemplate.postForEntity(emailServiceConfirmUrl, emailRequest, String.class);
        if (response.getStatusCode().is2xxSuccessful()) {
            System.out.println("Email sent successfully.");
        } else {
            System.out.println("Failed to send email.");
        }
    }
}
