package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.Fight;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class FightSerializer extends JsonSerializer<Fight> {

    // ***********
    // SERIALIZER
    // ***********
    @Override
    public void serialize(Fight fight, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", fight.getId());
            jsonGenerator.writeStringField("startTime", DateUtil.formatDateTime(fight.getStartTime()));
            jsonGenerator.writeNumberField("fightOrder", fight.getFightOrder());
            jsonGenerator.writeBooleanField("isKo", fight.isKo());
            jsonGenerator.writeNumberField("weight", fight.getWeight());
            jsonGenerator.writeBooleanField("isTitleFight", fight.isTitleFight());
            jsonGenerator.writeBooleanField("isDraw", fight.isDraw());
            jsonGenerator.writeBooleanField("isClosed", fight.isClosed());
            // Round
            if (fight.getRound() != null) {
                jsonGenerator.writeFieldName("round");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("totalRounds", fight.getRound().getTotal());
                jsonGenerator.writeNumberField("minutes", fight.getRound().getMinutes());
                jsonGenerator.writeEndObject();
            }
            // Blue corner fighter
            if (fight.getBlueCornerFighter() != null) {
                jsonGenerator.writeFieldName("blueCornerFighter");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getBlueCornerFighter().getId());
                jsonGenerator.writeStringField("name", fight.getBlueCornerFighter().getName());
                if (fight.getBlueCornerFighter().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fight.getBlueCornerFighter().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fight.getBlueCornerFighter().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Red corner fighter
            if (fight.getRedCornerFighter() != null) {
                jsonGenerator.writeFieldName("redCornerFighter");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getRedCornerFighter().getId());
                jsonGenerator.writeStringField("name", fight.getRedCornerFighter().getName());
                if (fight.getRedCornerFighter().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fight.getRedCornerFighter().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fight.getRedCornerFighter().getProfilePhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Event
            if (fight.getEvent() != null) {
                jsonGenerator.writeFieldName("event");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getEvent().getId());
                jsonGenerator.writeStringField("name", fight.getEvent().getName());
                if (fight.getEvent().getPhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fight.getEvent().getPhoto().getId());
                    jsonGenerator.writeStringField("url", fight.getEvent().getPhoto().getUrl());
                    jsonGenerator.writeEndObject();
                }
                jsonGenerator.writeEndObject();
            }
            // Category
            if (fight.getCategory() != null) {
                jsonGenerator.writeFieldName("category");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getCategory().getId());
                jsonGenerator.writeStringField("name", fight.getCategory().getName());
                jsonGenerator.writeEndObject();
            }
            // Style
            if (fight.getStyle() != null) {
                jsonGenerator.writeFieldName("style");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getStyle().getId());
                jsonGenerator.writeStringField("name", fight.getStyle().getName());
                jsonGenerator.writeEndObject();
            }
            // Winner
            if (fight.getWinner() != null) {
                jsonGenerator.writeFieldName("winner");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", fight.getWinner().getId());
                jsonGenerator.writeStringField("name", fight.getWinner().getName());
                if (fight.getWinner().getProfilePhoto() != null) {
                    jsonGenerator.writeFieldName("photo");
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeNumberField("id", fight.getWinner().getProfilePhoto().getId());
                    jsonGenerator.writeStringField("url", fight.getWinner().getProfilePhoto().getUrl());
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
