package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class EventReview {

    // *** PROPS ***
    // *************

    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
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
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    private LocalDateTime reviewDate;

    // *** RELATIONSHIPS ***

    // User
    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private User user;
    // Event
    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    private Event event;
}
