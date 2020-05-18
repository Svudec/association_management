package hr.unizg.fer.sudec.dao;

import hr.unizg.fer.sudec.entity.Student;

import java.util.List;

public interface StudentDAO {

    public List<Student> getStudents();

    public void saveStudent(Student student);
}
