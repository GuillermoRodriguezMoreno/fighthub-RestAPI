package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.FighterFollowRequest;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class FighterFollowRequestSerializer extends JsonSerializer<FighterFollowRequest> {

    // **********
    // SERIALIZER
    // **********
    @Override
    public void serialize(FighterFollowRequest fighterFollowRequest, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fighterFollowRequest.getId());
            if (fighterFollowRequest.getStatus() != null)
                jsonGenerator.writeStringField("status", fighterFollowRequest.getStatus().name());
            if (fighterFollowRequest.getResponseDate() != null)
                jsonGenerator.writeStringField("responseDate", DateUtil.formatDateTime(fighterFollowRequest.getResponseDate()));
            if (fighterFollowRequest.getRequestDate() != null)
                jsonGenerator.writeStringField("requestDate", DateUtil.formatDateTime(fighterFollowRequest.getRequestDate()));
            // Sender
            if (fighterFollowRequest.getSender() != null) {
                jsonGenerator.writeFieldName("sender");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fighterFollowRequest.getSender().getId());
                jsonGenerator.writeStringField("name", fighterFollowRequest.getSender().getName());
                if (fighterFollowRequest.getSender().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("profilePhoto");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fighterFollowRequest.getSender().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fighterFollowRequest.getSender().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                if (fighterFollowRequest.getSender().getClub() != null) {
                    jsonGenerator.writeFieldName("club");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fighterFollowRequest.getSender().getClub().getId());
                    jsonGenerator.writeStringField("name", fighterFollowRequest.getSender().getClub().getName());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Receiver
            if (fighterFollowRequest.getReceiver() != null) {
                jsonGenerator.writeFieldName("receiver");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fighterFollowRequest.getReceiver().getId());
                jsonGenerator.writeStringField("name", fighterFollowRequest.getReceiver().getName());
                if (fighterFollowRequest.getReceiver().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("profilePhoto");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fighterFollowRequest.getReceiver().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fighterFollowRequest.getReceiver().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                if (fighterFollowRequest.getReceiver().getClub() != null) {
                    jsonGenerator.writeFieldName("club");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fighterFollowRequest.getReceiver().getClub().getId());
                    jsonGenerator.writeStringField("name", fighterFollowRequest.getReceiver().getClub().getName());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // End
            jsonGenerator.writeEndObject();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
