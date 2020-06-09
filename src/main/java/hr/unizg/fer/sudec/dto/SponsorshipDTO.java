package hr.unizg.fer.sudec.dto;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

public class SponsorshipDTO {

    private Integer partnerId;

    private Integer projectId;

    private Integer sponsorPackageId;

    @DecimalMin(value = "0", inclusive = true, message = "Mora biti pozitivno")
    @DecimalMax(value = "10000000", message = "Mora biti manji od 10 000 000")
    @NotNull(message = "Obvezno polje")
    private Float value;

    private String note;

    public SponsorshipDTO() {
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Integer getPartnerId() {
        return partnerId;
    }

    public void setPartnerId(Integer partnerId) {
        this.partnerId = partnerId;
    }

    public Integer getProjectId() {
        return projectId;
    }

    public void setProjectId(Integer projectId) {
        this.projectId = projectId;
    }

    public Integer getSponsorPackageId() {
        return sponsorPackageId;
    }

    public void setSponsorPackageId(Integer sponsorPackageId) {
        this.sponsorPackageId = sponsorPackageId;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }
}
