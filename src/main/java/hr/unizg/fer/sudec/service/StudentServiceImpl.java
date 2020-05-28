package hr.unizg.fer.sudec.service;

import hr.unizg.fer.sudec.dao.RoleDAO;
import hr.unizg.fer.sudec.dao.StudentDAO;
import hr.unizg.fer.sudec.entity.Role;
import hr.unizg.fer.sudec.entity.Student;
import hr.unizg.fer.sudec.security.User;
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
import java.util.stream.Collectors;

@Service
public class StudentServiceImpl implements StudentService{

    @Autowired
    private StudentDAO studentDAO;

    @Autowired
    private ModelMapper modelMapper;

    @Autowired
    private RoleDAO roleDAO;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    @Transactional
    public List<Student> getStudents() {
        return studentDAO.getStudents();
    }

    @Override
    @Transactional
    public void saveStudent(Student student) {

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
    public Student findByUsername(String username) {

        return studentDAO.findByUsername(username);
    }

    @Override
    @Transactional
    public void registerStudent(User user) {

        Student student = new Student();
        modelMapper.map(user, student);

        List<Role> roles = student.getRoles();
        roles.add(roleDAO.getByName("ROLE_USER"));
        student.setRoles(roles);
        student.setPassword(passwordEncoder.encode(user.getPassword()));

        saveStudent(student);
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
