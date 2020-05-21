package hr.unizg.fer.sudec.entity;

import javax.persistence.CascadeType;
import javax.persistence.Embeddable;
import javax.persistence.ManyToOne;
import java.io.Serializable;

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
}
