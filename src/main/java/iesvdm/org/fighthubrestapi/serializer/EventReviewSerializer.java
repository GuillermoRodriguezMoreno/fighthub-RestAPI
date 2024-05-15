package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.EventReview;

import java.io.IOException;

public class EventReviewSerializer extends JsonSerializer<EventReview> {

    // **********
    // SERIALIZER
    // **********
    @Override
    public void serialize(EventReview eventReview, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getId());
            jsonGenerator.writeStringField("content", eventReview.getContent());
            jsonGenerator.writeNumberField("rating", eventReview.getRating());
            jsonGenerator.writeStringField("reviewDate", eventReview.getReviewDate().toString());
            // User
            jsonGenerator.writeFieldName("user");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getUser().getId());
            jsonGenerator.writeStringField("userName", eventReview.getUser().getUserName());
            if (eventReview.getUser().getProfilePhoto() == null){
                jsonGenerator.writeNumberField("photoId", -1);
                jsonGenerator.writeStringField("photoUrl", "-1");
            } else {
                jsonGenerator.writeNumberField("photoId", eventReview.getUser().getProfilePhoto().getId());
                jsonGenerator.writeStringField("photoUrl", eventReview.getUser().getProfilePhoto().getUrl());
            }
            jsonGenerator.writeEndObject();
            // Event
            jsonGenerator.writeFieldName("event");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getEvent().getId());
            jsonGenerator.writeStringField("name", eventReview.getEvent().getName());
            jsonGenerator.writeStringField("description", eventReview.getEvent().getDescription());
            jsonGenerator.writeStringField("startDate", eventReview.getEvent().getStartDate().toString());
            jsonGenerator.writeStringField("endDate", eventReview.getEvent().getEndDate().toString());
            jsonGenerator.writeStringField("openDate", eventReview.getEvent().getOpenDate().toString());
            if (eventReview.getEvent().getPhoto() == null){
                jsonGenerator.writeNumberField("photoId", -1);
                jsonGenerator.writeStringField("photoUrl", "-1");
            } else {
                jsonGenerator.writeNumberField("photoId", eventReview.getEvent().getPhoto().getId());
                jsonGenerator.writeStringField("photoUrl", eventReview.getEvent().getPhoto().getUrl());
            }
            // Address
            jsonGenerator.writeFieldName("address");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("street", eventReview.getEvent().getAddress().getStreet());
            jsonGenerator.writeStringField("city", eventReview.getEvent().getAddress().getCity());
            jsonGenerator.writeStringField("postalCode", eventReview.getEvent().getAddress().getPostalCode());
            jsonGenerator.writeStringField("country", eventReview.getEvent().getAddress().getCountry());
            jsonGenerator.writeStringField("state", eventReview.getEvent().getAddress().getState());
            jsonGenerator.writeEndObject();
            // Organizer
            jsonGenerator.writeFieldName("organizer");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getEvent().getOrganizer().getId());
            jsonGenerator.writeStringField("userName", eventReview.getEvent().getOrganizer().getUserName());
            jsonGenerator.writeStringField("name", eventReview.getEvent().getOrganizer().getName());
            if (eventReview.getEvent().getOrganizer().getProfilePhoto() == null){
                jsonGenerator.writeNumberField("photoId", -1);
                jsonGenerator.writeStringField("photoUrl", "-1");
            } else {
                jsonGenerator.writeNumberField("photoId", eventReview.getEvent().getOrganizer().getProfilePhoto().getId());
                jsonGenerator.writeStringField("photoUrl", eventReview.getEvent().getOrganizer().getProfilePhoto().getUrl());
            }
            // Address
            jsonGenerator.writeFieldName("address");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("street", eventReview.getEvent().getOrganizer().getAddress().getStreet());
            jsonGenerator.writeStringField("city", eventReview.getEvent().getOrganizer().getAddress().getCity());
            jsonGenerator.writeStringField("postalCode", eventReview.getEvent().getOrganizer().getAddress().getPostalCode());
            jsonGenerator.writeStringField("country", eventReview.getEvent().getOrganizer().getAddress().getCountry());
            jsonGenerator.writeStringField("state", eventReview.getEvent().getOrganizer().getAddress().getState());
            jsonGenerator.writeEndObject();
            jsonGenerator.writeEndObject();
            jsonGenerator.writeEndObject();
            // End
            jsonGenerator.writeEndObject();
        }catch (IOException e) {
            e.printStackTrace();
        }
    }
}