package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Event;

import java.io.IOException;

public class EventSerializer extends JsonSerializer<Event> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Event event, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", event.getId());
            jsonGenerator.writeStringField("name", event.getName());
            jsonGenerator.writeFieldName("address");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("street", event.getAddress().getStreet());
            jsonGenerator.writeStringField("city", event.getAddress().getCity());
            jsonGenerator.writeStringField("state", event.getAddress().getState());
            jsonGenerator.writeStringField("postalCode", event.getAddress().getPostalCode());
            jsonGenerator.writeStringField("country", event.getAddress().getCountry());
            jsonGenerator.writeEndObject();
            jsonGenerator.writeStringField("description", event.getDescription());
            jsonGenerator.writeStringField("startDate", event.getStartDate().toString());
            jsonGenerator.writeStringField("openDate", event.getOpenDate().toString());
            jsonGenerator.writeStringField("endDate", event.getEndDate().toString());
            // Photo
            if(event.getPhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", event.getPhoto().getId());
                jsonGenerator.writeStringField("url", event.getPhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            // Club
            if(event.getOrganizer() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", event.getOrganizer().getId());
                jsonGenerator.writeStringField("name", event.getOrganizer().getName());
                if(event.getOrganizer().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", event.getOrganizer().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", event.getOrganizer().getProfilePhoto().getUrl());
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
