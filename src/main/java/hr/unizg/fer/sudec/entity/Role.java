package hr.unizg.fer.sudec.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "uloga")
public class Role {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_uloga")
    private int id;

    @Column(name = "naziv_uloga")
    private String name;

    @ManyToMany
    @JoinTable(name = "korisnik_uloga", joinColumns = @JoinColumn(name = "id_uloga"), inverseJoinColumns = @JoinColumn(name = "id_korisnik"))
    private List<Student> users;

    public Role() {
        this.users = new ArrayList<>();
    }

    public Role(String name){
        this();

        this.name = name;
    }

    public List<Student> getUsers() {
        return users;
    }

    public void setUsers(List<Student> users) {
        this.users = users;
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

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
