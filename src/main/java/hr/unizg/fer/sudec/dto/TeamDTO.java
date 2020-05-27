package hr.unizg.fer.sudec.dto;

import java.lang.reflect.Field;

public class TeamDTO {

    private int id;
    private String name;
    private String description;
    private int leaderId;

    public void removeEmptyStrings(){
        Field[] fields = TeamDTO.class.getDeclaredFields();

        for (Field field : fields) {
            field.setAccessible(true);

            try {
                if(field.getType().equals(String.class) && ((String) field.get(this)).replaceAll("\\s", "").isEmpty())
                    field.set(this, null);

            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public String toString() {
        return "TeamDTO{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                '}';
    }

    public int getLeaderId() {
        return leaderId;
    }

    public void setLeaderId(int leaderId) {
        this.leaderId = leaderId;
    }

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
}
