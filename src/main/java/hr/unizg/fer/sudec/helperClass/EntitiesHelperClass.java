package hr.unizg.fer.sudec.helperClass;

import java.lang.reflect.Field;

public class EntitiesHelperClass {

    public static void removeEmptyStrings(Object object){
        Field[] fields = object.getClass().getDeclaredFields();

        for (Field field : fields) {
            field.setAccessible(true);

            try {
                if(field.getType().equals(String.class) && ((String) field.get(object)).replaceAll("\\s", "").isEmpty())
                    field.set(object, null);

            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
    }
}
