package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Photo;

import java.io.IOException;

public class PhotoSerializer extends JsonSerializer<Photo> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Photo photo, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", photo.getId());
            jsonGenerator.writeStringField("EntityType", photo.getEntityType());
            jsonGenerator.writeStringField("url", photo.getUrl());
            jsonGenerator.writeStringField("uploadDate", photo.getUploadDate().toString());
            if (photo.getFighter() == null) {
                jsonGenerator.writeNumberField("user_id", -1);
            } else {
                jsonGenerator.writeNumberField("user_id", photo.getFighter().getId());
            }
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
