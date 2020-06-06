package hr.unizg.fer.sudec.entity;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class SponsorshipId implements Serializable {

    @ManyToOne(cascade = CascadeType.ALL)
    private Partner partner;

    @ManyToOne(cascade = CascadeType.ALL)
    private Project project;

    public Partner getPartner() {
        return partner;
    }

    public void setPartner(Partner partner) {
        this.partner = partner;
    }

    public Project getProject() {
        return project;
    }

    public void setProject(Project project) {
        this.project = project;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SponsorshipId that = (SponsorshipId) o;
        return partner.getId() == that.partner.getId() &&
                project.getId() == that.project.getId();
    }

    @Override
    public int hashCode() {
        return Objects.hash(partner.getName(), project.getName());
    }
}
