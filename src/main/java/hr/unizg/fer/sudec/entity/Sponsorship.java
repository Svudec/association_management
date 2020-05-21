package hr.unizg.fer.sudec.entity;

import javax.persistence.*;

@Entity
@Table(name = "sponzorira")
@AssociationOverrides({
    @AssociationOverride(name = "primaryKey.project",
                        joinColumns = @JoinColumn(name = "id_projekt")),
    @AssociationOverride(name = "primaryKey.partner",
                        joinColumns = @JoinColumn(name = "id_partner")) })
public class Sponsorship {

    @EmbeddedId
    private SponsorshipId primaryKey = new SponsorshipId();

    @Column(name = "iznos")
    private Float value;

    @Column(name = "napomena")
    private String note;

    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    @JoinColumn(name = "id_sponzorski_paket")
    private SponsorPackage sponsorPackage;

    public Sponsorship(){

    }

    @Transient
    @Column(name = "id_projekt")
    public Project getProject(){
        return getPrimaryKey().getProject();
    }

    @Column(name = "id_projekt")
    public void setProject(Project project){
        getPrimaryKey().setProject(project);
    }

    @Transient
    @Column(name = "id_partner")
    public Partner getPartner(){
        return getPrimaryKey().getPartner();
    }

    @Column(name = "id_partner")
    public void setPartner(Partner partner){
        getPrimaryKey().setPartner(partner);
    }

    public SponsorshipId getPrimaryKey() {
        return primaryKey;
    }

    public void setPrimaryKey(SponsorshipId primaryKey) {
        this.primaryKey = primaryKey;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public SponsorPackage getSponsorPackage() {
        return sponsorPackage;
    }

    public void setSponsorPackage(SponsorPackage sponsorPackage) {
        this.sponsorPackage = sponsorPackage;
    }

    @Override
    public String toString() {
        return "Sponsorship{" +
                "primaryKey=" + primaryKey +
                ", value=" + value +
                ", note='" + note + '\'' +
                '}';
    }
}
