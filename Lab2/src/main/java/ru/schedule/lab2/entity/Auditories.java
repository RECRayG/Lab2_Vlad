package ru.schedule.lab2.entity;

import jakarta.persistence.*;

import java.util.Collection;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@ToString
@Builder
@Entity
public class Auditories {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_auditory")
    private int idAuditory;

    @Basic
    @Column(name = "auditory")
    private String auditory;

    @OneToMany(mappedBy = "auditoriesByIdAuditory", cascade = CascadeType.ALL, orphanRemoval = false)
    private Collection<Schedules> schedulesByIdAuditory;
}
