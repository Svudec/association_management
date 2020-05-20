package hr.unizg.fer.sudec.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "okupljanje")
public class Gathering {

    @Id
    @Column(name = "id_okupljanje")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "naziv_okupljanje")
    private String name;

    @Column(name = "opis_okupljanje")
    private String description;

    @Column(name = "pocetak_okupljanje")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private Timestamp startTime;

    @Column(name = "zavrsetak_okupljanje")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    private Timestamp endTime;

    @Column(name = "je_formalno")
    private Boolean isFormal;

    @ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name = "id_tim")
    private Team team;

    @ManyToMany
    @JoinTable(name = "prisustvuje", joinColumns = @JoinColumn(name = "id_okupljanje"), inverseJoinColumns = @JoinColumn(name = "id_student"))
    private List<Student> attenders;

    @OneToMany(mappedBy = "gatheringReceipt", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<Receipt> gatheringReceipts;

    public Gathering() {

        this.attenders = new ArrayList<>();
        this.gatheringReceipts = new ArrayList<>();
    }

    public List<Receipt> getGatheringReceipts() {
        return gatheringReceipts;
    }

    public void setGatheringReceipts(List<Receipt> gatheringReceipts) {
        this.gatheringReceipts = gatheringReceipts;
    }

    public List<Student> getAttenders() {
        return attenders;
    }

    public void setAttenders(List<Student> attenders) {
        this.attenders = attenders;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    public Boolean getFormal() {
        return isFormal;
    }

    public void setFormal(Boolean formal) {
        isFormal = formal;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    @Override
    public String toString() {
        return "Gathering{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", isFormal=" + isFormal +
                ", team=" + team +
                '}';
    }
}
