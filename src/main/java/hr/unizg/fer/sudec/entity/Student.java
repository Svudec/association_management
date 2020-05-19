package hr.unizg.fer.sudec.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    private String oib;

    @Column(name = "datum_rodenja_student")
    @DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
    private Date birthDate;

    @Column(name = "prebivaliste_student")
    private String hometown;

    @Column(name = "fakultet_student")
    private String faculty;

    @Column(name = "godina_studija")
    private String yearOfStudy;

    @Column(name = "smjer_studija")
    private String studyField;

    @Column(name = "datum_azuriranja")
    private Date lastUpdated;

    @Column(name = "je_clan")
    private boolean isMember;

    @Column(name = "je_aktivan_clan")
    private boolean isActiveMember;

    @OneToMany(mappedBy = "leader", cascade={CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH})
    private List<Team> leaderOfTeams;

    @ManyToMany
    @JoinTable(name = "je_clan", joinColumns = @JoinColumn(name = "id_student"), inverseJoinColumns = @JoinColumn(name = "id_tim"))
    private List<Team> memberOfTeams;

    public Student (){

        this.lastUpdated = new Date();
        this.leaderOfTeams = new ArrayList<>();
        this.memberOfTeams = new ArrayList<>();
    }

    public List<Team> getMemberOfTeams() {
        return memberOfTeams;
    }

    public void setMemberOfTeams(List<Team> memberOfTeams) {
        this.memberOfTeams = memberOfTeams;
    }

    public List<Team> getLeaderOfTeams() {
        return leaderOfTeams;
    }

    public void setLeaderOfTeams(List<Team> leaderOfTeams) {
        this.leaderOfTeams = leaderOfTeams;
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

    public String getOib() {
        return oib;
    }

    public void setOib(String oib) {
        this.oib = oib;
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

    public String getYearOfStudy() {
        return yearOfStudy;
    }

    public void setYearOfStudy(String yearOfStudy) {
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
                ", OIB=" + oib +
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

    public String getFullName(){
        return name + " " + surname;
    }
}
