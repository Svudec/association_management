package hr.unizg.fer.sudec.entity;

import com.vladmihalcea.hibernate.type.basic.PostgreSQLEnumType;
import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Entity
@Table(name = "racun")
@TypeDef(name = "pgsql_enum", typeClass = PostgreSQLEnumType.class)
public class Receipt {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_racun")
    private int id;

    @Column(name = "vrsta_racun", columnDefinition = "vrsta_racuna")
    @Enumerated(EnumType.STRING)
    @Type(type = "pgsql_enum")
    @NotNull(message = "Obavezno polje")
    private ReceiptType type;

    @Column(name = "iznos_racun")
    @NotNull(message = "Obavezno polje")
    @DecimalMin(value = "0", inclusive = false, message = "Mora biti veći od 0")
    @DecimalMax(value = "10000000", message = "Mora biti manji od 10 000 000")
    private Float value;

    @Column(name = "vrijeme_racun")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME)
    @NotNull(message = "Obavezno polje")
    private Timestamp time;

    @Column(name = "napomena")
    private String description;

    @ManyToOne(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "id_projekt")
    private Project projectReceipt;

    @ManyToOne(cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "id_okupljanje")
    private Gathering gatheringReceipt;

    public Receipt(){

        this.time = new Timestamp(System.currentTimeMillis());
    }

    public String niceTime(){
        LocalDateTime date = time.toLocalDateTime();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");

        return date.format(formatter);
    }

    public Gathering getGatheringReceipt() {
        return gatheringReceipt;
    }

    public void setGatheringReceipt(Gathering gatheringReceipt) {
        this.gatheringReceipt = gatheringReceipt;
    }

    public Project getProjectReceipt() {
        return projectReceipt;
    }

    public void setProjectReceipt(Project projectReceipt) {
        this.projectReceipt = projectReceipt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ReceiptType getType() {
        return type;
    }

    public void setType(ReceiptType type) {
        this.type = type;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Receipt{" +
                "id=" + id +
                ", type=" + type +
                ", value=" + value +
                ", time=" + time +
                ", description='" + description + '\'' +
                '}';
    }
}
