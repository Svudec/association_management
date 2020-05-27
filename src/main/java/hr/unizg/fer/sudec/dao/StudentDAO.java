package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface StudentDAO {

    List<Student> getStudents();

    void saveStudent(Student student);

    Student getStudent(int id);

    Student findByUsername(String username);
}
