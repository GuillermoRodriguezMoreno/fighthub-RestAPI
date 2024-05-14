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
            jsonGenerator.writeNumberField("followerFighterId", follow.getFollowId().getFollowerFighterId());
            jsonGenerator.writeNumberField("followedFighterId", follow.getFollowId().getFollowedFighterId());
            jsonGenerator.writeStringField("followerFighterUserName", follow.getFollowerFighter().getUserName());
            if (follow.getFollowerFighter().getProfilePhoto() == null) {
                jsonGenerator.writeNumberField("followerFighterProfilePhotoId", -1);
                jsonGenerator.writeStringField("followerFighterProfilePhotoUrl", "-1");
            } else {
                jsonGenerator.writeNumberField("followerFighterProfilePhotoId", follow.getFollowerFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("followerFighterProfilePhotoUrl", follow.getFollowerFighter().getProfilePhoto().getUrl());
            }
            jsonGenerator.writeStringField("followedFighterUserName", follow.getFollowedFighter().getUserName());
            if (follow.getFollowedFighter().getProfilePhoto() == null) {
                jsonGenerator.writeNumberField("followedFighterProfilePhotoId", -1);
                jsonGenerator.writeStringField("followedFighterProfilePhotoUrl", "-1");
            } else {
                jsonGenerator.writeNumberField("followedFighterProfilePhotoId", follow.getFollowedFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("followedFighterProfilePhotoUrl", follow.getFollowedFighter().getProfilePhoto().getUrl());
            }
            jsonGenerator.writeStringField("followDate", follow.getFollowDate().toString());
            jsonGenerator.writeEndObject();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
