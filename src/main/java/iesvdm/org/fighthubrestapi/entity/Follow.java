package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
import iesvdm.org.fighthubrestapi.serializer.FollowSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonSerialize(using = FollowSerializer.class)
public class Follow {

    // *** PROPS ***
    // *************
    // FollowId
    @EmbeddedId
    private FollowId followId;
    // FollowDate
    @NotNull(message = "The follow date cannot be null")
    @PastOrPresent(message = "The follow date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime followDate;

    // *** RELATIONSHIPS ***
    // *********************
    @ManyToOne
    @MapsId("followerFighterId")
    @JoinColumn(name = "follower_fighter_id")
    private Fighter followerFighter;
    @ManyToOne
    @MapsId("followedFighterId")
    @JoinColumn(name = "followed_fighter_id")
    private Fighter followedFighter;

}
