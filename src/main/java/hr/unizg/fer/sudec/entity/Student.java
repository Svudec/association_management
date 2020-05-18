package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "student")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_student")
    private int id;

    @Column(name = "ime_student")
    private String name;

    @Column(name = "prezime_student")
    private String surname;

    @Column(name = "mail_student")
    private String mail;

    @Column(name = "mobitel_student")
    private String cellphone;

    @Column(name = "oib_student")
    private Integer OIB;

    @Column(name = "datum_rodenja_student")
    private Date birthDate;

    @Column(name = "prebivaliste_student")
    private String hometown;

    @Column(name = "fakultet_student")
    private String faculty;

    @Column(name = "godina_studija")
    private Integer yearOfStudy;

    @Column(name = "smjer_studija")
    private String studyField;

    @Column(name = "datum_azuriranja")
    private Date lastUpdated;

    @Column(name = "je_clan")
    private boolean isMember;

    @Column(name = "je_aktivan_clan")
    private boolean isActiveMember;

    public Student (){

        this.lastUpdated = new Date();
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

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public int getOIB() {
        return OIB;
    }

    public void setOIB(int OIB) {
        this.OIB = OIB;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getHometown() {
        return hometown;
    }

    public void setHometown(String hometown) {
        this.hometown = hometown;
    }

    public String getFaculty() {
        return faculty;
    }

    public void setFaculty(String faculty) {
        this.faculty = faculty;
    }

    public int getYearOfStudy() {
        return yearOfStudy;
    }

    public void setYearOfStudy(int yearOfStudy) {
        this.yearOfStudy = yearOfStudy;
    }

    public String getStudyField() {
        return studyField;
    }

    public void setStudyField(String studyField) {
        this.studyField = studyField;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public boolean isMember() {
        return isMember;
    }

    public void setMember(boolean member) {
        isMember = member;
    }

    public boolean isActiveMember() {
        return isActiveMember;
    }

    public void setActiveMember(boolean activeMember) {
        isActiveMember = activeMember;
    }

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", mail='" + mail + '\'' +
                ", cellphone='" + cellphone + '\'' +
                ", OIB=" + OIB +
                ", birthDate=" + birthDate +
                ", hometown='" + hometown + '\'' +
                ", faculty='" + faculty + '\'' +
                ", yearOfStudy=" + yearOfStudy +
                ", studyField='" + studyField + '\'' +
                ", lastUpdated=" + lastUpdated +
                ", isMember=" + isMember +
                ", isActiveMember=" + isActiveMember +
                '}';
    }
}
