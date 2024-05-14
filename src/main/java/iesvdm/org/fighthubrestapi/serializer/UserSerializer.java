package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Role;
import iesvdm.org.fighthubrestapi.entity.User;

import java.io.IOException;
import java.text.SimpleDateFormat;

public class UserSerializer extends JsonSerializer<User> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(User user, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        jsonGenerator.writeStartObject();
        jsonGenerator.writeNumberField("id", user.getId());
        jsonGenerator.writeStringField("userName", user.getUserName());
        jsonGenerator.writeStringField("birthDate", user.getBirthDate().toString());
        jsonGenerator.writeStringField("email", user.getEmail());
        jsonGenerator.writeStringField("password", user.getPassword());
        jsonGenerator.writeStringField("registerDate", user.getRegisterDate().toString());
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
        jsonGenerator.writeEndObject();
    }
}
