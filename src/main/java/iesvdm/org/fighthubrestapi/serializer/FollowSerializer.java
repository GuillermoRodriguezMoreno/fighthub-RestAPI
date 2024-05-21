package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Follow;

import java.io.IOException;

public class FollowSerializer extends JsonSerializer<Follow> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Follow follow, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            // FollowId
            jsonGenerator.writeFieldName("followId");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("followerFighterId", follow.getFollowId().getFollowerFighterId());
            jsonGenerator.writeNumberField("followedFighterId", follow.getFollowId().getFollowedFighterId());
            jsonGenerator.writeEndObject();
            // Follower Fighter
            jsonGenerator.writeFieldName("followerFighter");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", follow.getFollowerFighter().getId());
            jsonGenerator.writeStringField("name", follow.getFollowerFighter().getName());
            if (follow.getFollowerFighter().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", follow.getFollowerFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", follow.getFollowerFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (follow.getFollowerFighter().getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", follow.getFollowerFighter().getClub().getId());
                jsonGenerator.writeStringField("name", follow.getFollowerFighter().getClub().getName());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // Followed Fighter
            jsonGenerator.writeFieldName("followedFighter");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", follow.getFollowedFighter().getId());
            jsonGenerator.writeStringField("name", follow.getFollowedFighter().getName());
            if (follow.getFollowedFighter().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", follow.getFollowedFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", follow.getFollowedFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (follow.getFollowedFighter().getClub() != null) {
                jsonGenerator.writeFieldName("club");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", follow.getFollowedFighter().getClub().getId());
                jsonGenerator.writeStringField("name", follow.getFollowedFighter().getClub().getName());
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
