package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class FightInscriptionRequestSerializer extends JsonSerializer<FightInscriptionRequest> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(FightInscriptionRequest fightInscriptionRequest, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fightInscriptionRequest.getId());
            jsonGenerator.writeStringField("status", fightInscriptionRequest.getStatus().name());
            jsonGenerator.writeStringField("message", fightInscriptionRequest.getMessage());
            if (fightInscriptionRequest.getResponse() != null) {
                jsonGenerator.writeStringField("response", fightInscriptionRequest.getResponse());
                if (fightInscriptionRequest.getResponseDate() != null)
                    jsonGenerator.writeStringField("responseDate", DateUtil.formatDateTime(fightInscriptionRequest.getResponseDate()));
            }
            if (fightInscriptionRequest.getRequestDate() != null)
                jsonGenerator.writeStringField("requestDate", DateUtil.formatDateTime(fightInscriptionRequest.getRequestDate()));
            // Club
            if (fightInscriptionRequest.getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getClub().getId());
                jsonGenerator.writeStringField("name", fightInscriptionRequest.getClub().getName());
                jsonGenerator.writeStringField("phone", fightInscriptionRequest.getClub().getPhone());
                if (fightInscriptionRequest.getClub().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fightInscriptionRequest.getClub().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fightInscriptionRequest.getClub().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Fighter
            if (fightInscriptionRequest.getFighter() != null) {
                jsonGenerator.writeFieldName("fighter");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFighter().getId());
                jsonGenerator.writeStringField("name", fightInscriptionRequest.getFighter().getName());
                jsonGenerator.writeNumberField("weight", fightInscriptionRequest.getFighter().getWeight());
                jsonGenerator.writeNumberField("height", fightInscriptionRequest.getFighter().getHeight());
                if (fightInscriptionRequest.getFighter().getCategory() != null)
                    jsonGenerator.writeStringField("category", fightInscriptionRequest.getFighter().getCategory().getName());
                jsonGenerator.writeNumberField("numberOfFights", fightInscriptionRequest.getFighter().getNumberOfFights());
                jsonGenerator.writeNumberField("wins", fightInscriptionRequest.getFighter().getWins());
                jsonGenerator.writeNumberField("losses", fightInscriptionRequest.getFighter().getLosses());
                jsonGenerator.writeNumberField("draws", fightInscriptionRequest.getFighter().getDraws());
                jsonGenerator.writeNumberField("kos", fightInscriptionRequest.getFighter().getKos());
                if (fightInscriptionRequest.getFighter().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFighter().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fightInscriptionRequest.getFighter().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Fight
            if (fightInscriptionRequest.getFight() != null) {
                jsonGenerator.writeFieldName("fight");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getId());
                jsonGenerator.writeNumberField("order", fightInscriptionRequest.getFight().getFightOrder());
                if (fightInscriptionRequest.getFight().getStyle() != null)
                    jsonGenerator.writeStringField("style", fightInscriptionRequest.getFight().getStyle().getName());
                if (fightInscriptionRequest.getFight().getRound() != null) {
                    jsonGenerator.writeFieldName("round");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("total", fightInscriptionRequest.getFight().getRound().getTotal());
                    jsonGenerator.writeNumberField("minutes", fightInscriptionRequest.getFight().getRound().getMinutes());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Event
            if (fightInscriptionRequest.getEvent() != null) {
                jsonGenerator.writeFieldName("event");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getEvent().getId());
                jsonGenerator.writeStringField("name", fightInscriptionRequest.getFight().getEvent().getName());
                if (fightInscriptionRequest.getEvent().getStartDate() != null)
                    jsonGenerator.writeStringField("date", DateUtil.formatDateTime(fightInscriptionRequest.getFight().getEvent().getStartDate()));
                if (fightInscriptionRequest.getEvent().getAddress() != null) {
                    jsonGenerator.writeFieldName("address");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField("street", fightInscriptionRequest.getFight().getEvent().getAddress().getStreet());
                    jsonGenerator.writeStringField("city", fightInscriptionRequest.getFight().getEvent().getAddress().getCity());
                    jsonGenerator.writeStringField("postalCode", fightInscriptionRequest.getFight().getEvent().getAddress().getPostalCode());
                    jsonGenerator.writeStringField("country", fightInscriptionRequest.getFight().getEvent().getAddress().getCountry());
                    jsonGenerator.writeStringField("state", fightInscriptionRequest.getFight().getEvent().getAddress().getState());
                    jsonGenerator.writeEndObject();
                }
                // Organizer
                if (fightInscriptionRequest.getFight().getEvent().getOrganizer() != null) {
                    jsonGenerator.writeFieldName("organizer");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getEvent().getOrganizer().getId());
                    jsonGenerator.writeStringField("name", fightInscriptionRequest.getFight().getEvent().getOrganizer().getName());
                    jsonGenerator.writeStringField("phone", fightInscriptionRequest.getFight().getEvent().getOrganizer().getPhone());
                    if (fightInscriptionRequest.getFight().getEvent().getOrganizer().getProfilePhoto() != null) {
                        jsonGenerator.writeFieldName("photo");
                        jsonGenerator.writeStartObject();
                        jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getEvent().getOrganizer().getProfilePhoto().getId());
                        jsonGenerator.writeStringField("url", fightInscriptionRequest.getFight().getEvent().getOrganizer().getProfilePhoto().getUrl());
                        jsonGenerator.writeEndObject();
                    }
                    if (fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress() != null) {
                        jsonGenerator.writeFieldName("address");
                        jsonGenerator.writeStartObject();
                        jsonGenerator.writeStringField("street", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getStreet());
                        jsonGenerator.writeStringField("city", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getCity());
                        jsonGenerator.writeStringField("postalCode", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getPostalCode());
                        jsonGenerator.writeStringField("country", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getCountry());
                        jsonGenerator.writeStringField("state", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getState());
                        jsonGenerator.writeEndObject();
                    }
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // End
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
