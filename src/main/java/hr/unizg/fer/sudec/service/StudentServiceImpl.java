package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.StudentDAO;
import hr.unizg.fer.sudec.entity.Gathering;
import hr.unizg.fer.sudec.entity.InternationalEvent;
import hr.unizg.fer.sudec.entity.Role;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.security.User;
import org.hibernate.Hibernate;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadLocalRandom;
import java.util.stream.Collectors;

@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDAO studentDAO;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private RoleService roleService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public List<Student> getStudents() {
        return studentDAO.getStudents();
    }

    @Override
    @Transactional
    public void createStudent(Student student) {

        student.setUsername(student.getName() + ThreadLocalRandom.current().nextInt(1, 9999 + 1));
        student.setPassword(passwordEncoder.encode("1234"));
        List<Role> roles = student.getRoles();
        roles.add(roleService.getByName("ROLE_USER"));
        student.setRoles(roles);

        studentDAO.saveStudent(student);
    }

    @Override
    @Transactional
    public void editStudent(Student student) {

        Student original = getStudent(student.getId());
        modelMapper.map(student, original);

        studentDAO.saveStudent(original);
    }

    @Override
    @Transactional
    public Student getStudent(int id) {
        return studentDAO.getStudent(id);
    }

    @Override
    @Transactional
    public Map<Integer, String> getStudentsIdFullNameMap() {

        Map<Integer, String> output = new LinkedHashMap<>();
        List<Student> students = getStudents();

        for (Student student : students) {
            output.put(student.getId(), student.getFullName());
        }

        return output;
    }

    @Override
    @Transactional
    public void deleteStudent(int studentId) {

        studentDAO.deleteStudent(getStudent(studentId));
    }

    @Override
    @Transactional
    public List<Role> getRoles(int studentId) {

        Student student = getStudent(studentId);
        Hibernate.initialize(student.getRoles());

        return student.getRoles();
    }

    @Override
    @Transactional
    public List<Student> getStudentsWithoutRole(String roleName) {

        List<Student> nonHolders = getStudents();
        Role role = roleService.getByName(roleName);
        Hibernate.initialize(role.getUsers());

        nonHolders.removeAll(role.getUsers());

        return nonHolders;
    }

    @Override
    @Transactional
    public List<InternationalEvent> getStudentsEvents(int studentId) {

        Student student = getStudent(studentId);
        Hibernate.initialize(student.getEventsParticipated());

        return student.getEventsParticipated();
    }

    @Override
    @Transactional
    public int getNumberOfEventsParticipated(int studentId) {

        return getStudentsEvents(studentId).size();
    }

    @Override
    @Transactional
    public List<Gathering> getStudentsGatherings(int studentId) {

        Student student = getStudent(studentId);
        Hibernate.initialize(student.getAttendedGatherings());

        return student.getAttendedGatherings();
    }

    @Override
    @Transactional
    public int getNumberOfGatheringsParticipated(int studentId) {

        return getStudentsGatherings(studentId).size();
    }

    @Override
    @Transactional
    public Student findByUsername(String username) {

        return studentDAO.findByUsername(username);
    }

    @Override
    @Transactional
    public void registerStudent(User user) {

        Student student = new Student();
        modelMapper.map(user, student);

        List<Role> roles = student.getRoles();
        roles.add(roleService.getByName("ROLE_USER"));
        student.setRoles(roles);
        student.setPassword(passwordEncoder.encode(user.getPassword()));

        studentDAO.saveStudent(student);;
    }

    @Override
    @Transactional
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {

        Student student = studentDAO.findByUsername(s);

        if(student == null)
            throw new UsernameNotFoundException("Invalid username or password");

        return new org.springframework.security.core.userdetails.User(student.getUsername(), student.getPassword(),
                mapRolesToAuthorities(student.getRoles()));
    }

    private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Collection<Role> roles) {
        return roles.stream().map(role -> new SimpleGrantedAuthority(role.getName())).collect(Collectors.toList());
    }
}
