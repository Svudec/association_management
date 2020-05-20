package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "lokalni_ogranak")
public class LocalBranch {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_lokalni_ogranak")
    private int id;

    @Column(name = "naziv_lokalni_ogranak")
    private String name;

    @Column(name = "opis_lokalni_ogranak")
    private String description;

    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "id_drzava")
    private Country country;

    @ManyToMany
    @JoinTable(name = "organizira", joinColumns = @JoinColumn(name = "id_lokalni_ogranak"), inverseJoinColumns = @JoinColumn(name = "id_medunarodni_dogadaj"))
    private List<InternationalEvent> eventsOrganized;

    public LocalBranch() {
        this.eventsOrganized = new ArrayList<>();
    }

    public List<InternationalEvent> getEventsOrganized() {
        return eventsOrganized;
    }

    public void setEventsOrganized(List<InternationalEvent> eventsOrganized) {
        this.eventsOrganized = eventsOrganized;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
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

    @Override
    public String toString() {
        return "LocalBranch{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }
}
