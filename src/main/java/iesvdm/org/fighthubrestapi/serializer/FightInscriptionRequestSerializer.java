package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.FightInscriptionRequest;
import iesvdm.org.fighthubrestapi.entity.Follow;

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
            jsonGenerator.writeStringField("status", fightInscriptionRequest.getStatus());
            jsonGenerator.writeStringField("message", fightInscriptionRequest.getMessage());
            if (fightInscriptionRequest.getResponse() == null) {
                jsonGenerator.writeStringField("response", "-1");
            } else {
                jsonGenerator.writeStringField("response", fightInscriptionRequest.getResponse());
            }
            jsonGenerator.writeStringField("responseDate", fightInscriptionRequest.getResponseDate().toString());
            jsonGenerator.writeStringField("requestDate", fightInscriptionRequest.getRequestDate().toString());
            // Club
            jsonGenerator.writeFieldName("club");
            jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getClub().getId());
                jsonGenerator.writeStringField("name", fightInscriptionRequest.getClub().getName());
                jsonGenerator.writeStringField("phone", fightInscriptionRequest.getClub().getPhone());
                jsonGenerator.writeNumberField("photoId", fightInscriptionRequest.getClub().getProfilePhoto().getId());
                jsonGenerator.writeStringField("photoUrl", fightInscriptionRequest.getClub().getProfilePhoto().getUrl());
                    // Address
                    jsonGenerator.writeFieldName("address");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeStringField("street", fightInscriptionRequest.getClub().getAddress().getStreet());
                    jsonGenerator.writeStringField("city", fightInscriptionRequest.getClub().getAddress().getCity());
                    jsonGenerator.writeStringField("postalCode", fightInscriptionRequest.getClub().getAddress().getPostalCode());
                    jsonGenerator.writeStringField("country", fightInscriptionRequest.getClub().getAddress().getCountry());
                    jsonGenerator.writeStringField("state", fightInscriptionRequest.getClub().getAddress().getState());
                    jsonGenerator.writeEndObject();
            jsonGenerator.writeEndObject();
            // Fighter
            jsonGenerator.writeFieldName("fighter");
            jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFighter().getId());
                jsonGenerator.writeStringField("userName", fightInscriptionRequest.getFighter().getUserName());
                jsonGenerator.writeNumberField("photoId", fightInscriptionRequest.getFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("photoUrl", fightInscriptionRequest.getFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeNumberField("weight", fightInscriptionRequest.getFighter().getWeight());
                jsonGenerator.writeStringField("category", fightInscriptionRequest.getFighter().getCategory().getName());
                jsonGenerator.writeNumberField("numberOfFights", fightInscriptionRequest.getFighter().getNumberOfFights());
                jsonGenerator.writeNumberField("wins", fightInscriptionRequest.getFighter().getWins());
                jsonGenerator.writeNumberField("losses", fightInscriptionRequest.getFighter().getLosses());
                jsonGenerator.writeNumberField("draws", fightInscriptionRequest.getFighter().getDraws());
            jsonGenerator.writeEndObject();
            // Fight
            jsonGenerator.writeFieldName("fight");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getId());
            jsonGenerator.writeNumberField("order", fightInscriptionRequest.getFight().getFightOrder());
            jsonGenerator.writeStringField("style", fightInscriptionRequest.getFight().getStyle().getName());
            // Round
                jsonGenerator.writeFieldName("round");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("total", fightInscriptionRequest.getFight().getRound().getTotal());
                jsonGenerator.writeNumberField("minutes", fightInscriptionRequest.getFight().getRound().getMinutes());
                jsonGenerator.writeEndObject();
            jsonGenerator.writeEndObject();
            // Event
            jsonGenerator.writeFieldName("event");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getEvent().getId());
            jsonGenerator.writeStringField("name", fightInscriptionRequest.getFight().getEvent().getName());
            jsonGenerator.writeStringField("date", fightInscriptionRequest.getFight().getEvent().getStartDate().toString());
            jsonGenerator.writeNumberField("photoId", fightInscriptionRequest.getFight().getEvent().getPhoto().getId());
            jsonGenerator.writeStringField("photoUrl", fightInscriptionRequest.getFight().getEvent().getPhoto().getUrl());
                // Address
                jsonGenerator.writeFieldName("address");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeStringField("street", fightInscriptionRequest.getFight().getEvent().getAddress().getStreet());
                jsonGenerator.writeStringField("city", fightInscriptionRequest.getFight().getEvent().getAddress().getCity());
                jsonGenerator.writeStringField("postalCode", fightInscriptionRequest.getFight().getEvent().getAddress().getPostalCode());
                jsonGenerator.writeStringField("country", fightInscriptionRequest.getFight().getEvent().getAddress().getCountry());
                jsonGenerator.writeStringField("state", fightInscriptionRequest.getFight().getEvent().getAddress().getState());
                jsonGenerator.writeEndObject();
                        // Organizer
                        jsonGenerator.writeFieldName("organizer");
                        jsonGenerator.writeStartObject();
                        jsonGenerator.writeNumberField("id", fightInscriptionRequest.getFight().getEvent().getOrganizer().getId());
                        jsonGenerator.writeStringField("name", fightInscriptionRequest.getFight().getEvent().getOrganizer().getName());
                        jsonGenerator.writeStringField("phone", fightInscriptionRequest.getFight().getEvent().getOrganizer().getPhone());
                        jsonGenerator.writeNumberField("photoId", fightInscriptionRequest.getFight().getEvent().getOrganizer().getProfilePhoto().getId());
                        jsonGenerator.writeStringField("photoUrl", fightInscriptionRequest.getFight().getEvent().getOrganizer().getProfilePhoto().getUrl());
                            // Address
                            jsonGenerator.writeFieldName("address");
                            jsonGenerator.writeStartObject();
                            jsonGenerator.writeStringField("street", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getStreet());
                            jsonGenerator.writeStringField("city", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getCity());
                            jsonGenerator.writeStringField("postalCode", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getPostalCode());
                            jsonGenerator.writeStringField("country", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getCountry());
                            jsonGenerator.writeStringField("state", fightInscriptionRequest.getFight().getEvent().getOrganizer().getAddress().getState());
                            jsonGenerator.writeEndObject();
                        jsonGenerator.writeEndObject();
                jsonGenerator.writeEndObject();

            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
