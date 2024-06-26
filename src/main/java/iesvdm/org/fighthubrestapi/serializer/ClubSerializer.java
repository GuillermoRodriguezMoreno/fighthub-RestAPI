package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Club;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class ClubSerializer extends JsonSerializer<Club> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Club club, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", club.getId());
            jsonGenerator.writeStringField("name", club.getName());
            if (club.getAddress() != null) {
                jsonGenerator.writeFieldName("address");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeStringField("street", club.getAddress().getStreet());
                jsonGenerator.writeStringField("city", club.getAddress().getCity());
                jsonGenerator.writeStringField("state", club.getAddress().getState());
                jsonGenerator.writeStringField("postalCode", club.getAddress().getPostalCode());
                jsonGenerator.writeStringField("country", club.getAddress().getCountry());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeStringField("phone", club.getPhone());
            jsonGenerator.writeStringField("email", club.getEmail());
            if (club.getRegisterDate() != null)
                jsonGenerator.writeStringField("registerDate", DateUtil.formatDateTime(club.getRegisterDate()));
            jsonGenerator.writeStringField("description", club.getDescription());
            jsonGenerator.writeBooleanField("deleted", club.isDeleted());
            // Photo
            if (club.getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", club.getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", club.getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            // President
            if (club.getPresident() != null) {
                jsonGenerator.writeFieldName("president");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", club.getPresident().getId());
                jsonGenerator.writeStringField("userName", club.getPresident().getUserName());
                jsonGenerator.writeStringField("name", club.getPresident().getName());
                if (club.getPresident().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("profilePhoto");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", club.getPresident().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", club.getPresident().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
