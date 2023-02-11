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
public class Days {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_day")
    private int idDay;

    @Basic
    @Column(name = "day")
    private String day;

    @OneToMany(mappedBy = "daysByIdDay", cascade = CascadeType.ALL, orphanRemoval = false)
    private Collection<Times> timesByIdDay;
}
