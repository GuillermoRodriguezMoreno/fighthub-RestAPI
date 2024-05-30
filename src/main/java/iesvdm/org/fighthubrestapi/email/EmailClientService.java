package iesvdm.org.fighthubrestapi.email;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

@Slf4j
@Service
public class EmailClientService {

    private final WebClient webClient;
    private final String BASE_URL = "http://localhost:8081/v1/api/email";
    private final String PLAIN_TEXT_URL = "/send";
    private final String HTML_URL = "/send-html";
    private final String CONFIRM_URL = "/send-confirm";

    public EmailClientService(WebClient.Builder webClientBuilder) {
        this.webClient = webClientBuilder.baseUrl(BASE_URL).build();
    }

    public void sendEmail(EmailRequest emailRequest) {
        sendEmailToUrl(PLAIN_TEXT_URL, emailRequest);
    }

    public void sendEmailHtml(EmailRequest emailRequest) {
        sendEmailToUrl(HTML_URL, emailRequest);
    }

    public void sendConfirmEmail(EmailRequest emailRequest) {
        sendEmailToUrl(CONFIRM_URL, emailRequest);
    }

    private void sendEmailToUrl(String url, EmailRequest emailRequest) {
        webClient.post()
                .uri(url)
                .body(BodyInserters.fromValue(emailRequest))
                .retrieve()
                .bodyToMono(String.class)
                .subscribe(response -> {
                    log.info("Response: {}", response);
                }, error -> {
                    log.error("Error sending email: {}", error.getMessage());
                });
    }
}
