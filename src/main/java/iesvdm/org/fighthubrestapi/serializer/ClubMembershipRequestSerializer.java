package iesvdm.org.fighthubrestapi.serializer;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import iesvdm.org.fighthubrestapi.entity.ClubMembershipRequest;
import iesvdm.org.fighthubrestapi.util.DateUtil;

import java.io.IOException;

public class ClubMembershipRequestSerializer extends JsonSerializer<ClubMembershipRequest> {

    // **********
    // SERIALIZER
    // **********
    @Override
    public void serialize(ClubMembershipRequest clubMembershipRequest, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        try {
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", clubMembershipRequest.getId());
            jsonGenerator.writeStringField("status", clubMembershipRequest.getStatus().name());
            if (clubMembershipRequest.getResponseDate() != null)
                jsonGenerator.writeStringField("responseDate", DateUtil.formatDateTime(clubMembershipRequest.getResponseDate()));
            jsonGenerator.writeStringField("requestDate", DateUtil.formatDateTime(clubMembershipRequest.getRequestDate()));
            // Club
            jsonGenerator.writeFieldName("club");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", clubMembershipRequest.getClub().getId());
            jsonGenerator.writeStringField("name", clubMembershipRequest.getClub().getName());
            jsonGenerator.writeFieldName("address");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeStringField("street", clubMembershipRequest.getClub().getAddress().getStreet());
            jsonGenerator.writeStringField("city", clubMembershipRequest.getClub().getAddress().getCity());
            jsonGenerator.writeStringField("state", clubMembershipRequest.getClub().getAddress().getState());
            jsonGenerator.writeStringField("postalCode", clubMembershipRequest.getClub().getAddress().getPostalCode());
            jsonGenerator.writeStringField("country", clubMembershipRequest.getClub().getAddress().getCountry());
            jsonGenerator.writeEndObject();
            if (clubMembershipRequest.getClub().getPhone() != null) {
                jsonGenerator.writeStringField("phone", clubMembershipRequest.getClub().getPhone());
            }
            jsonGenerator.writeStringField("email", clubMembershipRequest.getClub().getEmail());
            if (clubMembershipRequest.getClub().getProfilePhoto() != null){
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubMembershipRequest.getClub().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", clubMembershipRequest.getClub().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (clubMembershipRequest.getClub().getProfilePhoto() != null){
                jsonGenerator.writeFieldName("photo");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubMembershipRequest.getClub().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", clubMembershipRequest.getClub().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            if (clubMembershipRequest.getClub().getPresident() != null) {
                jsonGenerator.writeFieldName("president");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubMembershipRequest.getClub().getPresident().getId());
                jsonGenerator.writeStringField("name", clubMembershipRequest.getClub().getPresident().getName());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // Fighter
            jsonGenerator.writeFieldName("fighter");
            jsonGenerator.writeStartObject();
            jsonGenerator.writeNumberField("id", clubMembershipRequest.getFighter().getId());
            jsonGenerator.writeStringField("name", clubMembershipRequest.getFighter().getName());
            if (clubMembershipRequest.getFighter().getProfilePhoto() != null) {
                jsonGenerator.writeFieldName("profilePhoto");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubMembershipRequest.getFighter().getProfilePhoto().getId());
                jsonGenerator.writeStringField("url", clubMembershipRequest.getFighter().getProfilePhoto().getUrl());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeStringField("birthDate", DateUtil.formatDate(clubMembershipRequest.getFighter().getBirthDate()));
            jsonGenerator.writeStringField("email", clubMembershipRequest.getFighter().getEmail());
            jsonGenerator.writeNumberField("weight", clubMembershipRequest.getFighter().getWeight());
            jsonGenerator.writeNumberField("height", clubMembershipRequest.getFighter().getHeight());
            jsonGenerator.writeStringField("gender", clubMembershipRequest.getFighter().getGender());
            jsonGenerator.writeStringField("biography", clubMembershipRequest.getFighter().getBiography());
            jsonGenerator.writeNumberField("wins", clubMembershipRequest.getFighter().getWins());
            jsonGenerator.writeNumberField("losses", clubMembershipRequest.getFighter().getLosses());
            jsonGenerator.writeNumberField("draws", clubMembershipRequest.getFighter().getDraws());
            jsonGenerator.writeNumberField("kos", clubMembershipRequest.getFighter().getKos());
            jsonGenerator.writeNumberField("numberOfFights", clubMembershipRequest.getFighter().getNumberOfFights());
            if (clubMembershipRequest.getFighter().getCategory() != null) {
                jsonGenerator.writeFieldName("category");
                jsonGenerator.writeStartObject();
                jsonGenerator.writeNumberField("id", clubMembershipRequest.getFighter().getCategory().getId());
                jsonGenerator.writeStringField("name", clubMembershipRequest.getFighter().getCategory().getName());
                jsonGenerator.writeEndObject();
            }
            jsonGenerator.writeEndObject();
            // End
            jsonGenerator.writeEndObject();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
