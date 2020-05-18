package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface StudentService {

    List<Student> getStudents();

    void saveStudent(Student student);

    Student getStudent(int id);
}
