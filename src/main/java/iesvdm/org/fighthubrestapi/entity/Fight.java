package iesvdm.org.fighthubrestapi.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import iesvdm.org.fighthubrestapi.model.Round;
import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Future;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

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
    private LocalDateTime startTime;
    // FightOrder
    @Min(value = 1, message = "The fight order must be at least 1")
    private int fight_order;
    // IsKo
    private boolean is_ko;
    // Round
    private Round round;
    // Weight
    private double weight;
    // IsTittleFight
    private boolean is_title_fight;

    // *** RELATIONSHIPS ***

    // BlueCornerFighter
    @ManyToOne
    @JoinColumn(name = "blue_corner_fighter_id")
    private Fighter blue_corner_fighter;
    // RedCornerFighter
    @ManyToOne
    @JoinColumn(name = "red_corner_fighter_id")
    private Fighter red_corner_fighter;
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
    @OneToMany(mappedBy = "fight")
    private Set<FightInscriptionRequest> fightInscriptionRequests = new HashSet<>();
}
