package hr.unizg.fer.sudec.entity;

import com.vladmihalcea.hibernate.type.basic.PostgreSQLEnumType;
import org.hibernate.annotations.Check;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "medunarodni_dogadaj")
@TypeDef(name = "pgsql_enum", typeClass = PostgreSQLEnumType.class)
public class InternationalEvent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_medunarodni_dogadaj")
    private int id;

    @Column(name = "naziv_medunarodni_dogadaj")
    @NotNull(message = "Obavezno polje")
    private String name;

    @Column(name = "opis_medunarodni_dogadaj")
    private String description;

    @Column(name = "pocetak_medunarodni_dogadaj")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull(message = "Obavezno polje")
    private Date startDate;

    @Column(name = "zavrsetak_medunarodni_dogadaj")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    @NotNull(message = "Obavezno polje")
    @Check(constraints = "zavrsetak_medunarodni_dogadaj > pocetak_medunarodni_dogadaj")
    private Date endDate;

    @Column(name = "kapacitet")
    @Min(value = 1, message = "Mora biti barem 1")
    private Integer capacity;

    @Column(name = "cijena")
    @DecimalMin(value = "0", message = "Mora biti pozitivno")
    @DecimalMax(value = "10000000", message = "Mora biti manji od 10 000 000")
    private Float price;

    @Column(name = "vrsta_medunarodni_dogadaj", columnDefinition = "vrsta_dogadaja")
    @Enumerated(EnumType.STRING)
    @Type(type = "pgsql_enum")
    @NotNull(message = "Obavezno polje")
    private EventCategory eventCategory;

    @ManyToMany
    @JoinTable(name = "organizira", joinColumns = @JoinColumn(name = "id_medunarodni_dogadaj"), inverseJoinColumns = @JoinColumn(name = "id_lokalni_ogranak"))
    private List<LocalBranch> organizers;

    @ManyToMany
    @JoinTable(name = "putuje_na", joinColumns = @JoinColumn(name = "id_medunarodni_dogadaj"), inverseJoinColumns = @JoinColumn(name = "id_student"))
    private List<Student> participants;

    public InternationalEvent() {
        this.organizers = new ArrayList<>();
        this.participants = new ArrayList<>();
    }

    public String niceCategory(){

        return this.eventCategory.toString().toLowerCase().replace("_", " ");
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

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public EventCategory getEventCategory() {
        return eventCategory;
    }

    public void setEventCategory(EventCategory eventCategory) {
        this.eventCategory = eventCategory;
    }

    public List<LocalBranch> getOrganizers() {
        return organizers;
    }

    public void setOrganizers(List<LocalBranch> organizers) {
        this.organizers = organizers;
    }

    public List<Student> getParticipants() {
        return participants;
    }

    public void setParticipants(List<Student> participants) {
        this.participants = participants;
    }

    @Override
    public String toString() {
        return "InternationalEvent{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", capacity=" + capacity +
                ", price=" + price +
                ", eventCategory=" + eventCategory +
                '}';
    }
}
