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
@IdClass(FollowId.class)
public class Follow {

    // *** PROPS ***
    // *************

    // FollowerFighter
    @Id
    @EqualsAndHashCode.Include
    private long followerFighter;
    // FollowedFighter
    @Id
    @EqualsAndHashCode.Include
    private long followedFighter;
    // FollowDate
    @NotNull(message = "The follow date cannot be null")
    @PastOrPresent(message = "The follow date must be in the past or present")
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime followDate;
}
