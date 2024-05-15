package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.entity.Fighter;
import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.entity.User;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class UserSerializer extends JsonSerializer<User> {

    // ***********
    // DATE FORMAT
    // ***********
    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");
    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(User user, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.writeNumberField("id", user.getId());
        jsonGenerator.writeStringField("userName", user.getUserName());
        jsonGenerator.writeStringField("birthDate", user.getBirthDate().format(formatter));
        jsonGenerator.writeStringField("email", user.getEmail());
        jsonGenerator.writeStringField("password", user.getPassword());
        jsonGenerator.writeStringField("registerDate", user.getRegisterDate().format(formatter));
        if (user.getProfilePhoto() == null) {
            jsonGenerator.writeNumberField("profilePhotoId", -1);
            jsonGenerator.writeStringField("profilePhotoUrl", "-1");
        }else {
            jsonGenerator.writeNumberField("profilePhotoId", user.getProfilePhoto().getId());
            jsonGenerator.writeStringField("profilePhotoUrl", user.getProfilePhoto().getUrl());
        }
        // Serializar la lista de roles
        jsonGenerator.writeFieldName("roles");
        jsonGenerator.writeStartArray();
        user.getRoles().forEach(role -> {
            try {
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", role.getId());
                jsonGenerator.writeStringField("role", role.getRole().toString());
                jsonGenerator.writeEndObject();
            } catch (IOException e) {
                e.printStackTrace();
            }
        });
        jsonGenerator.writeEndArray();
        if (user instanceof Fighter fighter){
            // Fighter
            jsonGenerator.writeStringField("name", fighter.getName());
            jsonGenerator.writeBooleanField("active", fighter.isActive());
            jsonGenerator.writeStringField("gender", fighter.getGender());
            jsonGenerator.writeStringField("biography", fighter.getBiography());
            jsonGenerator.writeNumberField("height", fighter.getHeight());
            jsonGenerator.writeNumberField("weight", fighter.getWeight());
            jsonGenerator.writeStringField("category", fighter.getCategory().getName());
            jsonGenerator.writeNumberField("numberOfFights", fighter.getNumberOfFights());
            jsonGenerator.writeNumberField("wins", fighter.getWins());
            jsonGenerator.writeNumberField("losses", fighter.getLosses());
            jsonGenerator.writeNumberField("draws", fighter.getDraws());
            jsonGenerator.writeNumberField("kos", fighter.getKos());
            jsonGenerator.writeNumberField("winsInARow", fighter.getWinsInARow());
            // Location
            jsonGenerator.writeFieldName("location");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("latitude", fighter.getLocation().getLatitude());
            jsonGenerator.writeStringField("longitude", fighter.getLocation().getLongitude());
            jsonGenerator.writeEndObject();
            // Category
            jsonGenerator.writeStringField("category", fighter.getCategory().getName());
            // Style
            jsonGenerator.writeFieldName("style");
            jsonGenerator.writeStartArray();
            fighter.getStyles().forEach(style -> {
                try {
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", style.getId());
                    jsonGenerator.writeStringField("style", style.getName());
                    jsonGenerator.writeEndObject();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            });
            jsonGenerator.writeEndArray();
            // Club
            jsonGenerator.writeFieldName("club");
            jsonGenerator.writeStartObject();
            if (fighter.getClub() == null) {
                jsonGenerator.writeNumberField("id", -1);
                jsonGenerator.writeStringField("name", "-1");
            } else {
                jsonGenerator.writeNumberField("id", fighter.getClub().getId());
                jsonGenerator.writeStringField("name", fighter.getClub().getName());
                if (fighter.getClub().getProfilePhoto() == null) {
                    jsonGenerator.writeNumberField("photoId", -1);
                    jsonGenerator.writeStringField("photoUrl", "-1");
                } else {
                    jsonGenerator.writeNumberField("photoId", fighter.getClub().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("photoUrl", fighter.getClub().getProfilePhoto().getUrl());
                }
                jsonGenerator.writeFieldName("address");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeStringField("street", fighter.getClub().getAddress().getStreet());
                jsonGenerator.writeStringField("city", fighter.getClub().getAddress().getCity());
                jsonGenerator.writeStringField("postalCode", fighter.getClub().getAddress().getPostalCode());
                jsonGenerator.writeStringField("country", fighter.getClub().getAddress().getCountry());
                jsonGenerator.writeStringField("state", fighter.getClub().getAddress().getState());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
        }else if (user instanceof Club club){
            // Club
            jsonGenerator.writeStringField("name", club.getName());
            jsonGenerator.writeStringField("phone", club.getPhone());
            jsonGenerator.writeStringField("description", club.getDescription());
            // Address
            jsonGenerator.writeFieldName("address");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("street", club.getAddress().getStreet());
            jsonGenerator.writeStringField("city", club.getAddress().getCity());
            jsonGenerator.writeStringField("postalCode", club.getAddress().getPostalCode());
            jsonGenerator.writeStringField("country", club.getAddress().getCountry());
            jsonGenerator.writeStringField("state", club.getAddress().getState());
            jsonGenerator.writeEndObject();
            // President
            jsonGenerator.writeFieldName("president");
            jsonGenerator.writeStartObject();
            if (club.getPresident() == null){
                jsonGenerator.writeNumberField("id", -1);
                jsonGenerator.writeStringField("userName", "-1");
            }else {
                jsonGenerator.writeNumberField("id", club.getPresident().getId());
                jsonGenerator.writeStringField("userName", club.getPresident().getUserName());
                jsonGenerator.writeStringField("name", club.getPresident().getName());
                jsonGenerator.writeNumberField("photoId", club.getPresident().getProfilePhoto().getId());
                jsonGenerator.writeStringField("photoUrl", club.getPresident().getProfilePhoto().getUrl());
            }
            jsonGenerator.writeEndObject();
        }
        // End
        jsonGenerator.writeEndObject();
    }
}
