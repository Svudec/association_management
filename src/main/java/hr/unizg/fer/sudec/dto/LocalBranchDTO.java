package hr.unizg.fer.sudec.dto;

import javax.validation.constraints.NotNull;

public class LocalBranchDTO {

    @NotNull(message = "Obvezno polje")
    private String name;

    private Integer countryId;

    public LocalBranchDTO() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }
}
