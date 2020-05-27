package hr.unizg.fer.sudec.dto;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

public class ReceiptDTO {

    private int id;

    @NotNull(message = "Obavezno polje")
    private String type;

    @NotNull(message = "Obavezno polje")
    @DecimalMin(value = "0", inclusive = false, message = "Mora biti veći od 0")
    @DecimalMax(value = "10000000", message = "Mora biti manji od 10 000 000")
    private Float value;

    private String description;

    private Integer projectReceiptId;
    private Integer gatheringReceiptId;

    public ReceiptDTO() {
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Float getValue() {
        return value;
    }

    public void setValue(Float value) {
        this.value = value;
    }

    public Integer getProjectReceiptId() {
        return projectReceiptId;
    }

    public void setProjectReceiptId(Integer projectReceiptId) {
        this.projectReceiptId = projectReceiptId;
    }

    public Integer getGatheringReceiptId() {
        return gatheringReceiptId;
    }

    public void setGatheringReceiptId(Integer gatheringReceiptId) {
        this.gatheringReceiptId = gatheringReceiptId;
    }

    @Override
    public String toString() {
        return "ReceiptDTO{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", value=" + value +
                ", projectReceiptId=" + projectReceiptId +
                ", gatheringReceiptId=" + gatheringReceiptId +
                '}';
    }
}
