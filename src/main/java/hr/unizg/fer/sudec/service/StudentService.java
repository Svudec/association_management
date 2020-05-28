package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.Role;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.security.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;
import java.util.Map;

public interface StudentService extends UserDetailsService {

    List<Student> getStudents();

    void createStudent(Student student);

    void editStudent(Student student);

    Student getStudent(int id);

    Student findByUsername(String username);

    Map<Integer, String> getStudentsIdFullNameMap();

    void registerStudent(User user);

    List<Role> getRoles(int studentId);

    List<Student> getStudentsWithoutRole(String roleName);

    List<InternationalEvent> getStudentsEvents(int studentId);

    int getNumberOfEventsParticipated(int studentId);

    List<Gathering> getStudentsGatherings(int studentId);

    int getNumberOfGatheringsParticipated(int studentId);
}
