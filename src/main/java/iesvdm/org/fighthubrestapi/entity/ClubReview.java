package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.entity_key.ClubReviewId;
import iesvdm.org.fighthubrestapi.serializer.ClubReviewSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;

import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonSerialize(using = ClubReviewSerializer.class)
public class ClubReview {

    // *** PROPS ***
    // *************
    // Id
    @EmbeddedId
    private ClubReviewId id;
    // Content
    @NotBlank(message = "The content cannot be blank")
    @Size(min = 10, max = 500, message = "The Content must be between 10 and 500 characters long")
    private String content;
    // Rating
    @Min(value = 1, message = "Rating must be at least 1")
    @Max(value = 5, message = "Rating must be at most 5")
    private int rating;
    // ReviewDate
    @NotNull(message = "The date cannot be null")
    @PastOrPresent(message = "The date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime reviewDate;

    // *** RELATIONSHIPS ***
    // *********************
    // User
    @ManyToOne
    @MapsId("fighterId")
    @JoinColumn(name = "fighter_id", nullable = false)
    private Fighter fighter;
    // Club
    @ManyToOne
    @MapsId("clubId")
    @JoinColumn(name = "club_id", nullable = false)
    private Club club;
}
