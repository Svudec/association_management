package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.security.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Map;

public interface StudentService extends UserDetailsService {

    List<Student> getStudents();

    void saveStudent(Student student);

    void editStudent(Student student);

    Student getStudent(int id);

    Student findByUsername(String username);

    Map<Integer, String> getStudentsIdFullNameMap();

    void registerStudent(User user);
}
