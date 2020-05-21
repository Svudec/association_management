package hr.unizg.fer.sudec.dto;

public class ReceiptDTO {

    private int id;
    private String type;
    private Float value;
    private Integer projectReceiptId;
    private Integer gatheringReceiptId;

    public ReceiptDTO() {
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
