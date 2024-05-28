package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.ClubReview;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class ClubReviewSerializer extends JsonSerializer<ClubReview> {

    // **********
    // SERIALIZER
    // **********
    @Override
    public void serialize(ClubReview clubReview, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("id");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeFieldName("fighterId");
            jsonGenerator.writeObject(clubReview.getFighter().getId());
            jsonGenerator.writeFieldName("clubId");
            jsonGenerator.writeObject(clubReview.getClub().getId());
            jsonGenerator.writeEndObject();
            jsonGenerator.writeStringField("content", clubReview.getContent());
            jsonGenerator.writeNumberField("rating", clubReview.getRating());
            jsonGenerator.writeStringField("reviewDate", DateUtil.formatDateTime(clubReview.getReviewDate()));
            // Fighter
            jsonGenerator.writeFieldName("fighter");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", clubReview.getFighter().getId());
            jsonGenerator.writeStringField("name", clubReview.getFighter().getName());
            if (clubReview.getFighter().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("profilePhoto");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubReview.getFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", clubReview.getFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (clubReview.getFighter().getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubReview.getFighter().getClub().getId());
                jsonGenerator.writeStringField("name", clubReview.getFighter().getClub().getName());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // Club
            jsonGenerator.writeFieldName("club");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", clubReview.getClub().getId());
            jsonGenerator.writeStringField("name", clubReview.getClub().getName());
            // Photo
            if (clubReview.getClub().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubReview.getClub().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", clubReview.getClub().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // End
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
