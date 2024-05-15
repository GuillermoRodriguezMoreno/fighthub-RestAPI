package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import iesvdm.org.fighthubrestapi.model.Round;
import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.Set;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Fight {

    // *** PROPS ***
    // *************
    // Id
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @EqualsAndHashCode.Include
    private Long id;
    // StartTime
    @JsonFormat(pattern = "dd-MM-yyyy HH:mm", shape = JsonFormat.Shape.STRING)
    @Column(columnDefinition = "TIMESTAMP")
    private LocalDateTime startTime;
    // FightOrder
    @Min(value = 1, message = "The fight order must be at least 1")
    private int fightOrder;
    // IsKo
    private boolean isKo;
    // Round
    private Round round;
    // Weight
    private double weight;
    // IsTittleFight
    private boolean isTitleFight;

    // *** RELATIONSHIPS ***
    // *********************
    // BlueCornerFighter
    @ManyToOne
    @JoinColumn(name = "blue_corner_fighter_id")
    private Fighter blueCornerFighter;
    // RedCornerFighter
    @ManyToOne
    @JoinColumn(name = "red_corner_fighter_id")
    private Fighter redCornerFighter;
    // Event
    @ManyToOne
    @JoinColumn(name = "event_id", nullable = false)
    private Event event;
    // Category
    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;
    // Style
    @ManyToOne
    @JoinColumn(name = "style_id")
    private Style style;
    // Winner
    @OneToOne
    @JoinColumn(name = "winner_id")
    private Fighter winner;
    // FightInscriptionRequests
    @OneToMany(mappedBy = "fight", cascade = {CascadeType.MERGE, CascadeType.REMOVE}, orphanRemoval = true)
    @JsonIgnore
    @ToString.Exclude
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
