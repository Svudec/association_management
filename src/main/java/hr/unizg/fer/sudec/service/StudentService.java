package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Student;

import java.util.List;
import java.util.Map;

public interface StudentService {

    List<Student> getStudents();

    void saveStudent(Student student);

    void editStudent(Student student);

    Student getStudent(int id);

    Map<Integer, String> getStudentsIdFullNameMap();
}
