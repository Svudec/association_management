package hr.unizg.fer.sudec.dto;

import javax.validation.constraints.NotNull;

public class GatheringDTO {

    private int id;
    private String name;
    private String description;

    @NotNull(message = "Obavezno polje")
    private String startTime;

    @NotNull(message = "Obavezno polje")
    private String endTime;

    @NotNull(message = "Obavezno polje")
    private Boolean isFormal;

    private Integer teamId;

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

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Boolean getFormal() {
        return isFormal;
    }

    public void setFormal(Boolean formal) {
        isFormal = formal;
    }

    public Integer getTeamId() {
        return teamId;
    }

    public void setTeamId(Integer teamId) {
        this.teamId = teamId;
    }

    @Override
    public String toString() {
        return "GatheringDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ", isFormal=" + isFormal +
                ", teamId=" + teamId +
                '}';
    }
}
