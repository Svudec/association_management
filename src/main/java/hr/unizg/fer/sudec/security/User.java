package hr.unizg.fer.sudec.security;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@FieldMatch.List({
        @FieldMatch(first = "password", second = "matchingPassword", message = "The password fields must match")
})
public class User {

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    private String username;

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    private String password;

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    private String matchingPassword;

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    private String name;

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    private String surname;

    @NotNull(message = "obavezno polje")
    @Size(min = 1, message = "obavezno polje")
    @Pattern(regexp = ".+@.+\\..+", message = "Nije važeća email adresa")
    private String mail;

    public User(){

    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMatchingPassword() {
        return matchingPassword;
    }

    public void setMatchingPassword(String matchingPassword) {
        this.matchingPassword = matchingPassword;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }
}
