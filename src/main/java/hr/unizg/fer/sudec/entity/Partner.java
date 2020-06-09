package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "partner")
public class Partner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_partner")
    private int id;

    @Column(name = "naziv_partner")
    @NotNull(message = "Obavezno polje")
    private String name;

    @Column(name = "oib_partner", unique = true)
    @NotNull(message = "Obavezno polje")
    @Pattern(regexp = "[0-9]+", message = "Neispravan OIB")
    private String oib;

    @Column(name = "web_adresa_partner")
    @Pattern(regexp = "[a-z0-9]+([\\-.]{1}[a-z0-9]+)*\\.[a-z]{2,5}(:[0-9]{1,5})?(/.*)?$", message = "Neispravan format")
    private String webAdress;

    @Column(name = "mobitel_partner")
    @Pattern(regexp = "([0-9]|\\+|\\(|\\)|\\s)+", message = "Neispravan format")
    private String mobile;

    @Column(name = "mail_partner")
    @Pattern(regexp = ".+@.+\\..+", message = "Nije važeća email adresa")
    @NotNull(message = "Obavezno polje")
    private String mail;

    @OneToMany(mappedBy = "primaryKey.partner", cascade = CascadeType.ALL)
    private List<Sponsorship> sponsorships;

    public Partner(){

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

    public String getOib() {
        return oib;
    }

    public void setOib(String oib) {
        this.oib = oib;
    }

    public String getWebAdress() {
        return webAdress;
    }

    public void setWebAdress(String webAdress) {
        this.webAdress = webAdress;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Override
    public String toString() {
        return "Partner{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", oib='" + oib + '\'' +
                ", webAdress='" + webAdress + '\'' +
                ", mobile='" + mobile + '\'' +
                ", mail='" + mail + '\'' +
                '}';
    }
}
