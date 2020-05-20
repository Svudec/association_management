package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "drzava")
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_drzava")
    private int id;

    @Column(name = "naziv_drzava")
    private String name;

    @OneToMany(mappedBy = "country", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<LocalBranch> localBranches;

    public Country() {
        this.localBranches = new ArrayList<>();
    }

    public List<LocalBranch> getLocalBranches() {
        return localBranches;
    }

    public void setLocalBranches(List<LocalBranch> localBranches) {
        this.localBranches = localBranches;
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

    @Override
    public String toString() {
        return "Country{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
