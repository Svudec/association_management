package hr.unizg.fer.sudec.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "sponzorski_paket")
public class SponsorPackage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_sponzorski_paket")
    private int id;

    @Column(name = "naziv_sponzorski_paket")
    private String name;

    @Column(name = "stavke")
    private String items;

    @Column(name = "datum_stvaranja")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date creationDate;

    @OneToMany(mappedBy = "sponsorPackage", cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<Sponsorship> sponsorships;

    public SponsorPackage() {

        this.sponsorships = new ArrayList<>();
    }

    public List<Sponsorship> getSponsorships() {
        return sponsorships;
    }

    public void setSponsorships(List<Sponsorship> sponsorships) {
        this.sponsorships = sponsorships;
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

    public String getItems() {
        return items;
    }

    public void setItems(String items) {
        this.items = items;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    @Override
    public String toString() {
        return "SponsorPackage{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", items='" + items + '\'' +
                ", creationDate=" + creationDate +
                '}';
    }
}
