package hr.unizg.fer.sudec.entity;

import org.hibernate.annotations.Check;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "projekt")
public class Project {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_projekt")
    private int id;

    @Column(name = "naziv_projekt")
    @NotNull(message = "Obavezno polje")
    private String name;

    @Column(name = "opis_projekt")
    private String description;

    @Column(name = "pocetak_projekt")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull(message = "Obavezno polje")
    private Date startDate;

    @Column(name = "zavrsetak_projekt")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull(message = "Obavezno polje")
    @Check(constraints = "zavrsetak_projekt > pocetak_projekt")
    private Date endDate;

    @OneToMany(mappedBy = "projectReceipt", cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<Receipt> projectReceipts;

    @ManyToMany
    @JoinTable(name = "prijava_na", joinColumns = @JoinColumn(name = "id_projekt"), inverseJoinColumns = @JoinColumn(name = "id_student"))
    private List<Student> participants;

    @ManyToMany
    @JoinTable(name = "je_organizator", joinColumns = @JoinColumn(name = "id_projekt"), inverseJoinColumns = @JoinColumn(name = "id_student"))
    private List<Student> organizers;

    @OneToMany(mappedBy = "primaryKey.project", cascade = CascadeType.ALL)
    private List<Sponsorship> sponsorships;

    public Project(){

        this.projectReceipts = new ArrayList<>();
        this.participants = new ArrayList<>();
        this.organizers = new ArrayList<>();
        this.sponsorships = new ArrayList<>();
    }

    public boolean datesValid(){
        try {
            return this.startDate.before(this.endDate);

        } catch (Exception e){
            return false;
        }
    }

    public String niceStartDate(){
        LocalDateTime date = LocalDateTime.ofInstant(startDate.toInstant(), ZoneId.systemDefault());
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        return date.format(formatter);
    }

    public String niceEndDate(){
        LocalDateTime date = LocalDateTime.ofInstant(endDate.toInstant(), ZoneId.systemDefault());
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        return date.format(formatter);
    }

    public List<Sponsorship> getSponsorships() {
        return sponsorships;
    }

    public void setSponsorships(List<Sponsorship> sponsorships) {
        this.sponsorships = sponsorships;
    }

    public List<Student> getParticipants() {
        return participants;
    }

    public void setParticipants(List<Student> participants) {
        this.participants = participants;
    }

    public List<Student> getOrganizers() {
        return organizers;
    }

    public void setOrganizers(List<Student> organizers) {
        this.organizers = organizers;
    }

    public List<Receipt> getProjectReceipts() {
        return projectReceipts;
    }

    public void setProjectReceipts(List<Receipt> projectReceipts) {
        this.projectReceipts = projectReceipts;
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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "Project{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}
