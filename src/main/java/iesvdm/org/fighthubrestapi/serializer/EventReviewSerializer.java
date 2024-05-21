package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.EventReview;

import java.io.IOException;
import java.time.format.DateTimeFormatter;

public class EventReviewSerializer extends JsonSerializer<EventReview> {

    // **********
    // SERIALIZER
    // **********
    @Override
    public void serialize(EventReview eventReview, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("eventReviewId");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("fighterId");
            jsonGenerator.writeObject(eventReview.getFighter().getId());
            jsonGenerator.writeFieldName("eventId");
            jsonGenerator.writeObject(eventReview.getEvent().getId());
            jsonGenerator.writeEndObject();
            jsonGenerator.writeStringField("content", eventReview.getContent());
            jsonGenerator.writeNumberField("rating", eventReview.getRating());
            jsonGenerator.writeStringField("reviewDate", eventReview.getReviewDate().toString());
            // Fighter
            jsonGenerator.writeFieldName("fighter");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getFighter().getId());
            jsonGenerator.writeStringField("name", eventReview.getFighter().getName());
            if (eventReview.getFighter().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("profilePhoto");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", eventReview.getFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", eventReview.getFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (eventReview.getFighter().getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", eventReview.getFighter().getClub().getId());
                jsonGenerator.writeStringField("name", eventReview.getFighter().getClub().getName());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // Event
            jsonGenerator.writeFieldName("event");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", eventReview.getEvent().getId());
            jsonGenerator.writeStringField("name", eventReview.getEvent().getName());
            jsonGenerator.writeStringField("date", eventReview.getEvent().getStartDate().toString());
            if (eventReview.getEvent().getPhoto() != null) {
                jsonGenerator.writeFieldName("eventPhoto");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", eventReview.getEvent().getPhoto().getId());
                jsonGenerator.writeStringField("url", eventReview.getEvent().getPhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (eventReview.getEvent().getOrganizer() != null) {


                jsonGenerator.writeFieldName("organizer");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", eventReview.getEvent().getOrganizer().getId());
                jsonGenerator.writeStringField("name", eventReview.getEvent().getOrganizer().getName());
                if (eventReview.getEvent().getOrganizer().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("profilePhoto");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", eventReview.getEvent().getOrganizer().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", eventReview.getEvent().getOrganizer().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // End
            jsonGenerator.writeEndObject();
        }catch (IOException e) {
            e.printStackTrace();
        }
    }
}