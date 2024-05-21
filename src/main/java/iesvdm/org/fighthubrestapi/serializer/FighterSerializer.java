package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.*;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class FighterSerializer extends JsonSerializer<Fighter> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Fighter fighter, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fighter.getId());
            jsonGenerator.writeStringField("userName", fighter.getUserName());
            jsonGenerator.writeStringField("birthDate", fighter.getBirthDate().toString());
            jsonGenerator.writeStringField("email", fighter.getEmail());
            jsonGenerator.writeStringField("password", fighter.getPassword());
            jsonGenerator.writeStringField("registerDate", DateUtil.formatDateTime(fighter.getRegisterDate()));
            jsonGenerator.writeBooleanField("deleted", fighter.isDeleted());
            jsonGenerator.writeStringField("name", fighter.getName());
            jsonGenerator.writeStringField("active", fighter.isActive() ? "true" : "false");
            jsonGenerator.writeNumberField("weight", fighter.getWeight());
            jsonGenerator.writeNumberField("height", fighter.getHeight());
            jsonGenerator.writeStringField("gender", fighter.getGender());
            jsonGenerator.writeStringField("biography", fighter.getBiography());
            jsonGenerator.writeFieldName("location");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("latitude", fighter.getLocation().getLatitude());
            jsonGenerator.writeStringField("longitude", fighter.getLocation().getLongitude());
            jsonGenerator.writeEndObject();
            jsonGenerator.writeNumberField("wins", fighter.getWins());
            jsonGenerator.writeNumberField("losses", fighter.getLosses());
            jsonGenerator.writeNumberField("draws", fighter.getDraws());
            jsonGenerator.writeNumberField("kos", fighter.getKos());
            jsonGenerator.writeNumberField("numberOfFights", fighter.getNumberOfFights());
            jsonGenerator.writeNumberField("winsInARow", fighter.getWinsInARow());
            // Roles
            jsonGenerator.writeFieldName("roles");
            jsonGenerator.writeStartArray();
            for (Role role : fighter.getRoles()) {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", role.getId());
                jsonGenerator.writeStringField("role", role.getRole().name());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndArray();
            // Photo
            if (fighter.getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fighter.getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", fighter.getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            // Club
            if (fighter.getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fighter.getClub().getId());
                jsonGenerator.writeStringField("name", fighter.getClub().getName());
                if (fighter.getClub().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("profilePhoto");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fighter.getClub().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fighter.getClub().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Category
            if (fighter.getCategory() != null) {
                jsonGenerator.writeFieldName("category");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fighter.getCategory().getId());
                jsonGenerator.writeStringField("name", fighter.getCategory().getName());
                jsonGenerator.writeEndObject();
            }
            // Styles
            if (fighter.getStyles() != null) {
                jsonGenerator.writeFieldName("styles");
                jsonGenerator.writeStartArray();
                for (Style style : fighter.getStyles()) {
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", style.getId());
                    jsonGenerator.writeStringField("name", style.getName());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndArray();
            }
            // End
            jsonGenerator.writeEndObject();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
