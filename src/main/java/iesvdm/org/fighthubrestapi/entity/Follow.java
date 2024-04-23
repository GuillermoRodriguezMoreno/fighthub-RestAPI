package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import iesvdm.org.fighthubrestapi.entity_key.FollowId;
import jakarta.persistence.*;
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
    @Id
    @EqualsAndHashCode.Include
    private long followerFighter;
    @Id
    @EqualsAndHashCode.Include
    private long followedFighter;
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime followDate;
}
