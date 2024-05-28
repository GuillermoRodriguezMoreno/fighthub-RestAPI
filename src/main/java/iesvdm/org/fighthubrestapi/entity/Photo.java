package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import iesvdm.org.fighthubrestapi.serializer.PhotoSerializer;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import jakarta.validation.constraints.Pattern;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@JsonSerialize(using = PhotoSerializer.class)
public class Photo {

    // *** PROPS ***
    // *************
    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private long id;
    // EntityType
    @Pattern(regexp = "FIGHTER|CLUB|EVENT", flags = Pattern.Flag.CASE_INSENSITIVE, message = "Entity type must be 'FIGHTER', 'CLUB' or 'EVENT'")
    private String EntityType;
    // Url
    @NotBlank(message = "The url cannot be blank")
    private String url;
    @NotNull(message = "The upload date cannot be null")
    @PastOrPresent(message = "The upload date must be in the past or present")
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime uploadDate;

    // *** RELATIONSHIPS ***
    // *********************
    // fighter
    @ManyToOne
    @JoinColumn(name = "fighter_id")
    @ToString.Exclude
    private Fighter fighter;
    // club
    @ManyToOne
    @JoinColumn(name = "club_id")
    @ToString.Exclude
    private Club club;
}
