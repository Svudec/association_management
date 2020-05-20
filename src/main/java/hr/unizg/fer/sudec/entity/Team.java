package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "tim")
public class Team {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_tim")
    private int id;

    @Column(name = "naziv_tim")
    private String name;

    @Column(name = "opis_tim")
    private String description;

    @ManyToOne(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "id_voditelj")
    private Student leader;

    @ManyToMany
    @JoinTable(name = "je_clan", inverseJoinColumns = @JoinColumn(name = "id_student"), joinColumns = @JoinColumn(name = "id_tim"))
    private List<Student> members;

    @OneToMany(mappedBy = "team", cascade={CascadeType.ALL})
    private List<Gathering> gatherings;

    public Team() {

        this.members = new ArrayList<>();
        this.gatherings = new ArrayList<>();
    }

    public List<Gathering> getGatherings() {
        return gatherings;
    }

    public void setGatherings(List<Gathering> gatherings) {
        this.gatherings = gatherings;
    }

    public List<Student> getMembers() {
        return members;
    }

    public void setMembers(List<Student> members) {
        this.members = members;
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

    public void setName(String naziv) {
        this.name = naziv;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String opis) {
        this.description = opis;
    }

    public Student getLeader() {
        return leader;
    }

    public void setLeader(Student voditelj) {
        this.leader = voditelj;
    }

    @Override
    public String toString() {
        return "Team{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
