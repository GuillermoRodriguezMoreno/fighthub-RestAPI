package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
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
public class Follow {

    // *** PROPS ***
    // *************
    // FollowId
    @EmbeddedId
    private FollowId followId;
    @ManyToOne
    @MapsId("followerFighterId")
    @JoinColumn(name = "follower_fighter_id")
    private Fighter followerFighter;
    @ManyToOne
    @MapsId("followedFighterId")
    @JoinColumn(name = "followed_fighter_id")
    private Fighter followedFighter;
    // FollowDate
    @NotNull(message = "The follow date cannot be null")
    @PastOrPresent(message = "The follow date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime followDate;
}
