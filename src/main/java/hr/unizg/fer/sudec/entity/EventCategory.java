package hr.unizg.fer.sudec.entity;

public enum EventCategory {
    WORKSHOP("Radionica"),
    EXCHANGE("Razmjena"),
    ADVANCED_WORKSHOP("Napredna Radionica"),
    OPERATIONAL_EVENT("Operacijski Događaj"),
    MOTIVATIONAL_WEEKEND("Internacionalni Motivacijski Vikend");

    public final String label;

    private EventCategory(String label){
        this.label = label;
    }
}
