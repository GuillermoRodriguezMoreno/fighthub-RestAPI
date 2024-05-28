package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Follow;
import iesvdm.org.fighthubrestapi.util.DateUtil;

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
            jsonGenerator.writeFieldName("id");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("followerFighterId", follow.getId().getFollowerFighterId());
            jsonGenerator.writeNumberField("followedFighterId", follow.getId().getFollowedFighterId());
            jsonGenerator.writeEndObject();
            // Follower Fighter
            if (follow.getFollowerFighter() != null) {
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
            }
            // Followed Fighter
            if (follow.getFollowedFighter() != null) {
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
            }
            if (follow.getFollowDate() != null)
                jsonGenerator.writeStringField("followDate", DateUtil.formatDateTime(follow.getFollowDate()));
            // End
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
