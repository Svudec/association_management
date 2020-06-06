package hr.unizg.fer.sudec.dto;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.List;

public class InternationalEventDTO {

    private int id;

    @NotNull(message = "Obavezno polje")
    private String name;
    private String description;

    @NotNull(message = "Obavezno polje")
    private String startDate;

    @NotNull(message = "Obavezno polje")
    private String endDate;

    @Min(value = 1, message = "Mora biti barem 1")
    private Integer capacity;

    @DecimalMin(value = "0", message = "Mora biti pozitivno")
    private String price;

    @NotNull(message = "Obavezno polje")
    private String eventCategory;

    @NotNull(message = "Obavezno polje")
    private List<String> organizers;

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

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getEventCategory() {
        return eventCategory;
    }

    public void setEventCategory(String eventCategory) {
        this.eventCategory = eventCategory;
    }

    public List<String> getOrganizers() {
        return organizers;
    }

    public void setOrganizers(List<String> organizers) {
        this.organizers = organizers;
    }

    @Override
    public String toString() {
        return "InternationalEventDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", capacity=" + capacity +
                ", price='" + price + '\'' +
                ", eventCategory='" + eventCategory + '\'' +
                ", organizers=" + organizers +
                '}';
    }
}
